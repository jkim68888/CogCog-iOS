//
//  CheckListStep3View.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

struct CheckListStep3View: View {
	
	let data = [
		"갑상선",
		"간",
		"고칼슘혈증",
		"고혈압",
		"골다공증",
		"담낭",
		"당뇨",
		"뼈/관절",
		"신장",
		"심장질환/심근경색/스탠트 시술",
		"알레르기 질환/비염/결막염",
		"위장",
		"저혈압",
		"천식",
		"혈관/이상지질혈증",
		"혈액응고관련질환",
		"수술 전후",
		"각종 암",
		"피부 광과민성",
		"자가면역질환",
		"경련성 질환",
		"정신질환",
		"우울",
		"고지혈",
		"출혈성질환",
		"항응고제",
		"항응고제 복용",
		"vitaminB12결핍",
		"임신",
		"수유",
		"담석증",
		"소화기 질환",
		"대사증후군",
		"중독",
		"페닐케톤뇨증"
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
						.foregroundStyle(idx == 2 ? Color("#9283FF") : Color("#EBE9F4"))
				}
			}
			
			VStack(alignment: .leading) {
				HStack {
					Text("3")
						.font(.spoqaNeo(size: 12, family: .Regular))
						.foregroundStyle(Color("#342A69"))
				}
				.frame(width: 16, height: 16)
				.background(Color("#F1F0F2"))
				.clipShape(Circle())
				.padding(.top, 50)
				
				Text("기지질환이 있으신가요?")
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
				NavigationLink(destination: CheckListStep4View()) {
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
				
				NavigationLink(destination: CheckListStep4View()) {
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
    CheckListStep3View()
}
