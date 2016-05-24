//
//  ViewController.swift
//  multiplier
//
//  Created by Nivelate Online on 5/23/16.
//  Copyright © 2016 Agliberto Llamas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var multiple = 0
    var addedMultiple = 0
    var total = 0
    var runTimes = 0

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multipleText: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addtoaddLbl: UILabel!
    @IBOutlet weak var addingNumsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(sender: AnyObject) {
       
        if multipleText.text != nil && multipleText != ""{
        
        logo.hidden = true
        playBtn.hidden = true
        multipleText.hidden = true
        addBtn.hidden = false
        addtoaddLbl.hidden = false
        addingNumsLbl.hidden = true
        
        multiple = Int(multipleText.text!)!
    
        }
    }

    @IBAction func startAdding(sender: AnyObject) {
        
        logo.hidden = true
        playBtn.hidden = true
        multipleText.hidden = true
        addBtn.hidden = false
        addtoaddLbl.hidden = true
        addingNumsLbl.hidden = false
        
        updateMultiplier()
    }
    
    func updateMultiplier() {
        
        runTimes += 1
        
        if runTimes <= 10 {
            
            total = addedMultiple + multiple
            
            addingNumsLbl.text = "\(addedMultiple) + \(multiple) = \(total)"
            
            addedMultiple = total
            
            
        } else {
            
            restart()
            
        }
        
    }
    
    func restart () {
        
        logo.hidden = false
        playBtn.hidden = false
        multipleText.hidden = false
        addBtn.hidden = true
        addtoaddLbl.hidden = true
        addingNumsLbl.hidden = true
        
        multipleText.text = ""
        
        multiple = 0
        addedMultiple = 0
        total = 0
        runTimes = 0
    }

}

