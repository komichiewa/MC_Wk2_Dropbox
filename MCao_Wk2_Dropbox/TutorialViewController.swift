//
//  TutorialViewController.swift
//  MCao_Wk2_Dropbox
//
//  Created by Michie Cao on 9/26/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
   
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var carouselButton: UIButton!
    @IBOutlet weak var carouselView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        carouselButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset

        let page : Int = Int(round(scrollView.contentOffset.x / 320))
    
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page + 1
        print(pageControl.currentPage)
        
        if pageControl.currentPage == 3{
            carouselView.alpha = 1
            switchButton.alpha = 1
            carouselButton.hidden = false
        }
        print(carouselView.alpha)
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
