//
//  LoginVC.swift
//  TabBarControllerPractice2
//
//  Created by Dat, Dinh Tien on 27/09/2022.
//

import UIKit

class LoginVC: UIViewController {

    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
       // SceneDelegate.window?.rootViewController = SecondVC()
        
       
        
    }


    @IBAction func btnLogin(_ sender: Any) {
        if username.text == "admin", password.text == "admin"
        {
            //Explore
            let exploreVC = ExploreVC()
            let exploreNavi = UINavigationController(rootViewController: exploreVC)
            exploreNavi.title = "Explore"
            exploreNavi.tabBarItem.image = UIImage(systemName: "lasso.and.sparkles")
            
             //Setting
            let settingsVC = SettingsVC()
            let settingsNavi = UINavigationController(rootViewController: settingsVC)
            settingsNavi.title = "Setting"
            settingsNavi.tabBarItem.image = UIImage(systemName: "gearshape")

             //Profile
            let profileVC = ProfileVC()
            let profileNavi = UINavigationController(rootViewController: profileVC)
            profileNavi.title = "Profile"
            profileNavi.tabBarItem.image = UIImage(systemName: "person")

             //Profile
            let feedVC = FeedVC()
            let feedNavi = UINavigationController(rootViewController: feedVC)
            feedNavi.title = "Feed"
            feedNavi.tabBarItem.image = UIImage(systemName: "doc.text")
            
            let tabbarController = UITabBarController()
            tabbarController.viewControllers = [feedNavi, exploreNavi, profileNavi, settingsNavi]
            view.window?.rootViewController = tabbarController
        }
        else
        {
            //
            errorLabel.text = "Please try again.."
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
