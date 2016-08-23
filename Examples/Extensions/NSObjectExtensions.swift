//
//  NSObjectExtensions.swift
//  SwiftPepper
//
//  Created by 新井　雅人 on 2016/07/07.
//  Copyright © 2016年 Recruit Technologies Co.,Ltd. All rights reserved.
//

import UIKit

public extension NSObject {
    
    public class var className: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
    public var className: String {
        return self.dynamicType.className
    }
}
