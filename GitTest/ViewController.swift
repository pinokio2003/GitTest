//
//  ViewController.swift
//  GitTest
//
//  Created by Anatolii Kravchuk on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var tablewView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        setupTableView()
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
        5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "111"
        return cell
    }
    
    
}
