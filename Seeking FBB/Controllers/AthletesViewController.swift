//
//  AthletesViewController.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 6/17/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import UIKit

class AthletesViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!

    
   // let athleteArray: [ActressModel] = load("ActressData.json")
    
        let names = ["BrandiMae Akers", "Judy Booty", "Lisa Lips", "Betty Butt", "Lucy Lavender", "Greta Green", "Louise Lazy", "Suzie Samson"]
    
   // let nameInfo = [
       

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension AthletesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AthleteTableViewCell
        cell?.lbl.adjustsFontSizeToFitWidth = true
        cell?.lbl.minimumScaleFactor = 0.2
        cell?.lbl.text = names[indexPath.row]
        cell?.img.image = UIImage(named:names[indexPath.row])
        cell?.img.image = cell?.img.image?.circleMask
        cell?.infoLbl.text = names[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DetailView") as? DetailViewController
        
        vc?.image = UIImage(named:names[indexPath.row])!
        vc?.name = names[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)

       // performSegue(withIdentifier: "DetailView", sender: nil)
      //  let storyboard = UIStoryboard(name: "Main", bundle: nil)

    }
    
       
   }

extension UIImage {
    var circleMask: UIImage? {
        let square = CGSize(width: min(size.width, size.height), height: min(size.width, size.height))
        let imageView = UIImageView(frame: .init(origin: .init(x: 0, y: 0), size: square))
        imageView.contentMode = .scaleAspectFill
        imageView.image = self
        imageView.layer.cornerRadius = square.width/2
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 5
        imageView.layer.masksToBounds = true
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        imageView.layer.render(in: context)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
