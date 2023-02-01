//
//  ViewController.swift
//  GitTest
//
//  Created by Anatolii Kravchuk on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var tablewView = UITableView()
//MARK: - для аппенда в аррей:

    var addString: [String] = []
    let tempTimeString: String = "s"
    let tempTitleString: String = "s"
    let tempNoteString: String = "a"
    let tempLocationString: String = "s"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        addStringtoString()
        setupTableView()
    }
    
    private func addStringtoString(){
        if tempTimeString.isEmpty {print("TimeString empty")} else {addString.append(tempTimeString)}
        if tempTitleString.isEmpty {print("TitleString is empty")} else {addString.append(tempTitleString)}
        if tempNoteString.isEmpty {print("NoteString is empty")} else {addString.append(tempNoteString)}
        if tempLocationString.isEmpty {print("LocationString is empty")} else {addString.append(tempLocationString)}
        modelS.append(addString)
    }
}

private extension ViewController{
    private func setupTableView(){
        tablewView = UITableView(frame: CGRect(x: 0,
                                               y: 65,
                                               width: view.bounds.width,
                                               height: view.bounds.height) , style: .grouped)
        view.addSubview(tablewView)
        tablewView.backgroundColor = .gray
        tablewView.delegate = self
        tablewView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tablewView.dataSource = self
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        modelS.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        modelS[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = modelS[indexPath.section][indexPath.row]
        return cell
    }
    
    
}
