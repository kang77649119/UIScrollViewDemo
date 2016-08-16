//
//  ContentInsetVC.swift
//  UIScrollViewDemo
//
//  Created by 也许、 on 16/8/16.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ContentInsetVC: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始化UI
        initBasicUI()
    }
    
    /**
        初始化UI
     */
    func initBasicUI() {
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.title = "contentInset属性"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let imgView = UIImageView(image: UIImage(named: "test"))
        let size = imgView.image!.size
        self.scrollView.contentSize = CGSizeMake(size.width, size.height)
        self.scrollView.addSubview(imgView)
        self.scrollView.contentInset = UIEdgeInsetsMake(30, 30, 50, 30)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
