//
//  Example.swift
//  Examples
//
//  Created by 新井　雅人 on 2016/08/24.
//  Copyright © 2016年 C4. All rights reserved.
//

import UIKit

struct Example {
    var className: String?
}

struct Examples {
    static let examples: [Example] = {
        var examples = [Example]()
        
        for className in Examples.classNames {
            var example = Example()
            example.className = className
            examples.append(example)
        }
        
        return examples
    }()
    
    private static let classNames = [Advanced01.className, Advanced02.className, Advanced03.className, Advanced04.className, Fonts01.className, Fonts02.className, Fonts03.className, Fonts04.className, Fonts05.className, Audio01.className, Audio02.className, Audio03.className, Audio04.className, Audio05.className, Audio06.className, Filters01.className, Filters02.className, Filters03.className, Filters04.className, Filters05.className, Filters06.className, Filters07.className, Filters08.className, Filters09.className, Filters10.className, Gradient01.className, Gradient02.className, Gradient03.className, Gradient04.className, Movies01.className, Movies02.className, Movies03.className, Movies04.className, Images01.className, Images02.className, Images03.className, Images04.className, Colors01.className, Colors02.className, Colors03.className, Colors04.className, Colors05.className, Colors06.className, Colors07.className, Colors08.className, Shapes01.className, Shapes02.className, Shapes03.className, Shapes04.className, Shapes05.className, Shapes06.className, Shapes07.className, Shapes08.className, Shapes09.className, Shapes10.className, Shapes11.className, Shapes12.className, Shapes13.className, Shapes14.className, Shapes15.className, Shapes16.className, Shapes17.className, Shapes18.className, Shapes19.className, Shapes20.className, Shapes21.className, Shapes22.className, Shapes23.className, Views01.className, Views02.className, Views03.className, Views04.className, Views05.className, Views06.className, Views07.className, Views08.className, Views09.className, Views10.className, Views11.className, Views12.className, Views13.className, Views14.className, Views15.className, Views16.className, Views17.className, Views18.className, Math01.className, Math02.className, Math03.className, Math04.className, Math05.className, Math06.className, Math07.className, Math08.className, Math09.className, Math10.className, Math11.className, Math12.className, Math13.className, Math14.className, Math15.className]
}
