//
//  AlertModifier.swift
//  test
//
//  Created by areej sadaqa on 21/05/2023.
//

import SwiftUI

struct AlertMessages: ViewModifier {
    var title: String
    var message: String
    @State private var showingAlert = true
    
    func body(content: Content) -> some View {
            content
            .alert(title, isPresented: $showingAlert) {
                Button("Delete", role: .destructive){}
                Button("Cancel", role: .cancel){}
            } message: {
                Text(message)
            }
    }
}

extension View {
    func alertStyle(title: String, message:String) -> some View {
        modifier(AlertMessages(title: title, message: message))
    }
}
