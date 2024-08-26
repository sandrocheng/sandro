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

import sample.dms.AbstractElement;
import sample.dms.DocumentDaoImpl;

import org.springframework.security.acls.domain.BasePermission;
import org.springframework.security.acls.domain.ObjectIdentityImpl;
import org.springframework.security.acls.domain.PrincipalSid;
import org.springframework.security.acls.model.MutableAcl;
import org.springframework.security.acls.model.MutableAclService;
import org.springframework.security.acls.model.ObjectIdentity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.Assert;

/**
 * Adds extra {@link SecureDocumentDao} methods.
 *
 * @author Ben Alex
 *
 */
public class SecureDocumentDaoImpl extends DocumentDaoImpl implements SecureDocumentDao {

	private static final String SELECT_FROM_USERS = "SELECT USERNAME FROM USERS ORDER BY USERNAME";

	private final MutableAclService mutableAclService;

	public SecureDocumentDaoImpl(MutableAclService mutableAclService) {
		Assert.notNull(mutableAclService, "MutableAclService required");
		this.mutableAclService = mutableAclService;
	}

	public String[] getUsers() {
		return getJdbcTemplate().query(SELECT_FROM_USERS, (rs, rowNumber) -> rs.getString("USERNAME"))
			.toArray(new String[] {});
	}

	public void create(AbstractElement element) {
		super.create(element);

		// Create an ACL identity for this element
		ObjectIdentity identity = new ObjectIdentityImpl(element);
		MutableAcl acl = this.mutableAclService.createAcl(identity);

		// If the AbstractElement has a parent, go and retrieve its identity (it should
		// already exist)
		if (element.getParent() != null) {
			ObjectIdentity parentIdentity = new ObjectIdentityImpl(element.getParent());
			MutableAcl aclParent = (MutableAcl) this.mutableAclService.readAclById(parentIdentity);
			acl.setParent(aclParent);
		}
		acl.insertAce(acl.getEntries().size(), BasePermission.ADMINISTRATION,
				new PrincipalSid(SecurityContextHolder.getContext().getAuthentication()), true);

		this.mutableAclService.updateAcl(acl);
	}

}
