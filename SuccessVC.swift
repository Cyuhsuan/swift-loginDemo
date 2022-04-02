//
//  SuccessVC.swift
//  loginDemo
//
//  Created by 張宇軒 on 2022/4/2.
//

import UIKit

class SuccessVC: UIViewController {
    
    var text:String=""

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = self.text
        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickExitButton(_ sender: UIButton) {
        self.dismiss(animated: true)
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
