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
    
    private init() {}
    
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
