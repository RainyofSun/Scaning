//
//  LRTabbarViewController.swift
//  Scaning
//
//  Created by 苍蓝猛兽 on 2023/4/23.
//

import UIKit

class LRTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        buildChildrenControllers()
    }
    
    deinit {
        deallocPrint()
    }
}

// MARK: Private Methods
private extension LRTabbarViewController {
    func buildChildrenControllers() {
        let scaningVC: LRNavigationViewController = LRNavigationViewController(rootViewController: LRScaningViewController())
        let settingVC: LRNavigationViewController = LRNavigationViewController(rootViewController: LRSettingViewController())
        
        scaningVC.tabBarItem = UITabBarItem(title: "Scaning", image: UIImage.init(systemName: "scanner"), selectedImage: UIImage.init(systemName: "scanner.fill"))
        settingVC.tabBarItem = UITabBarItem(title: "Setting", image: UIImage.init(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        self.viewControllers = [scaningVC, settingVC]
    }
}

extension LRTabbarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let _nav = viewController as? LRNavigationViewController, let _rootVC = _nav.children.first else {
            return false
        }
        if _rootVC.responds(to: #selector(shouldBeSelected)) {
            return _rootVC.shouldBeSelected(self)
        }
        return true
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

    }
}

// MARK: TabBar 是否可以选中
extension UIViewController {
    @objc func shouldBeSelected(_ tabbarController: LRTabbarViewController) -> Bool {
        return true
    }
}
