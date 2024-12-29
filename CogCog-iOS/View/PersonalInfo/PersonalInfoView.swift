//
//  PersonalInfoView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

struct PersonalInfoView: View {
    var body: some View {
		NavigationStack {
			HStack {
				Spacer()
				Text("우선, 회원님의\n정보를 입력해주세요.")
					.font(.spoqaNeo(size: 28, family: .Medium))
					.foregroundStyle(.black)
					.lineSpacing(10)
					.multilineTextAlignment(.center)
				Spacer()
			}
			.padding(.top, 133)
			
			Spacer()
			
			NavigationLink(destination: {
				PersonalInfoInputFormView()
			}, label: {
				Image(.nextBtn)
					.padding(.bottom, 183)
			})
		}
		.background(Color("#EBE9F4"))
    }
}

#Preview {
	PersonalInfoView()
}
