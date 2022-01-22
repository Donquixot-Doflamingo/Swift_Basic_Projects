//
//  ViewController.swift
//  stopWatch
//
//  Created by harsh Khandelwal on 16/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    var hours : Int = 0
    var minutes : Int = 0
    var seconds : Int = 0
    var miliSeconds : Int = 0
    
    var timer : Timer?
    var isPlaying : Bool = false
    

    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var hourBarLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var miliSecondsLabel: UILabel!
    
    @IBOutlet weak var startBut: UIButton!
    @IBOutlet weak var stopBut: UIButton!
    @IBOutlet weak var resumeBut: UIButton!
    @IBOutlet weak var restartBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
        secondsLabel.text = String(seconds)
        // Do any additional setup after loading the view.
        resumeBut.isHidden = true
        restartBut.isHidden = true
        hourLabel.isHidden = true
        hourBarLabel.isHidden = true
    }
    

    @objc func count(){
        miliSeconds = miliSeconds + 1
        
        if miliSeconds == 100 {
            seconds = seconds + 1
            miliSeconds = 0
        }
        
        if seconds == 60 {
            minutes = minutes + 1
            miliSeconds = 0
            seconds = 0
        }
        
        if minutes == 60 {
            hours = hours + 1
            minutes = 0
            seconds = 0
            miliSeconds = 0
            hourLabel.isHidden = false
            hourBarLabel.isHidden = false
        }
        
        if hours == 24 {
            timer?.invalidate()
        }
        miliSecondsLabel.text = "\(miliSeconds)"
        secondsLabel.text = seconds == 0 ?  "0\(seconds)" : "\(seconds)"
        minutesLabel.text = minutes == 0 ? "0\(minutes)" : "\(minutes)"
        hourLabel.text = hours == 0 ? "0\(hours)" : "\(hours)"
        
    }

    @IBAction func startButton(_ sender: UIButton) {
        startBut.isHidden = true
        
        if(isPlaying) {
                return
            }
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(count), userInfo: nil, repeats: true)
            isPlaying = true
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        resumeBut.isHidden = false
        restartBut.isHidden = false
        
        timer!.invalidate()
        isPlaying = false
    }
    
    @IBAction func resumeButton(_ sender: UIButton) {
        restartBut.isHidden = true
        startBut.isHidden = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(count), userInfo: nil, repeats: true)
        isPlaying = true
        
    }
    
    @IBAction func restartButton(_ sender: UIButton) {
        startBut.isHidden = false
        resumeBut.isHidden = true
        restartBut.isHidden = true
        
        
        timer!.invalidate()
        isPlaying = false
        
        miliSeconds = 0
        seconds = 0
        minutes = 0
        hours = 0
        
        miliSecondsLabel.text = "00"
        secondsLabel.text = "00"
        minutesLabel.text = "00"
        hourLabel.text = "00"
        secondsLabel.text = String(seconds)
    }
    
}

