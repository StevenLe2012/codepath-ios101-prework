//
//  ViewController.swift
//  IOS101-PreWork
//
//  Created by Steven Le on 8/18/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
        
        func changeBackground() -> UIImage?{
            let urlString = "https://source.unsplash.com/random/600x600"
            let url = URL(string: urlString)!
            guard let data = try? Data(contentsOf: url) else {
                return nil
            }
            
            return UIImage(data: data)
        }
        
        let randomColor = changeColor()
        let randomImage = changeBackground()
        view.backgroundColor = randomColor
        changedImaged?.image = randomImage
        
    }
    
    @IBOutlet weak var changedImaged: UIImageView!
    
}

