//
//  HintAlertView.swift
//  AskMeFootball
//
//  Created by Yakup Demir on 23.12.2020.
//

import Foundation
import UIKit
class HintAlertView :UIView{
   
    static let instance = HintAlertView()
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var alertView: UIView!
    override init(frame:CGRect){
        super.init(frame: frame)
        
        Bundle.main.loadNibNamed("HintAlertView", owner: self, options: nil)
        Inıt()
    }
    
     required init?(coder: NSCoder) {
        fatalError("HATA")
    }
    
    @IBAction func onClicked(_ sender: Any) {
        parentView.removeFromSuperview()
    }
    
    private func Inıt(){
        doneButton.layer.cornerRadius = 10
        
        alertView.layer.cornerRadius = 10
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        parentView.autoresizingMask = [.flexibleHeight ,.flexibleWidth]
       
    }
    
    enum AlertType{
        case hint
        case score
        case right
        case wrong
        
    }
    func showAlert(title:String,alertType:AlertType){
      
        hintLabel.text = title
        
        switch alertType {
        case .hint:
            doneButton.setTitle("Kapat", for: .normal)
            img.image = UIImage(systemName: "questionmark")
        case .score:
            doneButton.setTitle("Oyun Sayfasına dön", for: .normal)
            img.image = UIImage(named: "how-to-draw-a-cartoon-soccer-ball-clipart-images-gallery-for-free-cool-green-soccer-ball-png-2000_2000")
        case .right:
            img.image = UIImage(systemName: "checkmark")
            doneButton.setTitle("Sıradaki Soru", for: .normal)
        case .wrong:
            img.image = UIImage(systemName: "multiply")
            doneButton.setTitle("Tekrar Dene", for: .normal)
            
        }
        
        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
}
