//
//  UITableViewExtensions.swift
//  SwiftPepper
//
//  Created by 新井　雅人 on 2016/07/11.
//  Copyright © 2016年 Recruit Technologies Co.,Ltd. All rights reserved.
//

import UIKit

public extension UITableView {
    
    public func registerNib<T: UITableViewCell>(type: T.Type) {
        let nib = UINib(nibName: type.className, bundle: nil)
        registerNib(nib, forCellReuseIdentifier: type.className)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(type: T.Type, indexPath: NSIndexPath) -> T {
        return self.dequeueReusableCellWithIdentifier(type.className, forIndexPath: indexPath) as! T
    }
}
