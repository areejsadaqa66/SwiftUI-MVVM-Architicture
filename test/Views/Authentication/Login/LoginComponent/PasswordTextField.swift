//
//  PasswordTextFied.swift
//  test
//
//  Created by areej sadaqa on 17/05/2023.
//

import SwiftUI

struct PasswordTextField: View {
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }
}
