//
//  ViewController.swift
//  UIScrollViewDemo
//
//  Created by 也许、 on 16/8/16.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let cellId = "cellId"
    let screenW = UIScreen.mainScreen().bounds.width
    let screenH = UIScreen.mainScreen().bounds.height
    var tableView:UITableView?
    
    let datas = [ "contentSize" ,"contentOffset", "contentInset" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初始化UI
        initBasicUI()
        
    }
    
     // MARK: 初始化UI
    func initBasicUI() {
        
        self.title = "UIScrollViewDemo"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let tableView = UITableView(frame: CGRectMake(0, 0, screenW, screenH))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellId)
        self.view.addSubview(tableView)
        self.tableView = tableView
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId)
        cell!.textLabel?.text = self.datas[indexPath.row]
        return cell!
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch indexPath.row {
           
            case 0:
                
                let targetVC = ContentSizeVC(nibName: "ContentSizeVC", bundle: nil)
                self.navigationController?.pushViewController(targetVC, animated: true)
            
            case 1:
            
                let targetVC = ContentOffsetVC(nibName: "ContentOffsetVC", bundle: nil)
                self.navigationController?.pushViewController(targetVC, animated: true)
            
            case 2:
            
                let targetVC = ContentInsetVC(nibName: "ContentInsetVC", bundle: nil)
                self.navigationController?.pushViewController(targetVC, animated: true)

            default:
                return
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

