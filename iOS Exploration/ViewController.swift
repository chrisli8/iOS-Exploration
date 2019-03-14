//
//  ViewController.swift
//  iOS Exploration
//
//  Created by Chris Li on 3/8/19.
//  Copyright © 2019 Chris Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ggBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ggBtnPressed(_ sender: Any) {
        self.view.backgroundColor = UIColor.random() //UIColor.purple
        ggBtn.tintColor = UIColor.white
        
        // code for moving to a new screen(view)
        // identifier string must match string in storyboard
        performSegue(withIdentifier: "gogold", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // do any pre segue work here
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        // arc4random_uniform uperbound - 1
        // 0-255 different values for r,g,b
        // alternative: CGFloat(arc4random()) / CGFloat(UInt32.max)
        return CGFloat(arc4random_uniform(256)) / CGFloat(255)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   CGFloat.random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

