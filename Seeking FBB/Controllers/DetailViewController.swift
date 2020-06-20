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
    var infoDetail = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var athData: Data!
        
        //let jsonData: Data = athArray
        //let jsonDict = try JSONSerialization.jsonObject(with: jsonData) as? NSDictionary
        
        lbl.text = name
        img.image = image
        infoLbl.text = infoDetail
       
        
       // athData = readLocalFile(forName: "data")
        
        //info = print(athData)
        //infoLbl.text = info
        
//        if let localData = self.readLocalFile(forName: "AthleteData") {
//            self.parse(jsonData: localData)
//        }
        
       
        
        
        
        
    }
    
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
    
    func parse(jsonData: Data) {
        do {
            let decodedData = try JSONDecoder().decode(AthleteModel.self,
                                                       from: jsonData)
            print("ID: ", decodedData.id)
            print("Name: ", decodedData.name)
            print("Date of Birth: ", decodedData.dateOfBirth)
            print("State: ", decodedData.state)
            print("City: ", decodedData.city)
            print("Image Name: ", decodedData.imageName)
            print("Is Favorite: ", decodedData.isFavorite)
            print("===================================")
            
        } catch {
            print("decode error")
        }
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
