//
//  AuthManager.swift
//  Spotifyapp
//
//  Created by Octav Radulian on 03.04.2023.
//

import Foundation

final class AuthManager {
    //sigleton
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "03fc0e7f2dec4dacb94ed89eb6d45c68"
        static let clientSecret = "5a715902d96547c19019e31059724d71"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "spotify-login://callback"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var acessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
}
