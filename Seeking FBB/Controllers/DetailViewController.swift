//
//  DetailViewController.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 6/19/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var name = String()
    var info = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let jsonData: Data = "AthletData.json"
//        let jsonDict = try JSONSerialization.jsonObject(with: jsonData) as? NSDictionary
        
        let athArray: [AthleteModel] = load("AthleteData.json")

        
        lbl.text = name
        img.image = image
        //infoLbl.text = id
        
        print(athArray)
        
    }
    
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }

    
    @IBAction func voteBtnPressed(_ sender: Any) {
    }
    
}
