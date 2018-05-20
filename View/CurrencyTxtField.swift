//
//  CurrencyTxtField.swift
//  Window-shipper
//
//  Created by Ahmed on 9/4/1439 AH.
//  Copyright © 1439 AH Steph_saber. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTxtField: UITextField {


    override func draw(_ rect: CGRect) {
        //  size of shape
        let size:CGFloat = 20
        // place of shape
        let currencyLbl = UILabel(frame:CGRect(x: 5, y: (frame.size.height/2) - size/2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 0.8893428873)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLbl.layer.cornerRadius = 5.0
        
        clipsToBounds = true
        
        
        let formatter = NumberFormatter() // Converts between numeric values and their textual representations.
        formatter.locale = .current  // locale = reciver   >>>>> current = A locale representing the user's region settings at the time the property is read.
        formatter.numberStyle = .currency  // number Style =  used by reciver >>>> currency = specific a currency style like  $ .
        currencyLbl.text = formatter.currencySymbol // currency symbol  = used as alocal currency symbol
        addSubview(currencyLbl)
    }
    
    
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
 
        
        
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.2821966066)
        textAlignment = .center
        layer.cornerRadius = 5.0
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}

