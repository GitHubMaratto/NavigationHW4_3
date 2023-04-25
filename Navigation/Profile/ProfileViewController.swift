//
//  ProfileViewController.swift
//  Navigation
//
//  Created by User on 11.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Выставляю цвет задника для вью
        view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
        view.addSubview(profileHeaderView)
        view.addSubview(profileHeaderView.colorView)
        view.addSubview(profileHeaderView.imageView)
        view.addSubview(profileHeaderView.labelText)
        view.addSubview(profileHeaderView.labelStatus)
        view.addSubview(profileHeaderView.button)
        
        profileHeaderView.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //Задаю фрейм по ширине profileHeaderView такой же как и у корневого вью
        profileHeaderView.frame.size.width = view.frame.size.width
        //Задаю фрейм по высоте profileHeaderView такой же как и у корневого вью
        profileHeaderView.frame.size.height = view.frame.size.height
    }
   
    @objc func buttonPressed() {
        let textToPrint = profileHeaderView.labelStatus.text
        print("\(String(describing: textToPrint))")
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
