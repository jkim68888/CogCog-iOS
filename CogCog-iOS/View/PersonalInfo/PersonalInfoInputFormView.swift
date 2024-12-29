//
//  PersonalInfoInputFormView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

struct PersonalInfoInputFormView: View {
	
	@State var name: String = ""
	
    var body: some View {
		ZStack(alignment: .top) {
			Rectangle()
				.foregroundColor(.white)
				.clipShape(
					.rect(
						topLeadingRadius: 30.7,
						bottomLeadingRadius: 0,
						bottomTrailingRadius: 0,
						topTrailingRadius: 30.7
					)
				)
				.padding(.top, 108)
				.background(Color("#6349EB"), ignoresSafeAreaEdges: .top)
			
			Image(.personalInfoIcon)
				.padding(.top, 47)
			
			// MARK: - 입력 폼 (하얀 박스)
			VStack {
				Text("개인 정보 입력")
					.font(.spoqaNeo(size: 28, family: .Bold))
					.foregroundStyle(Color("#160766"))
					.padding(.top, 24)
				
				Rectangle()
					.frame(height: 3)
					.padding(.horizontal, 31)
					.foregroundColor(Color("#948C9F"))
					.opacity(0.5)
				
				VStack(spacing: 26) {
					VStack {
						HStack {
							Text("이름")
								.font(.spoqaNeo(size: 22, family: .Medium))
								.foregroundStyle(Color("#262D37"))
								.padding(.top, 24)
								.frame(height: 33, alignment: .leading)
							Spacer()
								.frame(height: 33)
						}
						.offset(y: -10)
						
						TextField(text: $name) {
							Text("이름을 써주세요.")
								.foregroundStyle(Color("#C6C2CD"))
								.font(.spoqaNeo(size: 16, family: .Regular))
						}
						.padding(.horizontal, 18)
						.foregroundStyle(.black)
						.frame(height: 40)
						.textFieldStyle(.plain)
						.font(.spoqaNeo(size: 16, family: .Regular))
						.overlay(
							RoundedRectangle(cornerRadius: 20)
								.stroke(Color("#C6C2CD"))
						)
					}
					
					VStack {
						HStack {
							Text("성별")
								.font(.spoqaNeo(size: 22, family: .Medium))
								.foregroundStyle(Color("#262D37"))
								.padding(.top, 24)
								.frame(height: 33, alignment: .leading)
							Spacer()
								.frame(height: 33)
						}
						.offset(y: -10)
						
						HStack {
							Button(action: {}, label: {
								Spacer()
								Text("남자")
									.font(.spoqaNeo(size: 16, family: .Regular))
									.foregroundStyle(Color("#C6C2CD"))
									.frame(height: 40, alignment: .center)
								Spacer()
							})
							
							Rectangle()
								.frame(width: 1, height: 40)
								.foregroundStyle(Color("#C6C2CD"))
							
							Button(action: {}, label: {
								Spacer()
								Text("여자")
									.font(.spoqaNeo(size: 16, family: .Regular))
									.foregroundStyle(Color("#C6C2CD"))
									.frame(height: 40, alignment: .center)
								Spacer()
							})
						}
						.frame(height: 40)
						.foregroundColor(.white)
						.overlay(
							RoundedRectangle(cornerRadius: 20)
								.stroke(Color("#C6C2CD"))
						)
					}
					
					VStack {
						HStack {
							Text("생년월일")
								.font(.spoqaNeo(size: 22, family: .Medium))
								.foregroundStyle(Color("#262D37"))
								.padding(.top, 24)
								.frame(height: 33, alignment: .leading)
							Spacer()
								.frame(height: 33)
						}
						.offset(y: -10)
						
						HStack {
							Button(action: {}, label: {
								Spacer()
								Text("1990년")
									.font(.spoqaNeo(size: 16, family: .Regular))
									.foregroundStyle(Color("#C6C2CD"))
									.frame(height: 40, alignment: .center)
								Image(.arrowDown)
								Spacer()
							})
							
							Rectangle()
								.frame(width: 1, height: 40)
								.foregroundStyle(Color("#C6C2CD"))
							
							Button(action: {}, label: {
								Spacer()
								Text("2월")
									.font(.spoqaNeo(size: 16, family: .Regular))
									.foregroundStyle(Color("#C6C2CD"))
									.frame(height: 40, alignment: .center)
								Image(.arrowDown)
								Spacer()
							})
							
							Rectangle()
								.frame(width: 1, height: 40)
								.foregroundStyle(Color("#C6C2CD"))
							
							Button(action: {}, label: {
								Spacer()
								Text("18일")
									.font(.spoqaNeo(size: 16, family: .Regular))
									.foregroundStyle(Color("#C6C2CD"))
									.frame(height: 40, alignment: .center)
								Image(.arrowDown)
								Spacer()
							})
						}
						.frame(height: 40)
						.foregroundColor(.white)
						.overlay(
							RoundedRectangle(cornerRadius: 20)
								.stroke(Color("#C6C2CD"))
						)
					}
					
					VStack {
						HStack {
							Text("개인정보이용약관")
								.font(.spoqaNeo(size: 22, family: .Medium))
								.foregroundStyle(Color("#262D37"))
								.padding(.top, 24)
								.frame(width: 162, height: 33, alignment: .leading)
							Spacer()
								.frame(height: 33)
						}
						.offset(y: -10)
					}
					
					Spacer()
					
					NavigationLink(destination: {
						WelcomeView()
					}, label: {
						HStack {
							Spacer()
							Text("완료")
								.font(.spoqaNeo(size: 20, family: .Medium))
								.foregroundStyle(Color("#EBE9F4"))
								.frame(height: 52, alignment: .center)
							Spacer()
						}
						.background(Color("#6349EB"))
						.clipShape(RoundedRectangle(cornerRadius: 26))
					})
				}
				.padding(.horizontal, 46)
				.padding(.top, 50)
			}
			.padding(.top, 108)
		}
		.toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
	PersonalInfoInputFormView()
}
