//
//  ViewController.swift
//  Gesture in iOS
//
//  Created by alumno on 3/9/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tipo:String!
    
    @IBOutlet weak var vwdemo: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipo {
        case "UITapGestureRecognizer":
            
            let TapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        TapGestureRecognizer.numberOfTapsRequired = 2
            vwdemo.addGestureRecognizer(TapGestureRecognizer)
            
        default:
        print("defalut")
        }
        
        
        //UIPinchGestureRecognizer
        //UIRotationGestureRecognizer
        //UISwipeGestureRecognizer
        //UIPanGestureRecognizer
        //UIScreenEdgePanGestureRecognizer
        //UILongPressGestureRecognizer
     
        print(tipo)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tap(){
        print("Tap")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

