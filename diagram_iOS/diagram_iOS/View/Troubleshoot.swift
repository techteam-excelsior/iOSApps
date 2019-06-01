//
//  Troubleshoot.swift
//  diagram_iOS
//
//  Created by Gaurav Pai on 31/05/19.
//  Copyright © 2019 Gaurav Pai. All rights reserved.
//

import UIKit

class Troubleshoot: UIButton {

    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        setTitle("TroubleShoot Off", for: .normal)
        addTarget(self, action: #selector(didClickButton), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didClickButton(){
        activateButton(bool: !isOn)
    }
    
    func activateButton(bool: Bool){
        let color = bool ? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) : #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        let title = bool ? "TroubleShoot On" : "TroubleShoot Off"
    }
    
}
