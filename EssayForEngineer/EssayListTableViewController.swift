//
//  EssayListTableViewController.swift
//  EssayForEngineer
//
//  Created by Takayuki Sei on 2016/12/25.
//  Copyright © 2016年 Takayuki Sei. All rights reserved.
//

import UIKit
import SafariServices

class EssayListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var essayURLString: String? = nil
        switch indexPath.row {
        case 0:
            essayURLString = "http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4"
        case 1:
            essayURLString = "http://xn--97-273ae6a4irb6e2h2ia0cn0g4a2txf4ah5wo4af612j.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4"
        case 2:
            essayURLString = "http://xn--97-273ae6a4irb6e2hxjpb5etb3nqtgfpmg22065a.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4"
       default:
            break
        }
        
        
        guard let urlString = essayURLString, let url = URL(string: urlString) else {
            return;
        }
        
        let svc = SFSafariViewController(url: url)
        self.present(svc, animated: true, completion: nil)
    }
}
