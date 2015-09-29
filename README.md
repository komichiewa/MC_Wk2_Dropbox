# MC_Wk2_Dropbox
Week 2 Assignment: Leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. Use techniques learned from Week 2 to implement the Carousel app from the signed out state to the basic signed in state.

Time spent: 2 hour lecture (missed Thursday class), 17 hours spent in total

Completed User Stories:

Required:

-Static photo tiles on the initial screen
-Sign In: 
  -Tapping on email/password reveals keyboard 
  -User sees an error alert when no email is present or no password is present
  -alertController.dismissViewControllerAnimated(true, completion: nil) dismisses the alert controller loading screen with no buttons
  -User sees an error alert when entering the wrong email/password combination
  -User is taken to the tutorial screens upon entering the correct email/password combination
-Tutorial Screens: 
  -User can page between the screens 
-Image Timeline: 
  -Display a scrollable view of images
  -User can tap on the conversations button to see the conversations screen (push)
  -User can tap on the profile image to see the settings view (modal from below)
-Settings
  -User can dismiss the settings screen
  -User can log out

Optional:

-Photo tiles move with scrolling
-Sign Up: 
  -Tapping in the form reveals the keyboard and shifts the form up
  -Tapping the Agree to Terms checkbox selects the checkbox
  -Tapping on Terms opens webview with mobile terms of service page
-Tutorial Screens
  -User can page between the screens with updated dots
  -Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button

Walkthrough of all user stories:<br><br>
![](http://i.imgur.com/28N0LaP.gifv)<br><br>
