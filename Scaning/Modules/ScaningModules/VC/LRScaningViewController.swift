//
//  LRScaningViewController.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/4/23.
//

import UIKit

class LRScaningViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let tempVC = UIViewController()
        tempVC.view.backgroundColor = .orange
        self.navigationController?.pushViewController(tempVC, animated: true)
    }
    
    deinit {
        deallocPrint()
    }
    
}
