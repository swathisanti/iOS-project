//
//  phone.swift
//  EducationiOS
//
//  Created by swathi santi on 2017-07-25.
//  Copyright © 2017 MoxDroid. All rights reserved.
//

import Foundation
class Iphone{
    var pid : Int
    var productname :  String
    var quantity : Int
    init(){
        self.pid = 0
        self.productname = ""
        self.quantity = 0
    }
    
    func listofIphone() ->[Iphone]{
        var arrayofiphone = [Iphone]()
        let iphoneobj1 = Iphone()
        iphoneobj1.pid = 1
        iphoneobj1.productname  = "Iphone"
        iphoneobj1.quantity = 2
        arrayofiphone.append(iphoneobj1)
        return arrayofiphone
    }
}
