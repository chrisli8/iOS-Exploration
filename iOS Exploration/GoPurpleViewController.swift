//
//  GoPurpleViewController.swift
//  iOS Exploration
//
//  Created by Chris Li on 3/8/19.
//  Copyright © 2019 Chris Li. All rights reserved.
//

import UIKit

class GoPurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.yellow
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
        dismiss(animated: true, completion: nil)
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
