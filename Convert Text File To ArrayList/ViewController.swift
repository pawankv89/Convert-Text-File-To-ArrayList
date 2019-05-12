//
//  ViewController.swift
//  Convert Text File To ArrayList
//
//  Created by Pawan kumar on 15/04/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var countryList: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        countryList = []
        
        tableview.dataSource = self
        tableview.delegate = self
        tableview.estimatedRowHeight = 80
        tableview.rowHeight = UITableView.automaticDimension
        tableview.register(UINib(nibName: CountryTableViewCell.identifire, bundle: nil), forCellReuseIdentifier: CountryTableViewCell.identifire)
        
        loadListOfCountries()
    }

    // MARK: Custom functions
    
    func loadListOfCountries() {
        
        countryList = []
        
        // Specify the path to the countries list file.
        let pathToFile = Bundle.main.path(forResource: "countries", ofType: "txt")
        
        if let path = pathToFile {
            // Load the file contents as a string.
            let countriesString = try! String(contentsOfFile: path, encoding: String.Encoding.utf8)
            
            // Append the countries from the string to the dataArray array by breaking them using the line change character.
            countryList = countriesString.components(separatedBy: "\n")
            

            //Print Array List
            print("countryList:-\(countryList)")
            
            self.tableview.reloadData()
        }
    }

}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: CountryTableViewCell.identifire, for: indexPath) as! CountryTableViewCell
        
        let country = countryList[indexPath.row]
        cell.titleLabel.text = country
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
