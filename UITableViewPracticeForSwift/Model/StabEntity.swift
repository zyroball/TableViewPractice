//
//  StabEntity.swift
//  UITableViewPracticeForSwift
//
//  Created by yu_ookubo on 2020/07/01.
//  Copyright © 2020 yu_ookubo. All rights reserved.
//

import Foundation

class StabEntity: NSObject
{
    public func loadStabEntity() -> [Entity]
    {
        var resultSet: [Entity] = []
        let firstDetails: Array    = ["Hello",
                                       "Good",
                                       "Night",
                                       "noon",
                                       "Early",
                                       "Late"]
        
        for i in 0..<6
        {
            let entity: Entity = Entity()
            entity.titleValue           = firstDetails[i] as String

            resultSet.append(entity)
        }
        return resultSet
    }
}
