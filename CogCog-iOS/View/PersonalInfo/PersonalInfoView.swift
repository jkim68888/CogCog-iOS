//
//  PersonalInfoView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

struct PersonalInfoView: View {
    var body: some View {
		NavigationLink(destination: PersonalInfoInputFormView()) {
			VStack {
				Text("우선, 회원님의\n정보를 입력해주세요.")
			}
		}
    }
}

#Preview {
	PersonalInfoView()
}
