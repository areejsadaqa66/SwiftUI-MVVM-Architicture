//
//  ForgetPasswordButton.swift
//  test
//
//  Created by areej sadaqa on 17/05/2023.
//

import SwiftUI

struct ForgotPasswordButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Forgot Password?")
                .foregroundColor(.white)
        }
    }
}
