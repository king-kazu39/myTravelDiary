//
//  ViewController.swift
//  myTravelDiary
//
//  Created by 仲里和也 on 2020/05/19.
//  Copyright © 2020 仲里和也. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
                let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let next: UIViewController = storyboard.instantiateInitialViewController()! as UIViewController
                self.addChild(next)
                self.view.addSubview(next.view!)
                next.didMove(toParent: self)
            }
        }
    }

}

