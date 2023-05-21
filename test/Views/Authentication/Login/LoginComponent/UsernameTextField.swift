//
//  UsernameTextField.swift
//  test
//
//  Created by areej sadaqa on 17/05/2023.
//

import SwiftUI

//MARK: This Called View composition
struct UsernameTextField: View {
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }
}

//@Binding is a property wrapper that establishes a two-way connection between a property defined in a parent view and a child view. It allows the child view to read and modify the value of the property.
//it means that the property is not owned by the view itself but is instead passed down from a parent view. Any changes made to the property inside the child view will be reflected in the parent view and vice versa.
