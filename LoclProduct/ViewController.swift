//
//  ViewController.swift
//  LoclProduct
//
//  Created by Federica Luraschi on 2017-10-11.
//  Copyright © 2017 Federica Luraschi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate  {

    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = Bundle.main.url(forResource: "test/index", withExtension: "html")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

