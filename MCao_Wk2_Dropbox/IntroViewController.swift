//
//  IntroViewController.swift
//  MCao_Wk2_Dropbox
//
//  Created by Michie Cao on 9/23/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile5: UIImageView!
    @IBOutlet weak var introTile6: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: 320, height: 1136)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
        introTile1.center.x = introTile1.center.x - 0.4
        introTile3.center.x = introTile3.center.x + 1
        introTile4.center.x = introTile4.center.x + 2
        introTile5.center.x = introTile5.center.x - 0.3
        
        
        introTile1.center.y = introTile1.center.y - 1.6
        introTile2.center.y = introTile2.center.y - 1.3
        introTile3.center.y = introTile3.center.y - 1.6
        introTile4.center.y = introTile4.center.y - 1.2
        introTile5.center.y = introTile5.center.y - 1.2
        introTile6.center.y = introTile6.center.y - 1.6
        
        
        
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // This method is called when the scrollview finally stops scrolling.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
