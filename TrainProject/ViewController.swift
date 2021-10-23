//
//  ViewController.swift
//  TrainProject
//
//  Created by Baffoe, Joseph - FUT on 10/23/21.
//

import UIKit

class ViewController: UIViewController
{

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
                if let err = error
                {
                    print(err)
                    return
                }

                do
                {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [[String: Any]]
                }catch let jsonError
                {
                    print(jsonError)
                }

            }.resume()
            
            
        }
    }
    
 

}
