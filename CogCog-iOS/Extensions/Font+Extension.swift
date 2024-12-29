//
//  Font+Extension.swift
//  CogCog-iOS
//
//  Created by 김지현 on 12/29/24.
//

import SwiftUI

// MARK: - 커스텀 폰트
extension Font {
	enum Family: String {
		case Thin, Light, Regular, Medium, Bold
	}
	
	static func spoqaNeo(size: CGFloat, family: Family) -> Font {
		return Font.custom("SpoqaHanSansNeo-\(family)", size: size)
	}
}
