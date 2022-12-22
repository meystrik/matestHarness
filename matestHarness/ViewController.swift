//
//  ViewController.swift
//  matestHarness
//
//  Created by Meystrik, Chris on 4/28/20.
//  Copyright © 2020 C. Chris Meystrik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var mc = MAMouseControl()
    var retval: Int = 0
    
    
    
    
    @IBOutlet weak var xCoordFrom: NSTextField!
    @IBOutlet weak var yCoordFrom: NSTextField!
    @IBOutlet weak var xCoordTo: NSTextField!
    @IBOutlet weak var yCoordTo: NSTextField!
    
    @IBOutlet weak var moveToLabel: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func moveToCoord(_ sender: Any) {
        print("Button pushed for movetoCoord\n")
        moveToLabel.stringValue = "Moving from \(xCoordFrom.stringValue) : \(yCoordFrom.stringValue) to    \(xCoordTo.stringValue) : \(yCoordTo.stringValue)"
        retval = Int(mc.move(toCoordinates: xCoordFrom.intValue, andPointY: yCoordFrom.intValue))
    }
    
    @IBAction func smoothMove(_ sender: Any) {
        print("Button pushed for smoothMove\n")
        moveToLabel.stringValue = "Moving from \(xCoordFrom.stringValue) : \(yCoordFrom.stringValue) to    \(xCoordTo.stringValue) : \(yCoordTo.stringValue)"
        retval = Int(mc.moveSmoothBetweenPoints(xCoordFrom.intValue, andPointY: yCoordFrom.intValue, x2: xCoordTo.intValue, andPointY2: yCoordTo.intValue))

    }
    
    @IBAction func coodTyping(_ sender: Any) {
        moveToLabel.stringValue = "Moving from \(xCoordFrom.stringValue) : \(yCoordFrom.stringValue) to    \(xCoordTo.stringValue) : \(yCoordTo.stringValue)"
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

