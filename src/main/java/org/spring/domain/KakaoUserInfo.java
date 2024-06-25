package org.spring.domain;

import lombok.Data;

@Data
public class KakaoUserInfo {
	private String id;
	private KakaoAccount kakao_account;

	// getters and setters
	@Data
	public static class KakaoAccount {
		private Profile profile;

		// getters and setters
		@Data
		public static class Profile {
			private String nickname;

			// getters and setters
		}
	}
}
