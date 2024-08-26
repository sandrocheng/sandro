/*
 * Copyright 2002-2016 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package sample.dms.secured;

import javax.sql.DataSource;

import sample.dms.AbstractElement;
import sample.dms.DataSourcePopulator;
import sample.dms.DocumentDao;

import org.springframework.security.acls.domain.BasePermission;
import org.springframework.security.acls.domain.GrantedAuthoritySid;
import org.springframework.security.acls.domain.ObjectIdentityImpl;
import org.springframework.security.acls.domain.PrincipalSid;
import org.springframework.security.acls.model.MutableAcl;
import org.springframework.security.acls.model.MutableAclService;
import org.springframework.security.acls.model.NotFoundException;
import org.springframework.security.acls.model.ObjectIdentity;
import org.springframework.security.acls.model.Permission;
import org.springframework.security.acls.model.Sid;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.Assert;

public class SecureDataSourcePopulator extends DataSourcePopulator {

	private final MutableAclService aclService;

	public SecureDataSourcePopulator(DataSource dataSource, SecureDocumentDao documentDao,
			MutableAclService aclService) {
		super(dataSource, documentDao);
		Assert.notNull(aclService, "MutableAclService required");
		this.aclService = aclService;
	}

	protected void addPermission(DocumentDao documentDao, AbstractElement element, String recipient, int level) {
		Assert.notNull(documentDao, "DocumentDao required");
		Assert.isInstanceOf(SecureDocumentDao.class, documentDao, "DocumentDao should have been a SecureDocumentDao");
		Assert.notNull(element, "Element required");
		Assert.hasText(recipient, "Recipient required");
		Assert.notNull(SecurityContextHolder.getContext().getAuthentication(),
				"SecurityContextHolder must contain an Authentication");

		// We need SecureDocumentDao to assign different permissions
		// SecureDocumentDao dao = (SecureDocumentDao) documentDao;

		// We need to construct an ACL-specific Sid. Note the prefix contract is defined
		// on the superclass method's JavaDocs
		Sid sid = null;
		if (recipient.startsWith("ROLE_")) {
			sid = new GrantedAuthoritySid(recipient);
		}
		else {
			sid = new PrincipalSid(recipient);
		}

		// We need to identify the target domain object and create an ObjectIdentity for
		// it
		// This works because AbstractElement has a "getId()" method
		ObjectIdentity identity = new ObjectIdentityImpl(element);
		// ObjectIdentity identity = new ObjectIdentityImpl(element.getClass(),
		// element.getId()); // equivalent

		// Next we need to create a Permission
		Permission permission = null;
		if (level == LEVEL_NEGATE_READ || level == LEVEL_GRANT_READ) {
			permission = BasePermission.READ;
		}
		else if (level == LEVEL_GRANT_WRITE) {
			permission = BasePermission.WRITE;
		}
		else if (level == LEVEL_GRANT_ADMIN) {
			permission = BasePermission.ADMINISTRATION;
		}
		else {
			throw new IllegalArgumentException("Unsupported LEVEL_");
		}

		// Attempt to retrieve the existing ACL, creating an ACL if it doesn't already
		// exist for this ObjectIdentity
		MutableAcl acl = null;
		try {
			acl = (MutableAcl) this.aclService.readAclById(identity);
		}
		catch (NotFoundException nfe) {
			acl = this.aclService.createAcl(identity);
			Assert.notNull(acl, "Acl could not be retrieved or created");
		}

		// Now we have an ACL, add another ACE to it
		// granting
		// granting
		acl.insertAce(acl.getEntries().size(), permission, sid, level != LEVEL_NEGATE_READ); // not

		// Finally, persist the modified ACL
		this.aclService.updateAcl(acl);
	}

}
