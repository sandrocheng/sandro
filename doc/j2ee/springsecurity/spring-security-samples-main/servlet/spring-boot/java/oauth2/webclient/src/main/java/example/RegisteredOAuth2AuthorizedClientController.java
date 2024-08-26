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

import org.springframework.security.oauth2.client.OAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.annotation.RegisteredOAuth2AuthorizedClient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.reactive.function.client.WebClient;

import static org.springframework.security.oauth2.client.web.reactive.function.client.ServletOAuth2AuthorizedClientExchangeFilterFunction.oauth2AuthorizedClient;

/**
 * Demonstrates of {@link RegisteredOAuth2AuthorizedClient}.
 *
 * @author Joe Grandja
 * @author Rob Winch
 */
@Controller
@RequestMapping(path = { "/annotation", "/public/annotation" })
public class RegisteredOAuth2AuthorizedClientController {

	private final WebClient webClient;

	public RegisteredOAuth2AuthorizedClientController(WebClient webClient) {
		this.webClient = webClient;
	}

	@GetMapping("/explicit")
	String explicit(Model model,
			@RegisteredOAuth2AuthorizedClient("client-id") OAuth2AuthorizedClient authorizedClient) {
		// @formatter:off
		String body = this.webClient
				.get()
				.attributes(oauth2AuthorizedClient(authorizedClient))
				.retrieve()
				.bodyToMono(String.class)
				.block();
		// @formatter:on
		model.addAttribute("body", body);
		return "response";
	}

	@GetMapping("/implicit")
	String implicit(Model model, @RegisteredOAuth2AuthorizedClient OAuth2AuthorizedClient authorizedClient) {
		// @formatter:off
		String body = this.webClient
				.get()
				.attributes(oauth2AuthorizedClient(authorizedClient))
				.retrieve()
				.bodyToMono(String.class)
				.block();
		// @formatter:on
		model.addAttribute("body", body);
		return "response";
	}

}
