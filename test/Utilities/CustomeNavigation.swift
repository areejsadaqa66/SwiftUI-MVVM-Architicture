//
//  CustomeNavigation.swift
//  test
//
//  Created by areej sadaqa on 21/05/2023.
//

import SwiftUI

struct CustomNavigation: ViewModifier {
    
    var title: String
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    ZStack {
                        Image("Nav")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                        Text("\(title)").font(.headline)
                            .foregroundColor(.white)
                            .fixedSize()
                        .frame(width: 100, alignment: .center)
                        .border(Color.blue)
                },
                trailing:
                    Button("back") {
                        
                    }
            )
    }
}

extension View {
    func navigationStyle(with title: String) -> some View {
        modifier(CustomNavigation(title: title))
    }
}
