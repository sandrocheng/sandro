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

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.WebFluxTest;
import org.springframework.core.ReactiveAdapterRegistry;
import org.springframework.security.oauth2.client.registration.ReactiveClientRegistrationRepository;
import org.springframework.security.oauth2.client.web.reactive.result.method.annotation.OAuth2AuthorizedClientArgumentResolver;
import org.springframework.security.oauth2.client.web.server.ServerOAuth2AuthorizedClientRepository;
import org.springframework.security.oauth2.client.web.server.WebSessionServerOAuth2AuthorizedClientRepository;
import org.springframework.security.web.reactive.result.method.annotation.AuthenticationPrincipalArgumentResolver;
import org.springframework.security.web.server.context.SecurityContextServerWebExchangeWebFilter;
import org.springframework.test.web.reactive.server.WebTestClient;
import org.springframework.web.reactive.result.view.ViewResolver;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.security.test.web.reactive.server.SecurityMockServerConfigurers.mockOAuth2Login;
import static org.springframework.security.test.web.reactive.server.SecurityMockServerConfigurers.springSecurity;

/**
 * @author Josh Cummings
 */
@WebFluxTest(OAuth2LoginController.class)
public class OAuth2LoginControllerTests {

	@Autowired
	OAuth2LoginController controller;

	@Autowired
	ViewResolver viewResolver;

	@Mock
	ReactiveClientRegistrationRepository clientRegistrationRepository;

	WebTestClient rest;

	@BeforeEach
	void setup() {
		ServerOAuth2AuthorizedClientRepository authorizedClientRepository = new WebSessionServerOAuth2AuthorizedClientRepository();

		// @formatter:off
		this.rest = WebTestClient
			.bindToController(this.controller)
			.apply(springSecurity())
			.webFilter(new SecurityContextServerWebExchangeWebFilter())
			.argumentResolvers((c) -> {
				c.addCustomResolver(new AuthenticationPrincipalArgumentResolver(new ReactiveAdapterRegistry()));
				c.addCustomResolver(new OAuth2AuthorizedClientArgumentResolver(this.clientRegistrationRepository, authorizedClientRepository));
			})
			.viewResolvers((c) -> c.viewResolver(this.viewResolver))
			.build();
		// @formatter:on
	}

	@Test
	void indexGreetsAuthenticatedUser() {
		// @formatter:off
		this.rest.mutateWith(mockOAuth2Login())
			.get()
			.uri("/")
			.exchange()
			.expectBody(String.class).value(containsString("user"));
		// @formatter:on
	}

}
