//
//  ViewController.swift
//  Project League
//
//  Created by Fabio Pereira on 19/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var firstCardFrameImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var secondCardFrameImageView: UIImageView!
    @IBOutlet weak var dealCardButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var leagueLogoImageView: UIImageView!
    
    var board:Board = Board()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dealCardButton.setTitle("Play", forState: UIControlState.Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        board.startGame()

        firstCardImageView.image = UIImage(named: "diana_dark_valkyrie")
        firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        secondCardImageView.image = UIImage(named: "jayce_forsaken")
        secondCardFrameImageView.image = UIImage(named: "diamond_frame")
    }
    
    func changeCardImage(cardId:Int) {
        switch cardId {
        case 1:
            firstCardImageView.image = UIImage(named: "ashe")
            firstCardFrameImageView.image = UIImage(named: "challenger_frame")
            break
        case 2:
            firstCardImageView.image = UIImage(named: "blitzcrank")
            firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        case 3:
            firstCardImageView.image = UIImage(named: "annie")
            firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        case 4:
            firstCardImageView.image = UIImage(named: "evelynn")
            firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        case 5:
            firstCardImageView.image = UIImage(named: "dr_mundo")
            firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        default:
            firstCardImageView.image = UIImage(named: "dr_mundo")
            firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        }
    }

}

