//
//  NotiUpiicsaConstants.swift
//  NotiUPIICSA
//
//  Created by Esmeralda Angeles on 21/12/17.
//

import UIKit

struct  NotiUpiicsaConstants{
    
    // pageUserSelected =  0  = ROOT
    // pageUserSelected =  1  = LOGIN
    // pageUserSelected =  2  = EDITOR
    // pageUserSelected =  3  = LOGOUT
    // pageUserSelected =  4  = REGISTER
    
    static var pageUserSelected: Int = 0;
    
    static let ROOT = "http://m.notiupiicsa.com";
    static let LOGIN = ROOT+"/login.php";
    static let EDITOR = ROOT+"/editor.php";
    static let LOGOUT = ROOT+"/logout.php";
    static let REGISTER = ROOT+"/register.php";
    
}
