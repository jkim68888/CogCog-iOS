//
//  OnBoardingView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

struct OnBoardingView: View {
	
	@AppStorage("hasLaunchedBefore") private var hasLaunchedBefore = false
	@State private var pageNumber: Int = 1
	private let lastPageNumber: Int = 4
	
	var body: some View {
		VStack {
			Image("OnBoarding\(pageNumber)")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.animation(.easeInOut, value: pageNumber)
				.transition(.slide)
		}
		.dragGesture(direction: .right) {
			if pageNumber != lastPageNumber {
				withAnimation {
					pageNumber += 1
				}
			} else {
				// MARK: - 온보딩 끝
				hasLaunchedBefore = true
			}
		}
		.dragGesture(direction: .left) {
			if pageNumber != 1 {
				withAnimation {
					pageNumber -= 1
				}
			}
		}
		.onTapGesture {
			if pageNumber != lastPageNumber {
				withAnimation {
					pageNumber += 1
				}
			} else {
				// MARK: - 온보딩 끝
				hasLaunchedBefore = true
			}
		}
		.edgesIgnoringSafeArea(.all)
	}
}

struct OnBoardingView_Previews: PreviewProvider {
	static var previews: some View {
		OnBoardingView()
	}
}
