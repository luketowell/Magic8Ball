//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Luke Towell on 23/02/2018.
//  Copyright © 2018 Luke Towell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImage: UIImageView!
    
    let ballArray : [String] = ["ball1","ball2","ball3","ball4","ball5"]
    var randomImageIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        ballSelect()
    }
    
    override func motionEnded(_ motion: UIEventSubtype,
                     with event: UIEvent?){
        ballSelect()
    }
    
    func ballSelect(){
        randomImageIndex = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomImageIndex])
        
    }
    
    
    
}

