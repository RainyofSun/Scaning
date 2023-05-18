//
//  LRScaningPlayView.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/4/23.
//

import UIKit

class LRScaningPlayView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadScaningPlayViews()
        layoutScaningPlayViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        deallocPrint()
    }
}

// MARK: Private Methods
private extension LRScaningPlayView {
    func loadScaningPlayViews() {
        self.backgroundColor = UIColor.orange
    }
    
    func layoutScaningPlayViews() {
        
    }
}
