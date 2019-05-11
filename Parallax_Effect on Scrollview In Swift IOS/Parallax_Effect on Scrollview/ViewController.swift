//
//  ViewController.swift
//  Parallax_Effect on Scrollview
//
//  Created by Savan Ankola on 5/11/19.
//  Copyright © 2019 Latitude. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var height_ImgView: NSLayoutConstraint!
    @IBOutlet weak var leading_ImgView: NSLayoutConstraint!
    @IBOutlet weak var trailling_ImgView: NSLayoutConstraint!
    @IBOutlet weak var top_imgView: NSLayoutConstraint!
    @IBOutlet weak var bottom_ImgView: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        
        if scrollView.contentOffset.y < 0.0 {
            self.height_ImgView.constant = 250 - (scrollView.contentOffset.y)
            self.top_imgView.constant = scrollView.contentOffset.y
            self.trailling_ImgView.constant = (scrollView.contentOffset.y)
            self.leading_ImgView.constant =  (scrollView.contentOffset.y)
        } else {
            if scrollView.contentOffset.y < 70 {
            self.height_ImgView.constant = 250 - (scrollView.contentOffset.y)
            self.top_imgView.constant =  (scrollView.contentOffset.y * 0.25)
            self.bottom_ImgView.constant = -(scrollView.contentOffset.y * 0.75)
            self.trailling_ImgView.constant =  -(scrollView.contentOffset.y)
            self.leading_ImgView.constant =  -(scrollView.contentOffset.y)
            }
        }
    }
}

