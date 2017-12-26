//
//  ViewController.swift
//  Pingpong
//
//  Created by Soja on 12/24/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    fileprivate let imageView: UIImageView = {
        let iv =  UIImageView(image: UIImage(named: "paddle"))
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    fileprivate let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 1.5
        tf.layer.cornerRadius = 10
        tf.textAlignment = .center
        tf.font = UIFont.userNameOfSize(size: 25)
        return tf
    }()
    
    fileprivate let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 1.5
        tf.layer.cornerRadius = 10
        tf.textAlignment = .center
        tf.font = UIFont.userNameOfSize(size: 25)
        return tf
    }()
    
    fileprivate let stackView: UIStackView = {
        let sv = UIStackView()
        sv.alignment = .center
        sv.spacing = 20
        sv.distribution = .fillProportionally
        sv.axis = .vertical
        return sv
    }()
    
    fileprivate let loginButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.userNameOfSize(size: 25)
        button.setTitle("Log In", for: .normal)
        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        return button
    }()
    
//    fileprivate let usernameLabel: UILabel = {
//        let label = UILabel()
//        label.textColor = UIColor.gray
//        label.font =
//        label.text = "Username"
//        return label
//    }()
    
//    fileprivate let passwordLabel: UILabel = {
//        let label = UILabel()
//        label.textColor = UIColor.gray
//        label.font = UIFont.userNameOfSize(size: 20)
//        label.text = "Password"
//        return label
//    }()

    @objc fileprivate func loginButtonPressed() {
        print("xh: login button pressed")
    }
    
    fileprivate func setupView() {
        let horizontalPadding = percentScreenHorizontal(10)
        
        view.backgroundColor = .white
        
        view.addSubview(stackView)
        view.addConstraintsWithFormat("H:|-\(horizontalPadding)-[v0]-\(horizontalPadding)-|", views: stackView)
        view.addConstraintsWithFormat("V:|-\(horizontalPadding)-[v0]-\(horizontalPadding)-|", views: stackView)

        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
 
        view.addConstraintsWithFormat("H:|-\(horizontalPadding)-[v0]-\(horizontalPadding)-|", views: usernameTextField)
        view.addConstraintsWithFormat("H:|-\(horizontalPadding)-[v0]-\(horizontalPadding)-|", views: passwordTextField)
        view.addConstraintsWithFormat("H:|-\(horizontalPadding)-[v0]-\(horizontalPadding)-|", views: loginButton)
        view.addConstraintsWithFormat("V:[v0(40)]", views: usernameTextField)
        view.addConstraintsWithFormat("V:[v0(40)]", views: passwordTextField)
        view.addConstraintsWithFormat("V:[v0(40)]", views: loginButton)
        
 
    }
}

