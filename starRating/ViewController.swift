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
        //view.settings.updateOnTouch = false
        view.settings.filledImage = UIImage(named: "filled")?.withRenderingMode(.alwaysOriginal)
        view.settings.emptyImage = UIImage(named: "empty")?.withRenderingMode(.alwaysOriginal)
        
        view.settings.totalStars = 5
        view.settings.starSize  = 25
        view.settings.starMargin = 3.5
        view.settings.fillMode = .precise
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(cosmosView)
        cosmosView.centerInSuperview()
        //cosmosView.leftToSuperview()
        cosmosView.didTouchCosmos = { rating in
            print("Rated: \(rating)")
        }
    }
}

