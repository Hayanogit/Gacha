//
//  ResultViewController.swift
//  Gacha
//
//  Created by HAYATO OI on 2023/05/11.
//

import UIKit

class ResultViewController: UIViewController {

    var number: Int!
    
    @IBOutlet var backgroundImageview: UIImageView!
    @IBOutlet var characterImageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        number = Int.random(in: 0...9)
        if number == 9 {
            characterImageview.image = UIImage(named: "webService")
            backgroundImageview.image = UIImage(named: "bgBlue")
        } else if number >= 7 {
            characterImageview.image = UIImage(named: "android")
            backgroundImageview.image = UIImage(named: "bgBlue")
        }else if number >= 5 {
            characterImageview.image = UIImage(named: "digitalMusic")
            backgroundImageview.image = UIImage(named: "bgGreen")
        }else if number >= 3{
            characterImageview.image = UIImage(named: "minecraft")
            backgroundImageview.image = UIImage(named: "bgGreen")
        }else if number >= 1{
            characterImageview.image = UIImage(named: "camera")
            backgroundImageview.image = UIImage(named: "bgRed")
        }else {
            characterImageview.image = UIImage(named: "iphone")
            backgroundImageview.image = UIImage(named: "bgRed")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImageview.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.characterImageview.center.y += 10.0
        }) { _ in
            self.characterImageview.center.y -= 10.0
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true,completion: nil)
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
