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
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}

