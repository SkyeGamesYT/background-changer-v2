//  ViewController.swift

import UIKit

class ViewController: UIViewController {
    var ticks = tickMonitor()
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func randomColor() -> UIColor {
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    let imageArray = [UIImage(named: "image1"), UIImage(named: "image2"), UIImage(named: "image3")]
    
    func randomImage() -> UIImage? {
        let randomIndex = Int(arc4random_uniform(UInt32(imageArray.count)))
        return imageArray[randomIndex]
    }
    
    
    @IBAction func startchangebutton(_ sender: UIButton) {
        
        myTimer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(increase), userInfo: nil, repeats: true)
            self.view.backgroundColor = randomColor()
        
    }
    
    @objc func increase(){
        self.ticks.tick()
        self.view.backgroundColor = randomColor()
    }
    
    
    
    }
//End of class
