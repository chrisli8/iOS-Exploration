# iOS-Exploration

# Tutoral Link: https://github.com/chrisli8/iOS-Exploration

For UW 142/143 Students

This repository contains a Xcode project that changes an app's background to a random color. Includes a segueway demo and a triple color change.

**Tutorial**

1: Open Xcode and select **file** then **new project**

2: Selected **Single View App** and click **Next**

3: Give your project a name (this doesn't affect the app's apperance) and give the app a unique indentifier for the *organization identifier*
Usually, you would reverse a domain name for this part EX: com.<your name or organization>

4: Selected **Next** and choose a file location

5: Go to the **main.storyboard** file

6: use the **object library** (square in circle tab/button) to drag and drop a **button** into the lone rectangle. You should now have a button on your screen.

7: use the **attribute inspector** to change the font size of the **button** (right side pannel, 4th tab)

8: Pressed the **Show the Assistant Button** (top right) to display both the storyboard and the **ViewController** class side by side.

9: Select the **button**, hold down the **control** key, click on the button and drag to the **ViewController** class. You should see a blue line between the button and your mouse. Bring your mouse to the line under the class declaration and let go. You should see a line in between seperate lines in the code before you let go.

10: a prompt should apear asking you to name your reference. Choose a name (I chose "colorBtn"). Make sure that **outlet** is selected in the dropdown menu. and click **Ok**

You should now see the code:
```
@IBOutlet weak var colorBtn: UIButton!
```
right under the class declaration.

10: add this code to the **viewDidLoad()** method. 
```
colorBtn.backgroundColor = UIColor.black
colorBtn.tintColor = UIColor.white
```
This will change the background and text color of the button when the OS loads the screen.

11: Return to the **main.storboard** file. Select the **Show the Assistant Button** again to show both the storyboard and the ViewController class side by side.

12: Select the **button** in the storyboard. Hold down the **control** key, click on the button and drag to the **ViewController** class but this time below the **didReceiveMemoryWarning()** method. If that method isn't present, below the **viewDidLoad()**.

13: A window will pop up. For the connections option sellect the dropdown menu and choose **action**. Give the action a name. I chose "colorBtnPressed".

14: Press **connect**

You should now see this method in your class.
```
@IBAction func colorBtnPressed(_ sender: Any) {
}
```

15: Inside the new method add this code:
```
view.backgroundColor = UIColor.purple
```
You can run a sumulation of the app by pressing the play button in the upper left side of the editor. Now when you press the button on the screen in the emulator, the background of the screen should turn from white to purple.

16: We wanted to change the background color to a random color so we'll have to write some extra code. Here we will use a Swift Extention. An extention is additional code that we want to add to a class. In this case we want to add methods to the **UIColor** class and the **CGFloat** class.

add this code outside of the **ViewController** class:
```
extension CGFloat {
    static func randomFloat() -> CGFloat {
        return CGFloat(arc4random_uniform(256)) / CGFloat(255)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        // 0-255
        // 0 - 1 (156/255)
        
        return UIColor(red: CGFloat.randomFloat(),
                       green: .randomFloat(),
                       blue: .randomFloat(),
                       alpha: 1.0)
    }
}
```
Now we can use the "dot notation" to call our random color method.

17: in the **ColorBtnPressed** method change the code:
```
view.backgroundColor = UIColor.purple
```
to
```
view.backgroundColor = UIColor.randomColor
```

Now when we run a simulation, the background of the screen should turn into a random color now if we press the button.
Here's the final code I have for the **ViewController** class
```
//
//  ViewController.swift
//  iOS Exploration
//
//  Created by Chris Li on 3/14/19.
//  Copyright © 2019 Chris Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorBtn.backgroundColor = UIColor.black
        colorBtn.tintColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func colorBtnPressed(_ sender: Any) {
        view.backgroundColor = UIColor.randomColor()
    }
    
}

extension CGFloat {
    static func randomFloat() -> CGFloat {
        return CGFloat(arc4random_uniform(256)) / CGFloat(255)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        // 0-255
        // 0 - 1 (156/255)
        
        return UIColor(red: CGFloat.randomFloat(),
                       green: .randomFloat(),
                       blue: .randomFloat(),
                       alpha: 1.0)
    }
}
```

The repository as a more advanced version of the app that has a segue and shows three colors instead of just one. Check out the code for some help.












