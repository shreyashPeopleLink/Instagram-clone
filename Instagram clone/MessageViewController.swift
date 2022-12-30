//
//  MessageViewController.swift
//  Instagram clone
//
//  Created by Peoplelink on 30/12/22.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var MessageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    



}
extension MessageViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell") as? MessageTableViewCell else { return MessageTableViewCell()}
        return cell

    }
    
    
}
