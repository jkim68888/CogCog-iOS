//
//  LoginView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/30/24.
//

import SwiftUI

struct LoginView: View {
	
	@AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
	@StateObject var vm: LoginViewModel = LoginViewModel()
	
    var body: some View {
		VStack(spacing: 20) {
			Text("SNS 로그인")
			
			Button {
				print("카카오 로그인")
				vm.requestKakaoOauth()
			} label: {
				HStack {
					Text("카카오 로그인")
						.tint(.black)
				}
				.frame(maxWidth: .infinity)
				.frame(height: 50)
				.alert(isPresented: $vm.showAlert) {
					return Alert(title: Text(""), message: Text("로그인에 실패하였습니다."))
				}
			}
			.background(.yellow)
			.cornerRadius(10)
			.padding(.bottom, 10)
			.padding(.horizontal, 16)

			Button {} label: {
				HStack {
					Text("애플 로그인")
						.tint(.white)
				}
				.frame(maxWidth: .infinity)
				.frame(height: 50)
				.alert(isPresented: $vm.showAlert) {
					return Alert(title: Text(""), message: Text("로그인에 실패하였습니다."))
				}
			}
			.background(.black)
			.cornerRadius(10)
			.padding(.bottom, 10)
			.padding(.horizontal, 16)
			.overlay {
				vm.requestAppleOauth()
					.frame(maxWidth: 375)
					.frame(height: 44)
					.blendMode(.overlay)
			}
			
			Button(action: {
				isLoggedIn = true
			}, label: {
				Text("임시버튼 - 로그인 건너뛰기")
					.font(.spoqaNeo(size: 16, family: .Medium))
					.foregroundStyle(Color("#948C9F"))
					.frame(height: 20, alignment: .center)
					.underline()
			})
		}
    }
}

#Preview {
    LoginView()
}
