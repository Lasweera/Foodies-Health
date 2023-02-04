//
//  SignUpViewController.swift
//  Foodies Health
//
//  Created by LPW on 30/01/2023.
//

import UIKit

class SignUpViewController: UITabBarController {

    //Header
    private let headerView = SignInHeaderView()
    
    //Name
    private let nameField: UITextField = {
       let field = UITextField()
        let placeholderText = NSAttributedString(string: "Name",
                                                  attributes: [.foregroundColor: UIColor.systemIndigo])
        
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        field.leftViewMode = .always
        field.attributedPlaceholder = placeholderText
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderColor = UIColor.systemIndigo.cgColor
        field.layer.borderWidth = 1.0
        field.layer.cornerRadius = 8
        field.layer.masksToBounds = true
        return field
    }()
    
    //Email
    private let emailField: UITextField = {
       let field = UITextField()
        let placeholderText = NSAttributedString(string: "Email",
                                                  attributes: [.foregroundColor: UIColor.systemIndigo])
        
        field.keyboardType = .emailAddress
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        field.leftViewMode = .always
        field.attributedPlaceholder = placeholderText
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderColor = UIColor.systemIndigo.cgColor
        field.layer.borderWidth = 1.0
        field.layer.cornerRadius = 8
        field.layer.masksToBounds = true
        return field
    }()
    
    //password
    
    private let passwordField: UITextField = {
       let field = UITextField()
        let placeholderText = NSAttributedString(string: "Password",
                                                  attributes: [.foregroundColor: UIColor.systemIndigo])
        
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        field.leftViewMode = .always
        field.attributedPlaceholder = placeholderText
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.isSecureTextEntry = true
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderColor = UIColor.systemIndigo.cgColor
        field.layer.borderWidth = 1.0
        field.layer.cornerRadius = 10
        field.layer.masksToBounds = true
        return field
    }()
    
    //signInButton
    
    private let signUpButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemYellow
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor =  .systemBackground
        view.addSubview(headerView)
        view.addSubview(nameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(signUpButton)
        
        signUpButton.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
        
    }
    
    override func viewDidLayoutSubviews() {

        
        super.viewDidLayoutSubviews()
        headerView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height/4)
        
        nameField.frame = CGRect(x: 20, y: headerView.bottom, width: view.width-40, height: 50)
        emailField.frame = CGRect(x: 20, y: nameField.bottom+10, width: view.width-40, height: 50)
        passwordField.frame = CGRect(x: 20, y: emailField.bottom+10, width: view.width-40, height: 50)
        signUpButton.frame = CGRect(x: 20, y: passwordField.bottom+10, width: view.width-40, height: 50)
    }
    
    @objc func didTapSignUp() {
        
        guard let email = emailField.text, !email.isEmpty,
                      let password = passwordField.text, !password.isEmpty,
                      let name = nameField.text, !name.isEmpty else {
                    return
                }
        
        AuthManager.shared.signUp(email: email, password: password) { [weak self] success in
            if success {
                
                let newUser = User(name: name, email: email, profilePictureRef: nil)
                DatabaseManager.shared.insert(user: newUser) { inserted in
                    guard inserted else {
                        return
                    }
                    
                    
                        UserDefaults.standard.set(email, forKey: "email")
                        UserDefaults.standard.set(name, forKey: "name")
                    DispatchQueue.main.async {
                        let vc = TabBarViewController()
                        vc.modalPresentationStyle = .fullScreen
                        self?.present(vc, animated: true)
                    }
                }
            }else {
                print("Faild to create account")
            }
        }
        
    }


}
