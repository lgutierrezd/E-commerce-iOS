//
//  AppSignedStatus.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 11/5/22.
//

import Foundation

class UserGlobalStatusViewModel: ObservableObject {
    
    @Published var userToken: LoginToken = LoginToken()
    @Published var errorAtSigning = false
    
    var isSignedIn: Bool{
        let defaults = UserDefaults.standard
        let jwtToken: String? = defaults.value(forKey: "jwt") as? String
        return jwtToken?.isEmpty == false ? true : false
    }
    
    func signIn(email: String, password: String) {
        let defaults = UserDefaults.standard
        
        let loginVM = LoginViewModel()
        loginVM.login(email: email, password: password, success: { (result) -> () in
            if result.data?.tokenCreate?.errors.count ?? 0 > 0 {
                print(result.data?.tokenCreate?.errors ?? "errors")
                for error in result.data?.tokenCreate?.errors ?? [] {
                    
                }
                self.userToken.errors = result.data?.tokenCreate?.errors as? [Error]
                self.userToken.signedIn = false
                defaults.set("", forKey: "jwt")
                return
            } else {
                self.userToken.signedIn = true
                self.userToken.token = result.data?.tokenCreate?.token
                self.userToken.refreshToken = result.data?.tokenCreate?.refreshToken
                self.userToken.csrfToken = result.data?.tokenCreate?.csrfToken
                
                let user = User(email: result.data?.tokenCreate?.user?.email)
                self.userToken.user = user
                defaults.set(result.data?.tokenCreate?.token, forKey: "jwt")
            }
        }, failure: { (error) -> () in
            self.userToken.signedIn = false
            self.errorAtSigning = true
            defaults.set("", forKey: "jwt")
        })
    }
    
    func signUp(email: String, password: String) {
        self.userToken.signedIn = true
    }
    
    func signOut() {
        let defaults = UserDefaults.standard
        let loginVM = LoginViewModel()
        loginVM.logout(success: { (result) -> () in
            print("logged out")
            self.userToken.signedIn = false
            defaults.set("", forKey: "jwt")
        }, failure: { (error) -> () in
            print("error out")
        })
    }
}
