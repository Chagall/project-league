//
//  ViewController.swift
//  Project League
//
//  Created by Fabio Pereira on 19/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardName: UILabel!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var firstCardFrameImageView: UIImageView!
    
    @IBOutlet weak var secondCardName: UILabel!
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
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        (board.firstCard, board.secondCard) = board.dealCards()

        changeFirstCardImage(board.firstCard)
        changeSecondCardImage(board.secondCard)
    }
    
    func changeFirstCardImage(card:Card) {
        switch card.id {
            case 1:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "ashe")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 2:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "blitzcrank")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 3:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "annie")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 4:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "evelynn")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 5:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "dr_mundo")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            default:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "dr_mundo")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame")
        }
    }
    
    func changeSecondCardImage(card:Card) {
        switch card.id {
            case 1:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "ashe")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 2:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "blitzcrank")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 3:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "annie")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 4:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "evelynn")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            case 5:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "dr_mundo")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame")
                break
            default:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "teemo")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame")
        }
    }

}

