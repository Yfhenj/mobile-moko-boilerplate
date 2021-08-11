//
//  SampleTableViewCell.swift
//  ios-app
//
//  Created by Andrey Tchernov on 28.05.2021.
//  Copyright © 2021 IceRock Development. All rights reserved.
//

import UIKit
import MultiPlatformLibraryUnits

class SampleTableViewCell: UITableViewCell, Fillable {
    typealias DataType = CellModel

    struct CellModel {
        let title: String
        let switchValue: Bool
        let switchAction: ((Bool) -> Void)
    }
    
    //Для сохранения действия локально
    private var switchAction: ((Bool) -> Void)?
    
    @IBOutlet var someLabel: UILabel!
    @IBOutlet var someSwitch: UISwitch!
    
    @IBAction func onSwitchValueChanged(_ sender: UISwitch) {
        switchAction?(sender.isOn)
    }
    
    func fill(_ data: CellModel) {
        self.switchAction = data.switchAction
        self.someLabel.text = data.title
        self.someSwitch.setOn(data.switchValue, animated: false)
    }
}
