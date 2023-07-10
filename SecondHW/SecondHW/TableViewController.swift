//
//  TableViewController.swift
//  SecondHW
//
//  Created by Dmitry on 02.07.2023.
//

import UIKit

final class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let data: [ListTableViewData] = [
        ListTableViewData(title: "Олег Сомойлов", image: UIImage(named: "brawl")!),
        ListTableViewData(title: "Михаил Липницкий", image: UIImage(named: "bimbo1")!),
        ListTableViewData(title: "Дарья Васильева", image: UIImage(named: "bimbo2")!),
        ListTableViewData(title: "Анна Свиридова", image: UIImage(named: "fem")!),
        ListTableViewData(title: "Аркадий Игнатьев", image: UIImage(named: "clash")!)
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as? ListTableViewCell else { return UITableViewCell() }
        cell.setUp(data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        93
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
}
