package org.spring.domain;

import lombok.Data;

@Data
public class NaverUserInfo {
    private NaverResponse response;
    
    @Data
    public static class NaverResponse {
        private String id;
        private String nickname;
        private String name;
        private String email;
        private String mobile;
        private String birthday;
        private String birthyear;

        // getters and setters
    }

    // getters and setters
}
