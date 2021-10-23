//
//  ViewController.swift
//  TrainProject
//
//  Created by Baffoe, Joseph - FUT on 10/23/21.
//

import UIKit

class ViewController: UIViewController
{
    var fromArray:[String] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButton(_ sender: UIButton)
    {
        let urlString = "https://tsimobile.viarail.ca/data/allData.json"

        if let url = URL(string: urlString)
        {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    if let json = try? JSONSerialization.jsonObject(with: data) as? NSDictionary{
                        for item in json {
                            if let data = item.value as? NSDictionary{
                                if let from = data["from"] as? String {
//                                    print(from)
                                    self.fromArray.append(from)
                                }
                            }
                        }
                    }
                }
                print(self.fromArray)
            }.resume()
            
            
        }
        
    }
    
 

}


