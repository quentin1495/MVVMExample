//
//  HomeViewModel.swift
//  TrainingMVVM
//
//  Created by Quentin Prevost on 01/04/2018.
//  Copyright © 2018 Quentin Prevost. All rights reserved.
//

import Foundation

class HomeViewModel {
    var buttonDidClicked: (() -> Void)?
    let title = "Welcome to MVVM"
    let description = "MVVM facilitates a separation of development of the graphical user interface."
    
    func buttonDidClickedFromController() {
        DispatchQueue.main.async {
            self.buttonDidClicked?()
        }
    }
}
