//
//  StartCheckListView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

struct StartCheckListView: View {
	
	@AppStorage("hasCheckList") private var hasCheckList: Bool = false
	
    var body: some View {
		NavigationStack {
			ZStack(alignment: .top) {
				Rectangle()
					.foregroundColor(.white)
					.clipShape(
						.rect(
							topLeadingRadius: 30,
							bottomLeadingRadius: 0,
							bottomTrailingRadius: 0,
							topTrailingRadius: 30
						)
					)
					.padding(.top, 250)
					.background(Color("#6349EB"), ignoresSafeAreaEdges: .top)
				
				Image(.startCheckIcon)
					.padding(.top, 65)
				
					// MARK: - 입력 폼 (하얀 박스)
				VStack {
					HStack(alignment: .top) {
						Text("*")
							.font(.spoqaNeo(size: 22, family: .Medium))
							.foregroundStyle(Color("#FF0000"))
						Text("맞춤형 영양제 추천을 위해서 건강 상태 체크리스트를 진행해보시겠어요?")
							.font(.spoqaNeo(size: 22, family: .Medium))
							.foregroundStyle(.black)
					}
					.padding(.top, 49)
					
					HStack(alignment: .top) {
						Text("*")
							.font(.spoqaNeo(size: 22, family: .Medium))
							.foregroundStyle(Color("#FF0000"))
							.opacity(0)
						Text("건너뛰더라도 맞춤형 추천을 제외한 모든 영양제 열람이 가능해요.")
							.font(.spoqaNeo(size: 22, family: .Medium))
							.foregroundStyle(.black)
					}
					.padding(.top, 20)
					
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
					
					NavigationLink(destination: {
						CheckListStep1View()
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
				.padding(.top, 250)
				.padding(.bottom, 40)
			}
		}
		.toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    StartCheckListView()
}
