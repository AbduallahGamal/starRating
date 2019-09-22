//
//  ViewController.swift
//  starRating
//
//  Created by Abdalla on 9/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class ViewController: UIViewController {
    
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(cosmosView)
        cosmosView.centerInSuperview()
        //cosmosView.leftToSuperview()
    }
}

