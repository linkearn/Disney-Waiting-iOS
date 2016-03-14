//
//  ViewController.swift
//  Disney-Waiting-iOS
//
//  Created by 大井光太郎 on 2016/03/15.
//  Copyright © 2016年 大井光太郎. All rights reserved.
//

import UIKit
import SafariServices
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    private var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showTDL() {
        let url = "http://info.tokyodisneyresort.jp/s/gps/tdl_index.html?nextUrl=http://info.tokyodisneyresort.jp/rt/s/realtime/tdl_attraction.html&lat=35.631238&lng=139.882390"
        openSafariViewController(url)
    }
    
    @IBAction func showTDS() {
        let url = "http://info.tokyodisneyresort.jp/s/gps/tds_index.html?nextUrl=http://info.tokyodisneyresort.jp/rt/s/realtime/tds_attraction.html&lat=35.631238&lng=139.882390"
        openSafariViewController(url)
    }
    
    func openSafariViewController(url: String) {
        if let websiteUrl = NSURL(string: url) {
            let safariViewController = SFSafariViewController(URL: websiteUrl)
            safariViewController.delegate = self
            presentViewController(safariViewController, animated: true, completion: nil)
        }
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("close sfsv")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}