//
//  Example.swift
//  Examples
//
//  Created by 新井　雅人 on 2016/08/24.
//  Copyright © 2016年 C4. All rights reserved.
//

import C4
import UIKit

struct Example {
    var controllerType: CanvasController.Type?
    
    lazy var controllerName: String = self._controllerName()
    
    private func _controllerName() -> String {
        guard let controllerName = controllerType?.className else {
            fatalError("Not found controller name")
        }
        return controllerName
    }
    
    lazy var controller: CanvasController = self._controller()
    
    private func _controller() -> CanvasController {
        guard let controller = controllerType?.init() else {
            fatalError("Unable to instantiate a CanvasController")
        }
        return controller
    }
}

struct Examples {
    static let examples: [Example] = {
        var examples = [Example]()
        for controllerType in Examples.controllerTypes {
            var example = Example()
            example.controllerType = controllerType
            examples.append(example)
        }
        return examples
    }()
    
    private static let controllerTypes: [CanvasController.Type] = [Advanced01.self, Advanced02.self, Advanced03.self, Advanced04.self, Interaction01.self, Interaction02.self, Interaction03.self, Interaction04.self, Interaction05.self, Interaction06.self, Interaction07.self, Interaction08.self, Fonts01.self, Fonts02.self, Fonts03.self, Fonts04.self, Fonts05.self, Audio01.self, Audio02.self, Audio03.self, Audio04.self, Audio05.self, Audio06.self, Filters01.self, Filters02.self, Filters03.self, Filters04.self, Filters05.self, Filters06.self, Filters07.self, Filters08.self, Filters09.self, Filters10.self, Gradient01.self, Gradient02.self, Gradient03.self, Gradient04.self, Movies01.self, Movies02.self, Movies03.self, Movies04.self, Images01.self, Images02.self, Images03.self, Images04.self, Colors01.self, Colors02.self, Colors03.self, Colors04.self, Colors05.self, Colors06.self, Colors07.self, Colors08.self, Shapes01.self, Shapes02.self, Shapes03.self, Shapes04.self, Shapes05.self, Shapes06.self, Shapes07.self, Shapes08.self, Shapes09.self, Shapes10.self, Shapes11.self, Shapes12.self, Shapes13.self, Shapes14.self, Shapes15.self, Shapes16.self, Shapes17.self, Shapes18.self, Shapes19.self, Shapes20.self, Shapes21.self, Shapes22.self, Shapes23.self, Views01.self, Views02.self, Views03.self, Views04.self, Views05.self, Views06.self, Views07.self, Views08.self, Views09.self, Views10.self, Views11.self, Views12.self, Views13.self, Views14.self, Views15.self, Views16.self, Views17.self, Views18.self, Math01.self, Math02.self, Math03.self, Math04.self, Math05.self, Math06.self, Math07.self, Math08.self, Math09.self, Math10.self, Math11.self, Math12.self, Math13.self, Math14.self, Math15.self]
}
