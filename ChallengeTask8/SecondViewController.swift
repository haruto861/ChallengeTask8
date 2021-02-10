//
//  SecondViewController.swift
//  ChallengeTask8
//
//  Created by 松島悠人 on 2021/02/10.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel2: UILabel!
    @IBOutlet weak var slider2: UISlider!
    private var appdelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func valueChanged(_ sender: Any) {
        appdelegate.value = Double(slider2.value)
        resultLabel2.text = "\(appdelegate.value)"
    }
    override func viewWillAppear(_ animated: Bool) {
        resultLabel2.text = "\(appdelegate.value)"
        slider2.value = Float(appdelegate.value)
    }
}
