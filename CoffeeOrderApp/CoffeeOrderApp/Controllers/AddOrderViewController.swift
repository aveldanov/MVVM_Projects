//
//  AddOrderViewController.swift
//  CoffeeOrderApp
//
//  Created by Veldanov, Anton on 9/17/20.
//

import UIKit

class AddOrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var viewModel = AddCoffeeOrderViewModel()
    private var coffeeSizesSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        coffeeSizesSegmentedControl = UISegmentedControl(items: viewModel.sizes)
        coffeeSizesSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(coffeeSizesSegmentedControl)
        
        coffeeSizesSegmentedControl.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 20).isActive = true
        coffeeSizesSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeOrderTypeTableViewCell", for: indexPath)
        cell.textLabel?.text = viewModel.types[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none

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
