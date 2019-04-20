//import UIKit
//
//class TemplateViewController: UIViewController {
//    
//    let cellId = "templateCollection"
//    
//    let templateTableView: UIView = {
//        let view = UIView()
//        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    let templateTable: UITableView =
//    {
//        let table = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: .plain)
//        table.backgroundColor = UIColor .white
//        table.translatesAutoresizingMaskIntoConstraints = false
//        table.clipsToBounds = true
//        return table
//    }()
//    
//    let generateTemplate : UIButton =
//    {
//        let button = UIButton()
//        button.frame = CGRect(x: 0, y: 0, width: 150, height: 90)
//        //        button.layer.cornerRadius = 0.25 * button.frame.width
//        button.setTitle("Generate Template", for: .normal)
//        button.backgroundColor =  colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
//        button.setTitleColor( colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor =  colorLiteral(red: 0.9372549057, green: 0.9372549057, blue: 0.9568627477, alpha: 1)
//        templateTable.delegate = self
//        templateTable.dataSource = self
//        templateTable.register(TemplateCell.self, forCellReuseIdentifier: cellId)
//        templateTable.separatorStyle = .none
//        templateTable.rowHeight = 90
//        
//        templateTableView.backgroundColor = .clear
//        templateTableView.layer.shadowColor = UIColor.darkGray.cgColor
//        templateTableView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
//        templateTableView.layer.shadowOpacity = 1.0
//        templateTableView.layer.shadowRadius = 2
//        
//        self.view.addSubview(templateTableView)
//        setupTemplateViewLayout()
//        
//        
//        self.templateTable.layer.cornerRadius = 10
//        self.templateTable.layer.masksToBounds = true
//        self.templateTableView.addSubview(templateTable)
//        setupTemplateTableLayout()
//        
//        
//        view.addSubview(generateTemplate)
//        setupGenerateTemplateLayout()
//        generateTemplate.addTarget(self, action: #selector(didClickGenerateTemplate), for: .touchUpInside)
//        generateTemplate.centerXAnchor.constraint(equalTo: templateTable.centerXAnchor).isActive = true
//        
//    }
//    
//    //    // MARK:- Handlers
//    //
//    @objc private func didClickGenerateTemplate()
//    {
//        //        a4 = A4TemplateViewController()
//        //        self.present(a4!, animated: true)
//    }
//    
//    private func setupGenerateTemplateLayout()
//    {
//        generateTemplate.topAnchor.constraint(equalTo: templateTableView.bottomAnchor, constant: 20).isActive = true
//        generateTemplate.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
//        generateTemplate.widthAnchor.constraint(equalToConstant: 250).isActive = true
//        generateTemplate.heightAnchor.constraint(equalToConstant: 125).isActive = true
//    }
//    
//    
//    private func setupTemplateViewLayout()
//    {
//        
//        //shapeCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        //shapeCollection.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        self.templateTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
//        self.templateTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
//        self.templateTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 70).isActive = true
//        self.templateTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -70).isActive = true
//    }
//    
//    private func setupTemplateTableLayout()
//    {
//        
//        //shapeCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        //shapeCollection.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        self.templateTable.topAnchor.constraint(equalTo: self.templateTableView.topAnchor, constant: 0).isActive = true
//        self.templateTable.bottomAnchor.constraint(equalTo: self.templateTableView.bottomAnchor, constant: 0).isActive = true
//        self.templateTable.leftAnchor.constraint(equalTo: self.templateTableView.leftAnchor, constant: 0).isActive = true
//        self.templateTable.rightAnchor.constraint(equalTo: self.templateTableView.rightAnchor, constant: 0).isActive = true
//    }
//    
//    @objc func textEntered(textField: UITextField)
//    {
//        let cellIndexPath = templateTable.indexPath(for: textField.superview! as! TemplateCell)
//        let cell = templateTable.cellForRow(at: cellIndexPath!) as! TemplateCell
//        TemplateViewController.dataDict[cell.templateLabel.text!] = cell.templateTextField.text!
//        cell.templateLabel.text = cell.templateLabel.text!
//        cell.templateTextField.isHidden = true
//        cell.templateTextLabel.isHidden = false
//    }
//}
//
//
//
//extension TemplateViewController: UITableViewDelegate, UITableViewDataSource{
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 14
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let  cell = TemplateCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellId) as TemplateCell
//        let templateItem = templateItems(rawValue: indexPath.row)
//        cell.templateLabel.text = templateItem?.description
//        cell.templateTextField.delegate = self
//        cell.templateTextField.addTarget(self, action: #selector(textEntered), for: .editingDidEnd)
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        templateTable.deselectRow(at: indexPath, animated: true)
//    }
//}
//
//extension TemplateViewController: UITextFieldDelegate {
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//}
//
//class TemplateCell : UITableViewCell {
//    
//    let templateLabel : UILabel = {
//        let label = UILabel()
//        label.font = UIFont(name: "Avenir", size: 20)
//        return label
//    }()
//    
//    let templateTextField : UITextField! = {
//        let textField = UITextField()
//        textField.textColor = .black
//        textField.font = UIFont(name: "Avenir", size: 20)
//        textField.backgroundColor =  colorLiteral(red: 0.9568627451, green: 0.864215358, blue: 0.7421047615, alpha: 1)
//        return textField
//    }()
//    
//    let templateTextLabel : UITextField! = {
//        let textField = UITextField()
//        textField.textColor = .black
//        textField.font = UIFont(name: "Avenir", size: 20)
//        textField.backgroundColor =  colorLiteral(red: 0.9568627451, green: 0.864215358, blue: 0.7421047615, alpha: 1)
//        textField.isHidden = true
//        return textField
//        
//    }()
//    
//    //MARK: - Init
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        backgroundColor =  colorLiteral(red: 0.8138778329, green: 0.577778789, blue: 0.3807556494, alpha: 1)
//        addSubview(templateLabel)
//        addSubview(templateTextField)
//        templateLabel.translatesAutoresizingMaskIntoConstraints = false
//        templateLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        templateLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
//        templateLabel.rightAnchor.constraint(equalTo: templateTextField.leftAnchor , constant: -10).isActive = true
//        templateLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        
//        
//        templateTextField.translatesAutoresizingMaskIntoConstraints = false
//        templateTextField.leftAnchor.constraint(equalTo: templateLabel.rightAnchor, constant: 5).isActive = true
//        templateTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
//        templateTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        templateTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        templateTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        
//        if templateTextLabel.isHidden == false {
//            templateTextLabel.translatesAutoresizingMaskIntoConstraints = false
//            templateTextLabel.leftAnchor.constraint(equalTo: templateLabel.rightAnchor, constant: 5).isActive = true
//            templateTextLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
//            templateTextLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//            templateTextLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
//            templateTextLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        }
//        
//    }
//    
//    required init?(coder aDecoder: NSCoder)
//    {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
