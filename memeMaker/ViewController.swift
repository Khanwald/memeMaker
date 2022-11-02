//
//  ViewController.swift
//  memeMaker
//
//  Created by 11k on 11/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bottomSwipe: UISwipeGestureRecognizer!
    
    @IBOutlet var topSwipe: UISwipeGestureRecognizer!
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    
    var topEmoji: [String] = ["That moment when your","What the dog doin", "Bro look at the top of that"]
    var bottomEmoji: [String] = ["Cat bottom text","Monkey not racist, bottom text", "Dog bottom text"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func topTextAction(_ sender: UISegmentedControl) {
        topLabel.text = topEmoji[sender.selectedSegmentIndex]
    }
    
    @IBAction func bottomTextAction(_ sender: UISegmentedControl) {
        bottomLabel.text = bottomEmoji[sender.selectedSegmentIndex]
    }
    
    @IBAction func topSwipeAction(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed{
            topLabel.center = sender.location(in: view)
        }
    }
    @IBAction func bottomSwipeAction(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed{
            bottomLabel.center = sender.location(in: view)
        }
    }
    
}

