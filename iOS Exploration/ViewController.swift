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
        self.view.backgroundColor = UIColor.purple
        ggBtn.tintColor = UIColor.white
        performSegue(withIdentifier: "gogold", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // do any pre segue work here
    }
}

