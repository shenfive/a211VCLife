//
//  ViewController.swift
//  a211VCLife
//
//  Created by 申潤五 on 2020/11/21.
//

import UIKit

class ViewController: UIViewController {

    var counter:Double = 0
    var timer:Timer!
    var offset:Double = 1.0
    
    @IBOutlet weak var dir: UISegmentedControl!
    @IBOutlet weak var speed: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
        view.addSubview(newView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (timer) in
            self.rotateView(targateView: newView)
        })
    }
    
    func rotateView(targateView:UIView){
        let angle =  counter * .pi / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        targateView.center = self.view.center
        
        switch dir.selectedSegmentIndex {
        case 0:
            offset = 1
        case 1:
            offset = -1
        default:
            break
        }
        print(speed.value)
        counter += offset * Double(speed.value)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisapper")
        timer.invalidate()
        for view in self.view.subviews{
            if let button = view as? UIButton{
                print(button)
            }else{
                view.removeFromSuperview()
            }
        }

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }



}

