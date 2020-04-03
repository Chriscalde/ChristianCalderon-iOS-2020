//
//  WebServiceViewController.swift
//  iOS 2020
//
//  Created by Christian Calderón on 12/03/20.
//  Copyright © 2020 Christian Calderón. All rights reserved.
//

import UIKit
import Alamofire

class WebServiceViewController: UIViewController {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        AF.request("http://www.mocky.io/v2/5e61af6930000095004d54ed")
            .validate()
            .responseDecodable(of: [HomeElement].self) { (response) in
                guard let homeElements = response.value else {
                    return
                }
                print(homeElements[0].homeName)
//                DispatchQueue.main.async {
//                    self.homeElementsArray = homeElements
//                    self.tableView.reloadData()
//                }
        }
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
