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

*More to come...*
