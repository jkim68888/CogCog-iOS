//
//  WelcomeView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

struct WelcomeView: View {
	
	@AppStorage("hasPersonalInfo") private var hasPersonalInfo: Bool = false
	
    var body: some View {
		VStack {
			Spacer()
			HStack {
				Spacer()
				Text("환영합니다, 영애님!")
					.font(.spoqaNeo(size: 28, family: .Medium))
					.foregroundStyle(.white)
				Spacer()
			}
			Image(.welcomIcon)
			Spacer()
		}
		.ignoresSafeArea()
		.background(Color("#6349EB"))
		.toolbar(.hidden, for: .navigationBar)
		.onAppear {
			DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
				hasPersonalInfo = true
			}
		}
    }
}

#Preview {
    WelcomeView()
}
