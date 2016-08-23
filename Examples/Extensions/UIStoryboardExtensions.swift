//
//  UIStoryboardExtensions.swift
//  SwiftPepper
//
//  Created by 新井　雅人 on 2016/07/07.
//  Copyright © 2016年 Recruit Technologies Co.,Ltd. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    public func instantiate<T: UIViewController where T: NSObject>(_: T.Type) -> T {
        let storyboard = UIStoryboard(name: T.className, bundle: nil)
        return storyboard.instantiateInitialViewController() as! T
    }
    
    public func instantiate<T: UIViewController where T: NSObject>(_: T.Type, storyboard: String) -> T {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        return storyboard.instantiateViewControllerWithIdentifier(T.className) as! T
        
    }
}
