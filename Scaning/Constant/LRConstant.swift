//
//  LRConstant.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/4/23.
//

import UIKit

// MARK: 粗体字体
func APPBoldFont(_ size: CGFloat = 14) -> UIFont {
    return UIFont.init(name: "Futura Bold", size: size) ?? UIFont.boldSystemFont(ofSize: size)
}
