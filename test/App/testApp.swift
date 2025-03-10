//
//  testApp.swift
//  test
//
//  Created by areej sadaqa on 16/05/2023.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(loginViewModel: LoginViewModel())
        }
    }
}
