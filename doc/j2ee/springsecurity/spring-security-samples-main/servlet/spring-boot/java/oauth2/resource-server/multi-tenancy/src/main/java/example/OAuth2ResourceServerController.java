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

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.OAuth2AuthenticatedPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * A controller demonstrating OAuth2 Resource server.
 *
 * @author Josh Cummings
 */
@RestController
public class OAuth2ResourceServerController {

	@GetMapping("/{tenantId}")
	public String index(@AuthenticationPrincipal OAuth2AuthenticatedPrincipal token,
			@PathVariable("tenantId") String tenantId) {
		String subject = token.getAttribute("sub");
		return String.format("Hello, %s for %s!", subject, tenantId);
	}

	@GetMapping("/{tenantId}/message")
	public String message(@PathVariable("tenantId") String tenantId) {
		return String.format("secret message for %s", tenantId);
	}

}
