//
//  ViewController.swift
//  myTravelDiary
//
//  Created by 仲里和也 on 2020/05/19.
//  Copyright © 2020 仲里和也. All rights reserved.
//

import UIKit
import Lottie

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimation()
    }
    
    func showAnimation() {
        let animationView = AnimationView(name: "mapAnimation")
        animationView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        animationView.center = self.view.center
        animationView.loopMode = .playOnce
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1

        view.addSubview(animationView)

        animationView.play { finished in
            if finished {
                animationView.removeFromSuperview()
                let nextVC = MainTabBarViewController()
                self.addChild(nextVC)
                self.view.addSubview(nextVC.view!)
                nextVC.didMove(toParent: self)
            }
        }
    }

}

