//
//  UIColor_Ext.swift
//  ColorsApp
//
//  Created by Ece Havanci on 27.06.2023.
//

import UIKit

extension UIColor{
    static func random()->UIColor{
        return UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
    }
}
