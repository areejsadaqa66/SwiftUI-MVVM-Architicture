//
//  LoginButton.swift
//  test
//
//  Created by areej sadaqa on 17/05/2023.
//

import SwiftUI

struct LoginButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Login")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}
