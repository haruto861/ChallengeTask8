//
//  SecondViewController.swift
//  ChallengeTask8
//
//  Created by 松島悠人 on 2021/02/10.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    private var appdelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func valueChanged(_ sender: Any) {
        appdelegate.value = Double(slider.value)
        resultLabel.text = "\(appdelegate.value)"
    }
    override func viewWillAppear(_ animated: Bool) {
        resultLabel.text = "\(appdelegate.value)"
        slider.value = Float(appdelegate.value)
    }
}
