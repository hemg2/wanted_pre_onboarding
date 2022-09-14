//
//  String+Extension.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/14.
//

import Foundation

extension String {
    func translate() -> String {
        if self == "sogcho" {
            return "속초"
        } else if self == "daegu" {
            return "대구"
        } else if self == "seoul" {
            return "서울"
        } else if self == "chuncheon" {
            return "춘천"
        } else if self == "cheongju" {
            return "청주"
        } else if self == "cheonan" {
            return "천안"
        } else if self == "jeju" {
            return "제주"
        } else if self == "jeonju" {
            return "전주"
        } else if self == "iksan" {
            return "익산"
        } else if self == "ulsan" {
            return "울산"
        } else if self == "sunchun" {
            return "순천"
        } else if self == "suigen" {
            return "수원"
        } else if self == "moppo" {
            return "목포"
        } else if self == "daejeon" {
            return "대전"
        } else if self == "kunsan" {
            return "군산"
        } else if self == "Gumi" {
            return "구미"
        } else if self == "gongju" {
            return "공주"
        } else if self == "gwangju" {
            return "광주"
        } else if self == "seosan" {
            return "서산"
        } else {
            return "부산"
        }
    }
}

