//
//  Wage.swift
//  Window-shipper
//
//  Created by Ahmed on 9/4/1439 AH.
//  Copyright © 1439 AH Steph_saber. All rights reserved.
//

import Foundation
class Wage{
    
    class func getHours(forWage wage: Double ,andPrice price : Double)->Int{
         print("houre \(Int(ceil(price/wage)))")
        return Int(ceil(price/wage))
       
    }
}
