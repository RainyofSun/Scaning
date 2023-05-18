//
//  LRScaningCaptureView.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/5/18.
//

import UIKit

class LRScaningCaptureView: UIView {
    
    private lazy var captureButton: UIButton = {
        let btn = UIButton(type: UIButton.ButtonType.custom)
        btn.setImage(UIImage(named: "secret_photo_capture"), for: UIControl.State.normal)
        btn.setImage(UIImage(named: "secret_photo_capture"), for: UIControl.State.highlighted)
        return btn
    }()
    
    private lazy var cacheFileButton: UIButton = {
        let btn = UIButton(type: UIButton.ButtonType.custom)
//        btn.setImage(UIImage(systemName: "folder.fill"), for: UIControl.State.normal)
//        btn.setImage(UIImage(systemName: "folder.fill"), for: UIControl.State.highlighted)
        btn.setTitle(LRLocalizableManager.localValue("scanningCacheFile"), for: UIControl.State.normal)
        btn.setTitle(LRLocalizableManager.localValue("scanningCacheFile"), for: UIControl.State.highlighted)
        return btn
    }()
    
    private lazy var toolButton: UIButton = {
        let btn = UIButton(type: UIButton.ButtonType.custom)
//        btn.setImage(UIImage(systemName: "latch.2.case.fill"), for: UIControl.State.normal)
//        btn.setImage(UIImage(systemName: "latch.2.case.fill"), for: UIControl.State.highlighted)
        btn.setTitle(LRLocalizableManager.localValue("scanningTool"), for: UIControl.State.normal)
        btn.setTitle(LRLocalizableManager.localValue("scanningTool"), for: UIControl.State.highlighted)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadCaptureViews()
        layoutCaptureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        deallocPrint()
    }
}

// MARK: Public Methods
extension LRScaningCaptureView {
    
}

// MARK: Private Methods
private extension LRScaningCaptureView {
    func loadCaptureViews() {
        self.addSubview(self.captureButton)
        self.addSubview(self.cacheFileButton)
        self.addSubview(self.toolButton)
    }
    
    func layoutCaptureViews() {
        self.captureButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-35)
        }
        
        self.cacheFileButton.snp.makeConstraints { make in
            make.centerY.equalTo(self.captureButton)
            make.left.equalToSuperview().offset(50)
        }

        self.toolButton.snp.makeConstraints { make in
            make.centerY.equalTo(self.captureButton)
            make.right.equalToSuperview().offset(-50)
        }
    }
}
