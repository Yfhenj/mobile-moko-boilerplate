//
//  ListSampleUnitFactoryImpl.swift
//  ios-app
//
//  Created by Andrey Tchernov on 28.05.2021.
//  Copyright © 2021 IceRock Development. All rights reserved.
//

import UIKit
import MultiPlatformLibrary
import MultiPlatformLibraryUnits

class ListSampleUnitFactoryImpl: ListSampleUnitFactory {
    func createSettingsUnit(
        id: Int32,
        name: String,
        boolValue: Bool,
        onValueChanged: @escaping (KotlinBoolean) -> Void) -> TableUnitItem {
        
        //Прокидываем параметры в ячейку и связываем лямбды
        return UITableViewCellUnit<SampleTableViewCell>(
            data: SampleTableViewCell.DataType(
                title: name,
                switchValue: boolValue,
                switchAction: { newValue in
                    onValueChanged(KotlinBoolean(value: newValue))
                }),
            itemId: Int64(id))
    }
}
