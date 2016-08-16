//
//  ContentOffsetVC.swift
//  UIScrollViewDemo
//
//  Created by 也许、 on 16/8/16.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ContentOffsetVC: UIViewController {
    
    // 图片
    var imgView: UIImageView!
    
    // UIScrollView
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
        
        self.title = "ContentOffset属性"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let image = UIImage(named: "test")
        let imgView = UIImageView(frame: CGRectMake(0, 0, image!.size.width, image!.size.height))
        imgView.image = image
        self.scrollView.addSubview(imgView)
        self.imgView = imgView
        self.scrollView.contentSize = image!.size
        
    }
    
    /**
        左
     */
    @IBAction func left(sender: UIButton) {
        UIView.animateWithDuration(0.25) {
            self.scrollView.contentOffset = CGPointMake(0, self.scrollView.contentOffset.y)
        }
    }
    
    /**
        上
     */
    @IBAction func top(sender: UIButton) {
        UIView.animateWithDuration(0.25) {
            self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, 0)
        }
    }
    
    /**
        右
     */
    @IBAction func right(sender: UIButton) {
        UIView.animateWithDuration(0.25) {
            var offset = self.scrollView.contentOffset
            let offsetX = self.scrollView.contentSize.width - self.scrollView.frame.width
            offset.x = offsetX
            self.scrollView.contentOffset = offset
        }
    }
    
    /**
        下
     */
    @IBAction func bottom(sender: UIButton) {
        UIView.animateWithDuration(0.25) {
            var offset = self.scrollView.contentOffset
            let offsetY = self.scrollView.contentSize.height - self.scrollView.frame.height
            offset.y = offsetY
            self.scrollView.contentOffset = offset
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
