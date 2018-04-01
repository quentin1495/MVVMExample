//
//  ViewController.swift
//  TrainingMVVM
//
//  Created by Quentin Prevost on 01/04/2018.
//  Copyright © 2018 Quentin Prevost. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!

    private lazy var viewModel: HomeViewModel = {
       let viewModel = HomeViewModel()
        return viewModel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        refreshUI()
    }

    private func initViewModel() {
        viewModel.buttonDidClicked = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.titleLabel.text = "Button touched"
        }
    }

    private func refreshUI() {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
    }

    @IBAction private func buttonTouched() {
        viewModel.buttonDidClickedFromController()
    }
}
