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
        case "UIPinchGestureRecognizer":
            let PinchGestureRecognizer =
            UIPinchGestureRecognizer(target: self, action: #selector(pinch))
            
            PinchGestureRecognizer.scale = 2
            
         vwdemo.addGestureRecognizer(PinchGestureRecognizer)
            
        case "UIRotationGestureRecognizer" :
            
            let RotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(rotation))
            
            vwdemo.addGestureRecognizer(RotationGestureRecognizer)
        
        case "UISwipeGestureRecognizer" :
            
            let SwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        
            
        SwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.right
            SwipeGestureRecognizer.numberOfTouchesRequired = 1
            vwdemo.addGestureRecognizer(SwipeGestureRecognizer)
            
            
        default:
        print("defalut")
        }
        
    
        //
        //
        //UIPanGestureRecognizer
        //UIScreenEdgePanGestureRecognizer
        //UILongPressGestureRecognizer
     
        print(tipo)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func swipe(){
        print("swipe")
    }
    
    func rotation(sender : UIRotationGestureRecognizer){
        
        print("Rotation")
        print("Rotation : \(sender.rotation)")
        print("velocidad: \(sender.velocity)")
    }
    
    func pinch(sender:UIPinchGestureRecognizer){
        print("pinch")
        print("Scale: \(sender.scale)")
        print("velocidad: \(sender.velocity)")
    }

    func tap(){
        print("Tap")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

