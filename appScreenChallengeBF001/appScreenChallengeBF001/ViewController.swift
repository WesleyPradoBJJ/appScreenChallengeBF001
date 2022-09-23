//
//  ViewController.swift
//  appScreenChallengeBF001
//
//  Created by Wesley Prado on 23/09/2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var adressTextField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLabel()
        configTextField()
        configButton()
    }
    
    func configLabel(){
        titleLabel.text = "AppScreenChallenge"
        titleLabel.textAlignment = .center
        titleLabel.font = .boldSystemFont(ofSize: 32)
        titleLabel.textColor = .gray
        
        subtitleLabel.text = "Tela de Cadastro"
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = .boldSystemFont(ofSize: 18)
        subtitleLabel.textColor = .darkGray
        
        nameLabel.text = "Nome:"
        nameLabel.textAlignment = .left
        nameLabel.font = .boldSystemFont(ofSize: 15)
        nameLabel.textColor = .darkGray
        
        adressLabel.text = "Endereço:"
        adressLabel.textAlignment = .left
        adressLabel.font = .boldSystemFont(ofSize: 15)
        adressLabel.textColor = .darkGray
        
        passwordLabel.text = "Senha:"
        passwordLabel.textAlignment = .left
        passwordLabel.font = .boldSystemFont(ofSize: 15)
        passwordLabel.textColor = .darkGray
    }
    
    func configTextField(){
        nameTextField.placeholder = "Por favor, digite seu nome."
        nameTextField.delegate = self
        
        adressTextField.placeholder = "Por favor, digite seu endereço."
        adressTextField.delegate = self
        
        passwordTextField.placeholder = "Por favor, digite sua senha."
        passwordTextField.delegate = self
    }
    
    func configButton (){
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.tintColor = .darkGray
        registerButton.layer.borderWidth = 2
        registerButton.layer.cornerRadius = 15
    }

}

