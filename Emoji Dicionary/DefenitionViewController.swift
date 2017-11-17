//
//  DefenitionViewController.swift
//  Emoji Dicionary
//
//  Created by Lewis Donkersley on 2017-11-16.
//  Copyright © 2017 Brandon Bezanson. All rights reserved.
//

import UIKit

class DefenitionViewController: UIViewController {
    
    @IBOutlet weak var defenitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "❤️" {
          defenitionLabel.text = "This is a red heart emoji"
        }
        if emoji == "😍" {
            defenitionLabel.text = "This is an I love you emoji"
        }
        if emoji == "😘" {
            defenitionLabel.text = "This is a kiss emoji"
        }
        if emoji == "👽" {
            defenitionLabel.text = "This is an alien emoji"
        }
        if emoji == "🐶" {
            defenitionLabel.text = "This is a dog emoji"
        }
        if emoji == "⛄️" {
            defenitionLabel.text = "This is a snowman emoji"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
