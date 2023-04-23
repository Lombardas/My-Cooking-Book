//
//  AboutViewController.swift
//  My Cooking Book
//
//  Created by Anastasio Del Toro Almansa on 23/04/2023.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonLinkedIn(_ sender: Any) {
        
        let url = URL(string: "https://www.linkedin.com/in/tasioalmansa/")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    @IBAction func buttonMyApps(_ sender: Any) {
        
        let url = URL(string: "https://www.linkedin.com/in/tasioalmansa/")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    @IBAction func buttonGitHub(_ sender: Any) {
        
        let url = URL(string: "https://github.com/Lombardas")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    
}
