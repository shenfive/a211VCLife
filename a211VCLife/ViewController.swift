//
//  ViewController.swift
//  a211VCLife
//
//  Created by 申潤五 on 2020/11/21.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    var timer:Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(showCounter), userInfo: nil, repeats: true)
        
        
    }
    
    
    @objc func showCounter() {
        print(counter)
        counter += 1
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisapper")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }

    
    

}

