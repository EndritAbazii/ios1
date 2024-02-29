//
//  WebViewController.swift
//  Project
//
//  Created by Endrit Abazi on 25/02/24.
//  Copyright © 2024 Endrit Abazi. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let myURL = URL (string:"https://sems.uni-pr.edu") {
                 let myURLRequest = URLRequest(url:myURL)
                 webView.load(myURLRequest)
             }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
