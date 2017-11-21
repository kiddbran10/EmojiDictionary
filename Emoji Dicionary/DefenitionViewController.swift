//
//  DefenitionViewController.swift
//  Emoji Dicionary
//
//  Created by Lewis Donkersley on 2017-11-16.
//  Copyright © 2017 Brandon Bezanson. All rights reserved.
//

import UIKit

class DefenitionViewController: UIViewController {
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var defenitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.emojiIcon
        releaseDateLabel.text = "Release Date: \(emoji.releaseDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        defenitionLabel.text = emoji.defenition

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
