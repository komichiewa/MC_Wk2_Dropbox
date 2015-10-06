# MC_Wk2_Dropbox
Week 2 Assignment: Leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. Use techniques learned from Week 2 to implement the Carousel app from the signed out state to the basic signed in state.

Time spent: 2 hour lecture (missed Thursday class), 17 hours spent in total

Completed User Stories:

Required:
<ul>
<li>Static photo tiles on the initial screen<br>
<li>Sign In <br>
 -Tapping on email/password reveals keyboard <br>
 -User sees an error alert when no email is present or no password is present<br>
 -alertController.dismissViewControllerAnimated(true, completion: nil) dismisses the alert controller loading<br> screen with no buttons <br>
 -User sees an error alert when entering the wrong email/password combination<br>
 -User is taken to the tutorial screens upon entering the correct email/password combination<br>
 <li>Tutorial Screens <br>
 -User can page between the screens 
<li>Image Timeline <br>
  -Display a scrollable view of images<br>
  -User can tap on the conversations button to see the conversations screen (push)<br>
  -User can tap on the profile image to see the settings view (modal from below)<br>
<li>Settings<br>
  -User can dismiss the settings screen<br>
  -User can log out
</ul>
Optional:
<ul>
<li>Photo tiles move with scrolling<br>
<li>Sign Up <br>
  -Tapping in the form reveals the keyboard and shifts the form up <br>
  -Tapping the Agree to Terms checkbox selects the checkbox <br>
  -Tapping on Terms opens webview with mobile terms of service page <br>
<li>Tutorial Screens<br>
  -User can page between the screens with updated dots<br>
  -Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button <br>
</ul>

Walkthrough of all user stories:<br><br>
![](http://i.imgur.com/28N0LaP.gif)
