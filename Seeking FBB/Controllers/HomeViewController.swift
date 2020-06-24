//
//  HomeViewController.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 5/31/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var conversationBtn: UIButton!
    
    private let fbbLogoContainerView: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.init(named: "white")
        let logoImageView = UIImageView(image: #imageLiteral(resourceName: "playstore"))
        logoImageView.contentMode = .scaleAspectFill
        container.addSubview(logoImageView)
        logoImageView.anchor(width: 200, height: 50)
        logoImageView.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        return container
    }()
    
    private let fbbInfoContainerView: UIView = {
           let container = UIView()
           container.backgroundColor = UIColor.init(named: "white")
           let infoLabelView = UILabel()
        infoLabelView.lineBreakMode = .byWordWrapping
        //infoLabelView.adjustsFontSizeToFitWidth = true
        infoLabelView.font = .boldSystemFont(ofSize: 18)
        infoLabelView.text = "Seeking FBB is your one-stop solution to \n connect with and support your favorite female \n athlets."
          // logoImageView.contentMode = .scaleAspectFill
           container.addSubview(infoLabelView)
           infoLabelView.anchor(width: 200, height: 500)
           infoLabelView.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
           infoLabelView.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
           return container
       }()
    
    private let athLabelContainerView: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.init(named: "white")
        let athLabelImageView = UIImageView(image: #imageLiteral(resourceName: "3462f560-145f-11e9-8a77-31ae6179dc84"))
        athLabelImageView.contentMode = .scaleAspectFill
        container.addSubview(athLabelImageView)
        athLabelImageView.anchor(paddingTop: 20, width: 50, height: 20)
        return container
    }()
    
    private let connWallLabelContainerView: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.init(named: "white")
        let connWallLabelImageView = UIImageView(image: #imageLiteral(resourceName: "94cfd2c0-145e-11e9-8a77-31ae6179dc84"))
        connWallLabelImageView.contentMode = .scaleAspectFill
        container.addSubview(connWallLabelImageView)
        connWallLabelImageView.anchor(paddingTop: 20, width: 50, height: 20)
        return container
    }()
    
    private let tellUsLabelContainerView: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.init(named: "white")
        let tellUsLabelImageView = UIImageView(image: #imageLiteral(resourceName: "user"))
        tellUsLabelImageView.contentMode = .scaleAspectFill
        container.addSubview(tellUsLabelImageView)
        tellUsLabelImageView.anchor(paddingTop: 20, width: 50, height: 20)
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.addSubview(fbbLogoContainerView)
//        fbbLogoContainerView.anchor(top: view.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, height: 130 + UIApplication.shared.statusBarFrame.height
//        )
//        view.addSubview(fbbInfoContainerView)
//        fbbInfoContainerView.anchor(top: fbbLogoContainerView.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20)
//        
//        setupMenu()
        
    }
    
    private func setupMenu() {
        let stackView = UIStackView(arrangedSubviews: [athLabelContainerView, connWallLabelContainerView, tellUsLabelContainerView])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
               stackView.anchor(top: fbbInfoContainerView.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingRight: 40, height: 200)
        
            }
    
    
    /*
     // MARK: - Navigation
     
     
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "showList" {
//      if let indexPath = tableView.indexPathForSelectedRow {
//        let items = dataManager.items[indexPath.row]
//
//        guard let controller = segue.destination as? ListTableViewController else {
//          return
//        }
//        controller.item = items
//        self.navigationController?.pushViewController(controller, animated: true)
//      }
//    }}
//    
   
    @objc private func buttonTapAction(sender: UIButton!) {
          print("Connection was pressed")
          performSegue(withIdentifier: "Conversations", sender: nil)
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let vc = storyboard.instantiateViewController(withIdentifier: "Conversations")
          self.navigationController?.pushViewController(vc, animated: true)
      }
    
    @IBAction func conversationBtnPressed(_ sender: Any) {
        conversationBtn.addTarget(self, action: #selector((buttonTapAction)), for: UIControl.Event.touchUpInside)

    }
}
