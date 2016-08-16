//
//  ContentSizeVC.swift
//  UIScrollViewDemo
//
//  Created by 也许、 on 16/8/16.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ContentSizeVC: UIViewController {
    
    
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
        
        // 清除自动给UIScrollView添加的内边距
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.title = "contentSize属性"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let imageView = UIImageView(image: UIImage(named: "test"))
        let imageSize = imageView.image!.size
        
        // 设置内容尺寸为图片的原尺寸
        self.scrollView.contentSize = CGSizeMake( imageSize.width, imageSize.height)
        self.scrollView.addSubview(imageView)
        
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
