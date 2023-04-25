///Users/user/Desktop/ Leasons
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by User on 21.04.2023.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    //цветной вью задник
    let colorView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        
        return view
    }()
    
    //аймеджвью аватар с котом
    let imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "catwhite.jpg")
        
        return image
    }()
    //Лейбл текст
    let labelText: UILabel = {
        let label = UILabel()
        label.text = "Meow White"
        label.font =  UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        
        return label
    }()
    //Текст филд для ввода
    var textFieldStatus: UITextField = {
        var textField = UITextField()
        textField.placeholder = "Waiting for something..."
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.textColor = .gray
        
        return textField
    }()
    //Кнопка синяя
    let button: UIButton = {
        let buttonBlue = UIButton()
        buttonBlue.backgroundColor = .blue
        buttonBlue.setTitle("Show status", for: .normal)
        buttonBlue.setTitleColor(.white, for: .normal)
        
        return buttonBlue
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Задаю фрейм для colorView
        colorView.frame = CGRect(x: 0, y: 80, width: ProfileViewController().view.frame.size.width, height: ProfileViewController().view.frame.size.height)
        
        //Задаю фрейм для imageView
        imageView.frame = CGRect(x: 16, y: 96, width: 150, height: 150)
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 75
        imageView.clipsToBounds = true
        
        //Задаю фрейм для labelText
        labelText.frame = CGRect(x: 190, y: 107, width: 170, height: 30)
        
        //Задаю фрейм для textFieldCreate
        textFieldStatus.frame = CGRect(x: 190, y: 157, width: 170, height: 30)
        
        //Создаю фрейм для button
        button.frame = CGRect(x: 16, y: 264, width: ProfileViewController().view.frame.size.width - 32, height: 50)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = CGFloat(4)
        button.layer.shadowOpacity = Float(0.7)
        button.layer.cornerRadius = 4
    }

    
}
