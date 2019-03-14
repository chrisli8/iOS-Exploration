//
//  GoPurpleViewController.swift
//  iOS Exploration
//
//  Created by Chris Li on 3/8/19.
//  Copyright © 2019 Chris Li. All rights reserved.
//

import UIKit

class GoPurpleViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var gpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // set screens background color to yellow
        //self.view.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gpBtnPressed(_ sender: Any) {
        // returning to the original screen this way creates a brand new view
        //performSegue(withIdentifier: "gopurple", sender: nil)
        
        // this method is prefered as it only dismisses the current view
        // the app goes to the view underneath (the one displayed before)
        //dismiss(animated: true, completion: nil)
        
        gpBtn.tintColor = UIColor.white
        
        // set each view's background to a random color
        view1.backgroundColor = UIColor.random()
        view2.backgroundColor = UIColor.random()
        view3.backgroundColor = UIColor.random()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
