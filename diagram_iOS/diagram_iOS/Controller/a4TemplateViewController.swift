//
//  A4TemplateViewController.swift
//  diagram_iOS
//
//  Created by Gaurav Pai on 16/04/19.
//  Copyright © 2019 Gaurav Pai. All rights reserved.
//

import UIKit

class A4TemplateViewController: UIViewController {
    static var dataDict : [String:String] = [String:String]()
    let generateTemplate : UIButton =
    {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 90)
        //        button.layer.cornerRadius = 0.25 * button.frame.width
        button.setTitle("Done", for: .normal)
        button.backgroundColor =  .blue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var notesView: UITextView! = {
        let box = UITextView()
        box.backgroundColor = .white
        box.translatesAutoresizingMaskIntoConstraints = false
        box.allowsEditingTextAttributes = true
        return box
    }()
    
    var logoImageView: UIImageView! = {
        let image = UIImageView(image: #imageLiteral(resourceName: "logo-1"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .white
        return image
    }()
    
    var rhos: UIImageView! = {
        let image = UIImageView(image: #imageLiteral(resourceName: "RoHS"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.backgroundColor = .white
        return image
    }()
    
    var ff : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Form Format"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var custName : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Customer Name: "
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var projName : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Project Name:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ipcAccCrit : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "IPC Acceptance Criteria:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var prodName : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Product Name:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var prodPartNo : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Product Part No.:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var prodRevNo : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Product Revision No.:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pfdNo : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "PDF No.:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pfdRevNo : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "PFD Rev No.:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var revDate : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Rev Date:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var intPurpose : UILabel  = {
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "Intended use/purpose/application of the product:"
        label.font = UIFont(name: "Avenir", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    var pfcField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var ffNoField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var issueNoField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var customerNameField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var projectNameField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var ipcCriteriaField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var productNameField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var productPartNoField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var productRevNoField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var pfdNoField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var pfdRevNoField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var revDateField  : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    var intendedUseField : UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont(name: "Avenir", size: 14)?.bold()
        return field
    }()
    
    
    var templateView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    let looksGood : UIButton =
    {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 90)
        //        button.layer.cornerRadius = 0.25 * button.frame.width
        button.setTitle("Looks Good", for: .normal)
        button.backgroundColor =  #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        button.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDataDict()
        view.backgroundColor = .white
        view.addSubview(templateView)
        
        self.templateView.addSubview(logoImageView)
        
        
        ff.textAlignment = .center
        self.templateView.addSubview(ff)
        
        self.templateView.addSubview(rhos)
        
        pfcField.textAlignment = .center
        pfcField.text = "Process Flow Diagram"
        self.templateView.addSubview(pfcField)
        
        self.templateView.addSubview(ffNoField)
        
        issueNoField.textAlignment = .center
        self.templateView.addSubview(issueNoField)
        
        self.templateView.addSubview(custName)
        
        self.templateView.addSubview(projName)
        
        self.templateView.addSubview(ipcAccCrit)
        ipcAccCrit.font = UIFont(name: "Avenir", size: 14)
        
        self.templateView.addSubview(intPurpose)
        
        self.templateView.addSubview(customerNameField)
        self.templateView.addSubview(projectNameField)
        self.templateView.addSubview(ipcCriteriaField)
        
        self.templateView.addSubview(prodName)
        self.templateView.addSubview(prodPartNo)
        self.templateView.addSubview(prodRevNo)
        
        self.templateView.addSubview(productNameField)
        self.templateView.addSubview(productPartNoField)
        self.templateView.addSubview(productRevNoField)
        
        self.templateView.addSubview(pfdNo)
        self.templateView.addSubview(pfdRevNo)
        self.templateView.addSubview(revDate)
        
        self.templateView.addSubview(pfdNoField)
        self.templateView.addSubview(pfdRevNoField)
        self.templateView.addSubview(revDateField)
        self.view.addSubview(generateTemplate)
        
        generateTemplate.addTarget(self, action: #selector(didClickLooksGood), for: .touchUpInside)
        
        print(self.view.frame.width)
        setupTemplateLayout()
        print(A4TemplateViewController.dataDict["FF"] ?? "")
        //view.addSubview(looksGood)
        //setupLooksGoodLayout()
        //looksGood.addTarget(self, action: #selector(didClickLooksGood), for: .touchUpInside)
        //looksGood.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    func setupTemplateLayout()
    {
        templateView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        templateView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        templateView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        templateView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        logoImageView.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        logoImageView.topAnchor.constraint(equalTo: templateView.topAnchor, constant: 0).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ff.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        ff.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 0).isActive = true
        ff.widthAnchor.constraint(equalToConstant: self.view.frame.width/2 - 20).isActive = true
        ff.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        pfcField.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        pfcField.topAnchor.constraint(equalTo: ff.bottomAnchor, constant: 0).isActive = true
        pfcField.widthAnchor.constraint(equalToConstant: self.view.frame.width/2 - 20).isActive = true
        pfcField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        rhos.leftAnchor.constraint(equalTo: ff.rightAnchor, constant: 0).isActive = true
        rhos.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 0).isActive = true
        rhos.widthAnchor.constraint(equalToConstant: 40).isActive = true
        rhos.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        ffNoField.leftAnchor.constraint(equalTo: rhos.rightAnchor, constant: 0).isActive = true
        ffNoField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 0).isActive = true
        ffNoField.widthAnchor.constraint(equalToConstant: self.view.frame.width/2 - 20).isActive = true
        ffNoField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        issueNoField.leftAnchor.constraint(equalTo: rhos.rightAnchor, constant: 0).isActive = true
        issueNoField.topAnchor.constraint(equalTo: ffNoField.bottomAnchor, constant: 0).isActive = true
        issueNoField.widthAnchor.constraint(equalToConstant: self.view.frame.width/2 - 20).isActive = true
        issueNoField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        //Column1
        custName.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        custName.topAnchor.constraint(equalTo: pfcField.bottomAnchor, constant: 0).isActive = true
        custName.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2 - 20).isActive = true
        custName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        projName.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        projName.topAnchor.constraint(equalTo: custName.bottomAnchor, constant: 0).isActive = true
        projName.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-40).isActive = true
        projName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        ipcAccCrit.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        ipcAccCrit.topAnchor.constraint(equalTo: projName.bottomAnchor, constant: 0).isActive = true
        ipcAccCrit.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2+27).isActive = true
        ipcAccCrit.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        intPurpose.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 0).isActive = true
        intPurpose.topAnchor.constraint(equalTo: ipcAccCrit.bottomAnchor, constant: 0).isActive = true
        intPurpose.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        intPurpose.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //Column 2
        customerNameField.leftAnchor.constraint(equalTo: custName.rightAnchor, constant: 0).isActive = true
        customerNameField.topAnchor.constraint(equalTo: pfcField.bottomAnchor, constant: 0).isActive = true
        customerNameField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2+20).isActive = true
        customerNameField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        projectNameField.leftAnchor.constraint(equalTo: projName.rightAnchor, constant: 0).isActive = true
        projectNameField.topAnchor.constraint(equalTo: customerNameField.bottomAnchor, constant: 0).isActive = true
        projectNameField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2+40).isActive = true
        projectNameField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        ipcCriteriaField.leftAnchor.constraint(equalTo: ipcAccCrit.rightAnchor, constant: 0).isActive = true
        ipcCriteriaField.topAnchor.constraint(equalTo: projectNameField.bottomAnchor, constant: 0).isActive = true
        ipcCriteriaField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-27).isActive = true
        ipcCriteriaField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        //Column3
        prodName.leftAnchor.constraint(equalTo: customerNameField.rightAnchor, constant: 0).isActive = true
        prodName.topAnchor.constraint(equalTo: pfcField.bottomAnchor, constant: 0).isActive = true
        prodName.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2 - 20).isActive = true
        prodName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        prodPartNo.leftAnchor.constraint(equalTo: projectNameField.rightAnchor, constant: 0).isActive = true
        prodPartNo.topAnchor.constraint(equalTo: prodName.bottomAnchor, constant: 0).isActive = true
        prodPartNo.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-15).isActive = true
        prodPartNo.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        prodRevNo.leftAnchor.constraint(equalTo: ipcCriteriaField.rightAnchor, constant: 0).isActive = true
        prodRevNo.topAnchor.constraint(equalTo: prodPartNo.bottomAnchor, constant: 0).isActive = true
        prodRevNo.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2+15).isActive = true
        prodRevNo.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //Column 4
        productNameField.leftAnchor.constraint(equalTo: prodName.rightAnchor, constant: 0).isActive = true
        productNameField.topAnchor.constraint(equalTo: rhos.bottomAnchor, constant: 0).isActive = true
        productNameField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2+20+30).isActive = true
        productNameField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        productPartNoField.leftAnchor.constraint(equalTo: prodPartNo.rightAnchor, constant: 0).isActive = true
        productPartNoField.topAnchor.constraint(equalTo: productNameField.bottomAnchor, constant: 0).isActive = true
        productPartNoField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2+15+30).isActive = true
        productPartNoField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        productRevNoField.leftAnchor.constraint(equalTo: prodRevNo.rightAnchor, constant: 0).isActive = true
        productRevNoField.topAnchor.constraint(equalTo: productPartNoField.bottomAnchor, constant: 0).isActive = true
        productRevNoField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-15+30).isActive = true
        productRevNoField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //Column 5
        pfdNo.leftAnchor.constraint(equalTo: productNameField.rightAnchor, constant: 0).isActive = true
        pfdNo.topAnchor.constraint(equalTo: issueNoField.bottomAnchor, constant: 0).isActive = true
        pfdNo.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-30).isActive = true
        pfdNo.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        pfdRevNo.leftAnchor.constraint(equalTo: productPartNoField.rightAnchor, constant: 0).isActive = true
        pfdRevNo.topAnchor.constraint(equalTo: pfdNo.bottomAnchor, constant: 0).isActive = true
        pfdRevNo.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-30).isActive = true
        pfdRevNo.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        revDate.leftAnchor.constraint(equalTo: productRevNoField.rightAnchor, constant: 0).isActive = true
        revDate.topAnchor.constraint(equalTo: pfdRevNo.bottomAnchor, constant: 0).isActive = true
        revDate.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2-30).isActive = true
        revDate.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        //Column6
        pfdNoField.leftAnchor.constraint(equalTo: pfdNo.rightAnchor, constant: 0).isActive = true
        pfdNoField.topAnchor.constraint(equalTo: issueNoField.bottomAnchor, constant: 0).isActive = true
        pfdNoField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2).isActive = true
        pfdNoField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        pfdRevNoField.leftAnchor.constraint(equalTo: pfdRevNo.rightAnchor, constant: 0).isActive = true
        pfdRevNoField.topAnchor.constraint(equalTo: pfdNoField.bottomAnchor, constant: 0).isActive = true
        pfdRevNoField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2).isActive = true
        pfdRevNoField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        revDateField.leftAnchor.constraint(equalTo: revDate.rightAnchor, constant: 0).isActive = true
        revDateField.topAnchor.constraint(equalTo: pfdRevNoField.bottomAnchor, constant: 0).isActive = true
        revDateField.widthAnchor.constraint(equalToConstant: self.view.frame.width/3/2).isActive = true
        revDateField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        generateTemplate.leftAnchor.constraint(equalTo: templateView.leftAnchor, constant: 100).isActive = true
        generateTemplate.topAnchor.constraint(equalTo: templateView.bottomAnchor, constant: 50).isActive = true
        //        generateTemplate.widthAnchor.constraint(equalToConstant: ).isActive = true
        //        generateTemplate.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    func loadDataDict(){
        
        ffNoField.text = A4TemplateViewController.dataDict["FF"] ?? ""
        issueNoField.text! = "ISSUE NO."
        issueNoField.text! += A4TemplateViewController.dataDict["Issue No."] ?? ""
        customerNameField.text! = A4TemplateViewController.dataDict["Customer Name"] ?? ""
        projectNameField.text! = A4TemplateViewController.dataDict["Project Name"] ?? ""
        ipcCriteriaField.text! = A4TemplateViewController.dataDict["IPC Acceptance Criteria"] ?? ""
        productNameField.text! = A4TemplateViewController.dataDict["Product Name"] ?? ""
        productPartNoField.text! = A4TemplateViewController.dataDict["Product Part No."] ?? ""
        productRevNoField.text! = A4TemplateViewController.dataDict["Product Revision No."] ?? ""
        pfdNoField.text! = A4TemplateViewController.dataDict["PFD No."] ?? ""
        pfdRevNoField.text! = A4TemplateViewController.dataDict["PFD Rev No."] ?? ""
        revDateField.text! = A4TemplateViewController.dataDict["Revision Date"] ?? ""
        intendedUseField.text! = A4TemplateViewController.dataDict["Intended Use"] ?? ""
    }
    
    func setupLooksGoodLayout()
    {
        looksGood.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 230).isActive = true
        looksGood.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        looksGood.widthAnchor.constraint(equalToConstant: 250).isActive = true
        looksGood.heightAnchor.constraint(equalToConstant: 125).isActive = true
    }
    
    @objc func didClickLooksGood()
    {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension UIFont {
    
    func withTraits(traits:UIFontDescriptor.SymbolicTraits...) -> UIFont {
        let descriptor = self.fontDescriptor
            .withSymbolicTraits(UIFontDescriptor.SymbolicTraits(traits))
        return UIFont(descriptor: descriptor!, size: 0)
    }
    
    func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
}

