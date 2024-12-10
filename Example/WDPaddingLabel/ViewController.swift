//
//  ViewController.swift
//  WDPaddingLabel
//
//  Created by scott on 12/10/2024.
//  Copyright (c) 2024 scott. All rights reserved.
//

import UIKit
import WDPaddingLabel

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.center.equalTo(view)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    lazy var label: WDPaddingLabel = {
        let label = WDPaddingLabel()
        label.padding = UIEdgeInsets(top: 50, left: 50, bottom: 50, right: 50)
        label.backgroundColor = .red
        label.text = "WDPaddingLabel"
        return label
    }()


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        label.padding = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        label.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

}

