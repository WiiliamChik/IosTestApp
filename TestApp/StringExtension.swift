//
//  StringExtension.swift
//  TestApp
//  
//  扩展String类，提供一个拓展的方法，逆序输出字符串
//  Created by 植伟良 on 2016/12/18.
//  Copyright © 2016年 植伟良. All rights reserved.
//

import Foundation

extension String {
    
    func reverse() -> String {
        var returnStr:String = ""
        var strLength = self.characters.count
        for index in strLength...0 {
            returnStr.append(self.characters.reversed())
        }
    }
}
