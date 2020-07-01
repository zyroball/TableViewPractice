//
//  Cell.swift
//  UITableViewPracticeForSwift
//
//  Created by yu_ookubo on 2020/07/01.
//  Copyright © 2020 yu_ookubo. All rights reserved.
//

import UIKit

class SFTableViewCell: UITableViewCell
{
    @IBOutlet var titleText: UILabel!
 
    public func updateCell(entity: Entity)
    {
        titleText.text = entity.titleValue
    }
}
