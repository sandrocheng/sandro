/*
 * Copyright 2020 the original author or authors.
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

package example;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.AutoConfigureWebTestClient;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.security.oauth2.client.registration.ReactiveClientRegistrationRepository;
import org.springframework.security.oauth2.client.web.server.ServerOAuth2AuthorizedClientRepository;
import org.springframework.security.oauth2.client.web.server.WebSessionServerOAuth2AuthorizedClientRepository;
import org.springframework.test.web.reactive.server.WebTestClient;

import static org.hamcrest.CoreMatchers.containsString;
import static org.springframework.security.test.web.reactive.server.SecurityMockServerConfigurers.mockOAuth2Login;

/**
 * Tests for {@link ReactiveOAuth2LoginApplication}.
 *
 * @author Rob Winch
 */
@SpringBootTest
@AutoConfigureWebTestClient(timeout = "36000")
public class OAuth2LoginApplicationTests {

	@Autowired
	WebTestClient test;

	@Autowired
	ReactiveClientRegistrationRepository clientRegistrationRepository;

	@Test
	void requestWhenMockOidcLoginThenIndex() {
		// @formatter:off
		this.clientRegistrationRepository.findByRegistrationId("github")
			.map((clientRegistration) ->
				this.test.mutateWith(mockOAuth2Login().clientRegistration(clientRegistration))
					.get()
					.uri("/")
					.exchange()
					.expectBody(String.class).value(containsString("GitHub"))
			)
			.block();
		// @formatter:on
	}

	@TestConfiguration
	static class AuthorizedClient {

		@Bean
		ServerOAuth2AuthorizedClientRepository authorizedClientRepository() {
			return new WebSessionServerOAuth2AuthorizedClientRepository();
		}

	}

}
