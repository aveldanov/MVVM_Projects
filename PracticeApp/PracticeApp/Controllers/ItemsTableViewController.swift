//
//  ItemsTableViewController.swift
//  PracticeApp
//
//  Created by Veldanov, Anton on 4/17/21.
//

import UIKit

class ItemsTableViewController: UITableViewController {
    
    private var itemsExternal : [Item]!
    private var dataLoaded: Bool!
    
    let url = URL(string: "https://api.github.com/users/intuit/repos")!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WebService().loadItems(url: url) { (items) in
            print(items)

            if let items = items{
                
                self.itemsExternal = items
                self.dataLoaded = true

                
                
            }else{
                self.dataLoaded = false
                print("NO DATA LOADED!!")
            }
            
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        
        tableView.accessibilityIdentifier = "table"
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        print(self.itemsExternal)

        return itemsExternal == nil ? 1 : itemsExternal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ItemTableViewCell else {

            fatalError("Fatal Error: cell not found")
        }
        
        print("GOOOOOOOOOD")
        guard dataLoaded == true else {
            cell.nameLabel.text = "Error"
            return cell
        }
        cell.accessibilityIdentifier = "cell\(indexPath.row)"

        cell.nameLabel.text = itemsExternal![indexPath.row].name
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: - TableView delegate methods

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      performSegue(withIdentifier: "goToDetails", sender: self)
      
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let destinationVC = segue.destination as! DetailViewController
      // indexPath for selected row
      if let indexPath = tableView.indexPathForSelectedRow{
        print(itemsExternal[indexPath.row].name)
        
        destinationVC.nameSelected = itemsExternal![indexPath.row].name
        destinationVC.idSelected = itemsExternal[indexPath.row].id
        destinationVC.licenseSelected = itemsExternal[indexPath.row].license?.key
        destinationVC.linkSelected = itemsExternal[indexPath.row].owner?.received_events_url
      }
    }
    
    
}
