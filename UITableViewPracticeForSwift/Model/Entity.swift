//
//  Entity.swift
//  UITableViewPracticeForSwift
//
//  Created by yu_ookubo on 2020/07/01.
//  Copyright © 2020 yu_ookubo. All rights reserved.
//

import Foundation

class Entity: NSObject
{
    var titleValue: String?
    
    open func parseEntity(_ title: String?)
    {
        titleValue              = title
    }
}
