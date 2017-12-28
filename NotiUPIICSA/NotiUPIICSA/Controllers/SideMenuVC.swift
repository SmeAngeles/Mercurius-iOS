//
//  SideMenuVC.swift
//  NotiUPIICSA
//
//  Created by Esmeralda Angeles on 13/12/17.
//

import UIKit
import KYDrawerController

class SideMenuVC: UIViewController {
    
    //MARK: VARIABLES
    
    var arrSideMenu:[Section]!
    
    //MARK: OUTLETS
    @IBOutlet weak var tvSideMenu: UITableView!
    
    //MARK: VIEW LIFECYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
        arrSideMenu = Section.getSections()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: FUNCTIONS
    
    //MARK: ACTIONS
    
    @IBAction func btnIngresar(_ sender: UIButton) {
        if let drawerController = self.parent as? KYDrawerController{
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "RootNavigation") as! UINavigationController
            let home = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! HomeVC
            navigationController.viewControllers = [home]
            drawerController.mainViewController = navigationController
            drawerController.setDrawerState(.closed, animated: true)
            UserDefaults.standard.set(1, forKey: "pageSelected")
        }
    }
    
    @IBAction func btnRegistrate(_ sender: UIButton) {
        if let drawerController = self.parent as? KYDrawerController{
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "RootNavigation") as! UINavigationController
            let home = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! HomeVC
            navigationController.viewControllers = [home]
            drawerController.mainViewController = navigationController
            drawerController.setDrawerState(.closed, animated: true)
            UserDefaults.standard.set(2, forKey: "pageSelected")
        }
    }
}
    

//MARK: EXTENSIONS

extension SideMenuVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSideMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let aCell:SideMenuTVCell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell", for: indexPath) as! SideMenuTVCell
        return aCell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let aCell = cell as! SideMenuTVCell
        aCell.currentSection = arrSideMenu[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            switch indexPath.row {
            case 0:
                if let drawerController = self.parent as? KYDrawerController{
                    let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "RootNavigation") as! UINavigationController
                    let home = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! HomeVC
                    navigationController.viewControllers = [home]
                    drawerController.mainViewController = navigationController
                    drawerController.setDrawerState(.closed, animated: true)
                    UserDefaults.standard.set(0, forKey: "pageSelected")
                }
            default:
                break
            }
        }
    
    }
