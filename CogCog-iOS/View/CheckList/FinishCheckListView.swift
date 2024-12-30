//
//  FinishCheckListView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/30/24.
//

import SwiftUI

struct FinishCheckListView: View {
	
	@AppStorage("hasCheckList") private var hasCheckList: Bool = false
	
	var body: some View {
		VStack {
			Text("건강 상태 체크리스트")
				.font(.spoqaNeo(size: 17, family: .Bold))
				.foregroundStyle(Color("#565C64"))
				.padding(.top, 84)
			
			VStack {
				Text("영애님의 건강 상태")
					.font(.spoqaNeo(size: 25, family: .Medium))
					.foregroundStyle(Color("#262D37"))
					.padding(.bottom, -12)
				Image(.checkLine)
				Text("체크가 완료되었어요!")
					.font(.spoqaNeo(size: 25, family: .Regular))
					.foregroundStyle(Color("#262D37"))
			}
			.padding(.top, 102)
			
			Image(.finishCheckIcon)
				.padding(.top, 53)
			
			Spacer()
			
			Button(action: {
				hasCheckList = true
			}, label: {
				Text("건너뛰기")
					.font(.spoqaNeo(size: 16, family: .Medium))
					.foregroundStyle(Color("#948C9F"))
					.frame(height: 20, alignment: .center)
					.underline()
			})
			
			Button(action: {
				hasCheckList = true
			}, label: {
				HStack {
					Spacer()
					Text("맞춤형 추천 받기")
						.font(.spoqaNeo(size: 20, family: .Medium))
						.foregroundStyle(Color("#EBE9F4"))
						.frame(height: 52, alignment: .center)
					Spacer()
				}
				.background(Color("#6349EB"))
				.clipShape(RoundedRectangle(cornerRadius: 26))
			})
			.padding(.top, 16)
		}
		.padding(.horizontal, 49)
		.padding(.bottom, 40)
	}
}

#Preview {
	FinishCheckListView()
}
