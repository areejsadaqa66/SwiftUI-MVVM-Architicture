//
//  BackgroundView.swift
//  test
//
//  Created by areej sadaqa on 17/05/2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("Splash")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}
