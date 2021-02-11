//
//  AlertViewScore.swift
//  AskMeFootball
//
//  Created by Yakup Demir on 5.01.2021.
//

import Foundation
import UIKit

class ScoreAlertView:UIView{
    @IBOutlet var parentView: UIView!
    
    @IBOutlet weak var alertView: UIView!
    
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var whichTeamScoreLabel: UILabel!
    @IBOutlet weak var quizScoreLabel: UILabel!
    
    @IBOutlet weak var whoAmIScoreLabel: UILabel!
    static let instance = ScoreAlertView()
    override init(frame:CGRect){
        super.init(frame: frame)
        
        Bundle.main.loadNibNamed("ScoreAlertView", owner: self, options: nil)
        Inıt()
    }
    
     required init?(coder: NSCoder) {
        fatalError("HATA")
    }
    private func Inıt(){
        
        
        alertView.layer.cornerRadius = 10
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        parentView.autoresizingMask = [.flexibleHeight ,.flexibleWidth]
    }
    
    func ShowAlert(quizScore:String,whichScore:String,whoScore:String){
        quizScoreLabel.text = quizScore
        whichTeamScoreLabel.text = whichScore
        whoAmIScoreLabel.text = whoScore
        
        doneButton.setTitle("Kapat", for: .normal)
        UIApplication.shared.keyWindow?.addSubview(parentView)
        
    }
    @IBAction func onClick(_ sender: Any) {
        parentView.removeFromSuperview()
    }
}
