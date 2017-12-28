//
//  HomeVC.swift
//  NotiUPIICSA
//
//  Created by Esmeralda Angeles on 20/12/17.
//

import UIKit
import WebKit

class HomeVC: UIViewController {
    
    //MARK: VARIABLES
    var NotiURL : URL?
    var udPageSelected: Int?
    
    
    //MARK: OUTLETS

    @IBOutlet weak var wvNotiUPIICSA: WKWebView!
    
    //MARK: VIEW LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title  = "NotiUPIICSA"
        pageSelectedForUser()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: FUNCTIOS

    func pageSelectedForUser(){
    udPageSelected = UserDefaults.standard.integer(forKey: "pageSelected")
    
    switch udPageSelected!{
    case 0:
        NotiURL = URL(string: NotiUpiicsaConstants.ROOT)
        wvNotiUPIICSA.load(URLRequest(url: NotiURL!))
    case 1:
        NotiURL = URL(string: NotiUpiicsaConstants.LOGIN)
        wvNotiUPIICSA.load(URLRequest(url: NotiURL!))
    case 2:
        NotiURL = URL(string: NotiUpiicsaConstants.REGISTER)
        wvNotiUPIICSA.load(URLRequest(url: NotiURL!))
    default:
        NotiURL = URL(string: NotiUpiicsaConstants.ROOT)
        wvNotiUPIICSA.load(URLRequest(url: NotiURL!))
        }
    }
        
    //MARK: ACTIONS
    
}

//MARK: EXTENSIONS
