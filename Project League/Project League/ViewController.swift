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
                firstCardImageView.image = UIImage(named: "ashe.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 2:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "blitzcrank.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 3:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "annie.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 4:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "evelynn.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 5:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "dr_mundo.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            default:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "dr_mundo.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
        }
    }
    
    func changeSecondCardImage(card:Card) {
        switch card.id {
            case 1:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "ashe.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 2:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "blitzcrank.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 3:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "annie.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 4:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "evelynn.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 5:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "dr_mundo.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            default:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "teemo.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
        }
    }

}

