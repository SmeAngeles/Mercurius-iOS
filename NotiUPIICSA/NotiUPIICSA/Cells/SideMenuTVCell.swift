//
//  SideMenuTVCell.swift
//  NotiUPIICSA
//
//  Created by Esmeralda Angeles on 13/12/17.
//

import UIKit

class SideMenuTVCell: UITableViewCell {

    //MARK: VARIABLES
    
    var currentSection:Section?{
        didSet{
            setUpCell()
        }
    }
    
    //MARK: OUTLETS
    
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblSection: UILabel!
    
    //MARK: VIEW LIFECYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: FUNCTIONS
    
    func setUpCell(){
        guard let mySection = currentSection else{
            return
        }
        
        imgIcon.image = mySection.secIcon
        lblSection.text = mySection.secSection
    }
    
    //MARK: ACTIONS
}

//MARK: EXTENSIONS


