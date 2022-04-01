//
//  AuthManager.swift
//  Spotify
//
//  Created by Islam Noureldin on 31/03/2022.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    struct Constants{
        static let clientID = "fc6cfea21b8a4c888d915405ef683688"
        static let clientSecret = "4b69e1944532489bbe15415cef788816"
    }
    private init(){
        
    }
    public var signInUrl: URL?{
        let redirectUri = "https://www.iosacademy.io/"
        let scopes = "user-read-private"
        let baseUrl = "https://accounts.spotify.com/authorize"
        let url = "\(baseUrl)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectUri)&show_dialog=TRUE"
        return URL(string: url)
    }
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
    public func exchangeCodeForToken(code:String,Completion :@escaping ((Bool)->Void)){
        //Get Token
    }
    
    public func refreshAccessToken(){
        
    }
    
    public func cacheToken(){
        
    }
}
