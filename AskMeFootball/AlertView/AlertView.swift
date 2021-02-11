//
//  AlertView.swift
//  AskMeFootball
//
//  Created by Yakup Demir on 22.12.2020.
//

import Foundation
import UIKit
class AlertView:UIView{
        static let instance = AlertView()
    
    @IBOutlet weak var alertView: UIView!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    
    override init(frame:CGRect){
        super.init(frame: frame)
        
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
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
    
    func ShowAlert(title:String,meessage:String){
        
        doneButton.layer.cornerRadius = 10
        titleLabel.text = title
        MessageLabel.text = meessage
        doneButton.setTitle("Oyun Sayfasına Dön", for: .normal)
        
        UIApplication.shared.keyWindow?.addSubview(parentView)
        
    }
    @IBAction func onClick(_ sender: Any) {
        parentView.removeFromSuperview()
    }
}
