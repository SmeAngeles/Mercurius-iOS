//
//  Section.swift
//  NotiUPIICSA
//
//  Created by Esmeralda Angeles on 13/12/17.
//

import UIKit

struct Section {
    
    var secIcon: UIImage!
    var secSection: String!
    
    static func getSections()->[Section]{
        return [Section(secIcon: UIImage(named: "ic_menu_inicio"), secSection: "Inicio"),
                    Section(secIcon: UIImage(named: "ic_menu_admon"), secSection: "Administrativo"),
                    Section(secIcon: UIImage(named: "ic_menu_direc"), secSection: "Direccion"),
                    Section(secIcon: UIImage(named: "ic_menu_academico"), secSection: "Academico"),
                     Section(secIcon: UIImage(named: "ic_menu_culture"), secSection: "Cultura"),
                     Section(secIcon: UIImage(named: "ic_menu_deportes"), secSection: "Deportes"),
                    Section(secIcon: UIImage(named: "ic_menu_salud1"), secSection: "Salud"),
                Section(secIcon: UIImage(named: "ic_menu_invest"), secSection: "Investigación")]
    }
}
