//
//  LRScaningScrollView.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/5/18.
//

import UIKit

class LRScaningScrollView: UIScrollView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadScrollViews()
        layoutScrollViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        deallocPrint()
    }
}

// MARK: Public Methods
extension LRScaningScrollView {
    
}

// MARK: Private Methods
private extension LRScaningScrollView {
    func loadScrollViews() {
        self.backgroundColor = .red.withAlphaComponent(0.4)
        self.contentSize = CGSize(width: UIScreen.main.bounds.width * 2, height: .zero)
    }
    
    func layoutScrollViews() {
        
    }
}
