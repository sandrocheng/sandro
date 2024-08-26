/*
 * Copyright 2002-2021 the original author or authors.
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

package sample.contact;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.acls.domain.BasePermission;
import org.springframework.security.acls.domain.PrincipalSid;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.fail;

/**
 * Tests {@link ContactManager}.
 *
 * @author David Leal
 * @author Ben Alex
 * @author Luke Taylor
 */
@ContextConfiguration(locations = { "/applicationContext-security.xml", "/applicationContext-common-authorization.xml",
		"/applicationContext-common-business.xml" })
@SpringJUnitWebConfig
public class ContactManagerTests {

	@Autowired
	protected ContactManager contactManager;

	void assertContainsContact(long id, List<Contact> contacts) {
		for (Contact contact : contacts) {
			if (contact.getId().equals(id)) {
				return;
			}
		}

		fail("List of contacts should have contained: " + id);
	}

	void assertDoestNotContainContact(long id, List<Contact> contacts) {
		for (Contact contact : contacts) {
			if (contact.getId().equals(id)) {
				fail("List of contact should NOT (but did) contain: " + id);
			}
		}
	}

	/**
	 * Locates the first <code>Contact</code> of the exact name specified.
	 * <p>
	 * Uses the {@link ContactManager#getAll()} method.
	 * @param id Identify of the contact to locate (must be an exact match)
	 * @return the domain or <code>null</code> if not found
	 */
	Contact getContact(String id) {
		for (Contact contact : this.contactManager.getAll()) {
			if (contact.getId().equals(id)) {
				return contact;
			}
		}

		return null;
	}

	private void makeActiveUser(String username) {
		String password = "";

		if ("rod".equals(username)) {
			password = "koala";
		}
		else if ("dianne".equals(username)) {
			password = "emu";
		}
		else if ("scott".equals(username)) {
			password = "wombat";
		}
		else if ("peter".equals(username)) {
			password = "opal";
		}

		Authentication authRequest = new UsernamePasswordAuthenticationToken(username, password);
		SecurityContextHolder.getContext().setAuthentication(authRequest);
	}

	@AfterEach
	void clearContext() {
		SecurityContextHolder.clearContext();
	}

	@Test
	void testDianne() {
		makeActiveUser("dianne"); // has ROLE_USER

		List<Contact> contacts = this.contactManager.getAll();
		assertThat(contacts).hasSize(4);

		assertContainsContact(4, contacts);
		assertContainsContact(5, contacts);
		assertContainsContact(6, contacts);
		assertContainsContact(8, contacts);

		assertDoestNotContainContact(1, contacts);
		assertDoestNotContainContact(2, contacts);
		assertDoestNotContainContact(3, contacts);
	}

	@Test
	void testrod() {
		makeActiveUser("rod"); // has ROLE_SUPERVISOR

		List<Contact> contacts = this.contactManager.getAll();

		assertThat(contacts).hasSize(4);

		assertContainsContact(1, contacts);
		assertContainsContact(2, contacts);
		assertContainsContact(3, contacts);
		assertContainsContact(4, contacts);

		assertDoestNotContainContact(5, contacts);

		Contact c1 = this.contactManager.getById(4L);

		this.contactManager.deletePermission(c1, new PrincipalSid("bob"), BasePermission.ADMINISTRATION);
		this.contactManager.addPermission(c1, new PrincipalSid("bob"), BasePermission.ADMINISTRATION);
	}

	@Test
	void testScott() {
		makeActiveUser("scott"); // has ROLE_USER

		List<Contact> contacts = this.contactManager.getAll();

		assertThat(contacts).hasSize(5);

		assertContainsContact(4, contacts);
		assertContainsContact(6, contacts);
		assertContainsContact(7, contacts);
		assertContainsContact(8, contacts);
		assertContainsContact(9, contacts);

		assertDoestNotContainContact(1, contacts);
	}

}
