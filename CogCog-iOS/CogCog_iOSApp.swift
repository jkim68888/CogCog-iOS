//
//  CogCog_iOSApp.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct CogCog_iOSApp: App {
	
	@AppStorage("hasLaunchedBefore") private var hasLaunchedBefore: Bool = false
	@AppStorage("hasPersonalInfo") private var hasPersonalInfo: Bool = false
	@AppStorage("hasCheckList") private var hasCheckList: Bool = false
	@AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
	@State var isSplashView = true
	
	init () {
		KakaoSDK.initSDK(appKey: "f0b17d981782dfac9fec3b143114e368")
		
//		self.vm.checkAccessToken()
//		self.isLoggedIn = self.vm.checkLogin()
//		
//		print("AppDelegate isLoggedIn - \(isLoggedIn)")
	}
	
    var body: some Scene {
        WindowGroup {
			if !hasLaunchedBefore  {
				OnBoardingView()
			} else if !isLoggedIn {
				LoginView()
					.onOpenURL(perform: { url in
						if (AuthApi.isKakaoTalkLoginUrl(url)) {
							_ = AuthController.handleOpenUrl(url: url)
						}
					})
			} else if !hasPersonalInfo {
				PersonalInfoView()
			} else if !hasCheckList {
				StartCheckListView()
			} else {
				ContentView()
			}
        }
    }
}
