//
//  CheckListStep2View.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

struct CheckListStep2View: View {
	
	let data = [
		"홍삼/사상자/산수유",
		"강황",
		"달맞이꽃 종자유",
		"프로폴리스",
		"석류",
		"소맥/보리",
		"밀/밀단백질",
		"무화과",
		"난황/계란",
		"대두",
		"호박씨",
		"국화과/쑥갓/카모마일/해바라기씨",
		"유제품/유당불내증",
		"호프 추출물",
		"땅콩",
		"옻",
		"갑각류",
		"에스트로겐 민감",
		"카페인 민감",
		"포도",
		"폴리페놀",
		"식물성 성분",
		"해조류",
		"어류",
		"녹차",
		"생선",
		"발진",
		"호흡곤란",
		"두통",
		"두드러기",
		"신장 질환",
		"효모",
		"옥수수"
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
						.foregroundStyle(idx == 1 ? Color("#9283FF") : Color("#EBE9F4"))
				}
			}
			
			VStack(alignment: .leading) {
				HStack {
					Text("2")
						.font(.spoqaNeo(size: 12, family: .Regular))
						.foregroundStyle(Color("#342A69"))
				}
				.frame(width: 16, height: 16)
				.background(Color("#F1F0F2"))
				.clipShape(Circle())
				.padding(.top, 50)
				
				Text("알러지가 있으신가요?")
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
				NavigationLink(destination: CheckListStep3View()) {
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
				
				NavigationLink(destination: CheckListStep3View()) {
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
    CheckListStep2View()
}
