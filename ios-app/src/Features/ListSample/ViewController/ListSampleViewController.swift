//
//  ListSampleViewController.swift
//  ios-app
//
//  Created by Andrey Tchernov on 21.05.2021.
//  Copyright © 2021 IceRock Development. All rights reserved.
//

import UIKit
import MultiPlatformLibrary
import MultiPlatformLibraryUnits

class ListSampleViewController: BaseViewController<ListSampleViewModel> {

    @IBOutlet private weak var sampleTableView: UITableView!
    //TableUnitsSource - протокол которому можно дать массив из [TableUnitItem], для него есть готовые реализации в moko-units
    private var tableDataSource: TableUnitsSource?
    
    override func bindViewModel(_ viewModel: ListSampleViewModel) {
        super.bindViewModel(viewModel)
        //Создаем дефолтный вариант источника данных
        //(вызывает UITableView.reload для обновления ячеек)
        tableDataSource = TableUnitsSourceKt.diffable(for: sampleTableView)
        
        //Присваиваем элементы списка
        viewModel.settingUnitsData.addObserver { [weak tableDataSource] data in
            tableDataSource?.unitItems = data as? [TableUnitItem]
        }
    }
}
