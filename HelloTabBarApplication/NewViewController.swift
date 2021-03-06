//
//  NewViewController.swift
//  HelloTabBarApplication
//
//  Created by Sophia Wang on 2021/3/27.
//

import UIKit

class NewViewController: UIViewController {
    
    var messageFromViewOne: String?

    @IBOutlet weak var myTextInput: UITextField!
    
    @IBAction func ok(_ sender: UIButton) {
        if let inputText = myTextInput.text{
            print(inputText)
            myTextInput.text = ""
            myTextInput.resignFirstResponder()
            if let firstViewController = self.tabBarController?.viewControllers?[0] as? ViewController{
                firstViewController.myLabel.text = inputText
                self.tabBarController?.selectedIndex = 0
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextInput.becomeFirstResponder()
        myTextInput.text = messageFromViewOne
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        myTextInput.becomeFirstResponder()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
