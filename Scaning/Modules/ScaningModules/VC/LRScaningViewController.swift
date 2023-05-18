//
//  LRScaningViewController.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/4/23.
//

import UIKit
import SnapKit

class LRScaningViewController: UIViewController {
    
    private lazy var playingView: LRScaningPlayView = {
        return LRScaningPlayView(frame: CGRectZero)
    }()
    
    private lazy var captureView: LRScaningCaptureView = {
        return LRScaningCaptureView(frame: CGRectZero)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadScaningViews()
        layoutScaningViews()
    }
    
    deinit {
        deallocPrint()
    }
    
}

// MARK: Private Methods
private extension LRScaningViewController {
    func loadScaningViews() {
        self.view.backgroundColor = .black
        self.view.addSubview(playingView)
        self.view.addSubview(captureView)
    }
    
    func layoutScaningViews() {

        playingView.snp.makeConstraints { make in
            make.horizontalEdges.top.equalToSuperview()
            make.bottom.equalTo(captureView.snp.top)
        }
        
        captureView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.18)
            make.bottom.equalToSuperview().offset(-UIWindow.safeAreaBottom())
        }
    }
}
