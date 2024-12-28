//
//  ContentView.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		NavigationView {
			TabView {
				HomeView()
					.tabItem {
						VStack {
							Image(.home)
							Text("홈")
						}
					}
				
				GameView()
					.tabItem {
						VStack {
							Image(.game)
							Text("훈련")
						}
					}
				
				StatisticsView()
					.tabItem {
						VStack {
							Image(.statistic)
							Text("통계")
						}
					}
				
				MyInfoView()
					.tabItem {
						VStack {
							Image(.myInfo)
							Text("정보")
						}
					}
			}
		}
    }
}

#Preview {
    ContentView()
}
