//
//  ViewController.swift
//  Emoji Dicionary
//
//  Created by Lewis Donkersley on 2017-11-16.
//  Copyright © 2017 Brandon Bezanson. All rights reserved.
// 

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var brandonTableview: UITableView!
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        brandonTableview.dataSource = self
        brandonTableview.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiIcon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefenitionViewController
        defVC.emoji = sender as! Emoji
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiIcon = "❤️"
        emoji1.releaseDate = 2010
        emoji1.category = "Objects"
        emoji1.defenition = "A red heart"
        
        let emoji2 = Emoji()
        emoji2.emojiIcon = "😍"
        emoji2.releaseDate = 2011
        emoji2.category = "Smileys"
        emoji2.defenition = "A smiley face with hearts for eyes"
        
        let emoji3 = Emoji()
        emoji3.emojiIcon = "😘"
        emoji3.releaseDate = 2012
        emoji3.category = "Smileys"
        emoji3.defenition = "A smiley face blowing a kiss"
        
        let emoji4 = Emoji()
        emoji4.emojiIcon = "👽"
        emoji4.releaseDate = 2013
        emoji4.category = "Smileys"
        emoji4.defenition = "An alien smiley face"
        
        let emoji5 = Emoji()
        emoji5.emojiIcon = "🐶"
        emoji5.releaseDate = 2014
        emoji5.category = "Animals"
        emoji5.defenition = "A dog"
        
        let emoji6 = Emoji()
        emoji6.emojiIcon = "⛄️"
        emoji6.releaseDate = 2015
        emoji6.category = "Objects"
        emoji6.defenition = "A snowman"
        
        return  [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

