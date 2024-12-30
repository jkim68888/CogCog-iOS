//
//  CheckListStep5View.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

struct CheckListStep5View: View {
	
	let data = [
		"스트레스",
		"예민"
	]
	
	let columns = [
		GridItem(.flexible()),
		GridItem(.flexible()),
		GridItem(.flexible())
	]
	
	@AppStorage("hasCheckList") private var hasCheckList: Bool = false
	
	var body: some View {
		VStack(alignment: .center) {
			Text("건강 상태 체크리스트")
				.font(.spoqaNeo(size: 17, family: .Bold))
				.foregroundStyle(Color("#565C64"))
				.padding(.top, 84)
			
			HStack {
				ForEach(0..<5) { idx in
					Rectangle()
						.frame(width: 46.3, height: 5)
						.clipShape(RoundedRectangle(cornerRadius: 2.5))
						.foregroundStyle(idx == 4 ? Color("#9283FF") : Color("#EBE9F4"))
				}
			}
			
			VStack(alignment: .leading) {
				HStack {
					Text("5")
						.font(.spoqaNeo(size: 12, family: .Regular))
						.foregroundStyle(Color("#342A69"))
				}
				.frame(width: 16, height: 16)
				.background(Color("#F1F0F2"))
				.clipShape(Circle())
				.padding(.top, 50)
				
				Text("건강 문제로 일상에\n 불편함이 있으신가요?")
					.font(.spoqaNeo(size: 22, family: .Medium))
					.foregroundStyle(Color("#342A69"))
					.padding(.top, 11)
				
				ScrollView {
					LazyVGrid(columns: columns, spacing: 16) {
						ForEach(data, id: \.self) { text in
							Button(action: {}, label: {
								Text(text)
									.padding(.horizontal, 20)
									.padding(.vertical, 7.5)
									.frame(maxWidth: .infinity)
									.background(
										Capsule()
											.fill(Color(uiColor: .systemGray6))
									)
									.foregroundColor(Color(uiColor: .systemIndigo))
							})
						}
					}
				}
				.padding(.vertical, 30)
			}
			
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
			
			HStack {
				NavigationLink(destination: FinishCheckListView()) {
					HStack {
						Spacer()
						Text("아니요")
							.font(.spoqaNeo(size: 20, family: .Medium))
							.foregroundStyle(Color("#888B95"))
						Spacer()
					}
					.frame(height: 52)
					.background(Color("#EBE9F4"))
					.clipShape(RoundedRectangle(cornerRadius: 26))
				}
				.onTapGesture {
					print("Button tapped")
				}
				
				Spacer()
					.frame(width: 20)
				
				NavigationLink(destination: FinishCheckListView()) {
					HStack {
						Spacer()
						Text("네")
							.font(.spoqaNeo(size: 20, family: .Medium))
							.foregroundStyle(.white)
						Spacer()
					}
					.frame(height: 52)
					.background(Color("#6349EB"))
					.clipShape(RoundedRectangle(cornerRadius: 26))
				}
				.onTapGesture {
					print("Button tapped")
				}
			}
			.padding(.top, 16)
		}
		.padding(.horizontal, 40)
		.padding(.bottom, 40)
	}
}

#Preview {
    CheckListStep5View()
}
