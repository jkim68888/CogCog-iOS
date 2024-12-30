//
//  CogCog_iOSApp.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

@main
struct CogCog_iOSApp: App {
	
	@AppStorage("hasLaunchedBefore") private var hasLaunchedBefore: Bool = false
	@AppStorage("hasPersonalInfo") private var hasPersonalInfo: Bool = false
	@AppStorage("hasCheckList") private var hasCheckList: Bool = false
	@State var isSplashView = true
	
    var body: some Scene {
        WindowGroup {
			if !hasLaunchedBefore  {
				OnBoardingView()
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
