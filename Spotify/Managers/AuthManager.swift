//
//  AuthManager.swift
//  Spotify
//
//  Created by Islam Noureldin on 31/03/2022.
//

import Foundation

final class AuthManager{
    
    static let shared = AuthManager()
    
    var isSigned : Bool{
        return false
    }
    
    private var accessToken : String? {
        return nil
    }
    
    private var refreshToken:String?{
        return nil
    }
    
    private var tokenExpirationDate:Date?{
        return nil
    }
    
    private  var shouldReturnToken:Bool{
        return false
    }
}
