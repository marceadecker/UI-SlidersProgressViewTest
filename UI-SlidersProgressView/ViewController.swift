//
//  ViewController.swift
//  UI-SlidersProgressView
//
//  Created by Marcea Decker on 2/17/15.
//  Copyright (c) 2015 md. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTimer = NSTimer()

    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myProgView: UIProgressView!
    
    @IBAction func myButtonPressed(sender: UIButton) {
        myTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("myFunction"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButton(sender: UIButton) {
        
        myTimer.invalidate()
    }
    
    func myFunction(){
        myProgView.progress = myProgView.progress + 0.1
        myLabel.text = "progress: \(myProgView.progress)"
    }
    
    @IBAction func sliderMoved(sender: UISlider) {
        println("slider is at value \(sender.value)")
        
        myProgView.progress = sender.value
        myLabel.text = "progress: \(myProgView.progress)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myProgView.progress = 0.0
        myLabel.text = "progress: \(myProgView.progress)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

