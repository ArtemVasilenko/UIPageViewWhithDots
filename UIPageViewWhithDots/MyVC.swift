//
//  MyVC.swift
//  UIPageViewWhithDots
//
//  Created by Артем on 3/26/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class MyVC: UIViewController {
    
    @IBOutlet weak var contView: UIView!
    @IBOutlet weak var dots: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let myPageVC = segue.destination as! MyPageViewController
        myPageVC.myDelegate = self
    }
}


extension MyVC: MyPageViewDelegate {
    func myPageViewController(myPageViewController: MyPageViewController, didUpdatePageCount count: Int) {
        dots.numberOfPages = count
    }
    
    func myPageViewController(myPageViewController: MyPageViewController, didUpdatePageIndex index: Int) {
        dots.currentPage = index
    }
}
