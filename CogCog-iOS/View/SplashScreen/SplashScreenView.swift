//
//  SplashScreenView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
		VStack {
			Image(.splashScreen)
				.resizable()
				.aspectRatio(contentMode: .fill)
		}
		.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SplashScreenView()
}
