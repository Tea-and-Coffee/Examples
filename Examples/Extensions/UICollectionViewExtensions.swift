//
//  UICollectionViewExtensions.swift
//  SwiftPepper
//
//  Created by 新井　雅人 on 2016/07/11.
//  Copyright © 2016年 Recruit Technologies Co.,Ltd. All rights reserved.
//

import UIKit

public extension UICollectionView {
    
    public func registerClass<T: UICollectionViewCell>(type: T.Type) {
        registerClass(T.self, forCellWithReuseIdentifier: T.className)
    }
    
    public func registerNib<T: UICollectionViewCell>(type: T.Type) {
        let nib = UINib(nibName: type.className, bundle: nil)
        registerNib(nib, forCellWithReuseIdentifier: type.className)
    }
    
    public func registerClass<T: UICollectionReusableView>(type: T.Type, kind: String) {
        registerClass(T.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.className)
    }
    
    public func registerNib<T: UICollectionReusableView>(type: T.Type, kind: String) {
        let nib = UINib(nibName: type.className, bundle: nil)
        registerNib(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.className)
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(type: T.Type, indexPath: NSIndexPath) -> T {
        return dequeueReusableCellWithReuseIdentifier(type.className, forIndexPath: indexPath) as! T
    }
    
    public func dequeueReusableSupplementaryView<T: UICollectionReusableView>(kind: String, type: T.Type, indexPath: NSIndexPath) -> T {
        return dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: type.className, forIndexPath: indexPath) as! T
    }
}
