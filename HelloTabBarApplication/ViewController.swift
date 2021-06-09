//
//  ViewController.swift
//  HelloTabBarApplication
//
//  Created by Sophia Wang on 2021/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "First View"
        if let secondViewController = self.tabBarController?.viewControllers?[1] as? NewViewController{
            secondViewController.messageFromViewOne = "Hi"
        }
    }


}

