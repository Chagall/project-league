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
                firstCardImageView.image = UIImage(named: "aatrox.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 2:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "ahri.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 3:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "akali.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 4:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "alistar.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 5:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "amumu.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 6:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "anivia.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break	
			case 7:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "annie.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 8:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "ashe.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 9:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "aurelion_sol.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 10:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "azir.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 11:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "bard.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 12:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "blitzcrank.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 13:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "brand.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 14:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "braum.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 15:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "caitlyn.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 16:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "cassiopeia.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 17:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "cho_gath.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 18:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "corki.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 19:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "darius.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 20:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "diana.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            default:
                firstCardName.text = card.name
                firstCardImageView.image = UIImage(named: "teemo.jpg")
                firstCardFrameImageView.image = UIImage(named: "challenger_frame.png")
        }
    }
    
    func changeSecondCardImage(card:Card) {
        switch card.id {
            case 1:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "aatrox.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 2:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "ahri.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 3:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "akali.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 4:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "alistar.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            case 5:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "amumu.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 6:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "anivia.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break	
			case 7:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "annie.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 8:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "ashe.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 9:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "aurelion_sol.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 10:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "azir.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 11:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "bard.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 12:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "blitzcrank.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 13:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "brand.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 14:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "braum.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 15:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "caitlyn.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 16:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "cassiopeia.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 17:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "cho_gath.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 18:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "corki.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 19:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "darius.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
			case 20:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "diana.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
                break
            default:
                secondCardName.text = card.name
                secondCardImageView.image = UIImage(named: "teemo.jpg")
                secondCardFrameImageView.image = UIImage(named: "challenger_frame.png")
        }
    }

}

