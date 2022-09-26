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
        view.backgroundColor = UIColor(red: 242/255, green: 188/255, blue: 12/255, alpha: 1.0)// Main view background's color. 
        configLabel()
        configTextField()
        configButton()
        registerButton.isEnabled = false
    }
    
    
    func configLabel(){
        titleLabel.text = "AppScreenChallenge"
        titleLabel.textAlignment = .center
        titleLabel.font = .boldSystemFont(ofSize: 32)
        titleLabel.textColor = .gray
        
        subtitleLabel.text = "Tela de Cadastro"
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = .boldSystemFont(ofSize: 18)
        subtitleLabel.textColor = .black
        
        nameLabel.text = "Nome:"
        nameLabel.textAlignment = .left
        nameLabel.font = .boldSystemFont(ofSize: 15)
        nameLabel.textColor = .black
        
        adressLabel.text = "Endereço:"
        adressLabel.textAlignment = .left
        adressLabel.font = .boldSystemFont(ofSize: 15)
        adressLabel.textColor = .black
        
        passwordLabel.text = "Senha:"
        passwordLabel.textAlignment = .left
        passwordLabel.font = .boldSystemFont(ofSize: 15)
        passwordLabel.textColor = .black
    }
    
    
    func configTextField(){
        nameTextField.placeholder = "Por favor, digite seu nome."
        nameTextField.textColor = UIColor.black
        nameTextField.backgroundColor = UIColor(red: 255/255, green: 237/255, blue: 165/255, alpha: 1.0)
        nameTextField.delegate = self
        
        adressTextField.placeholder = "Por favor, digite seu endereço."
        adressTextField.textColor = UIColor.black
        adressTextField.backgroundColor = UIColor(red: 255/255, green: 237/255, blue: 165/255, alpha: 1.0)
        adressTextField.delegate = self
        
        passwordTextField.placeholder = "Por favor, digite sua senha."
        passwordTextField.textColor = UIColor.black
        passwordTextField.backgroundColor = UIColor(red: 255/255, green: 237/255, blue: 165/255, alpha: 1.0)
        passwordTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
    }
    
    
    func configButton (){
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.tintColor = .darkGray
        registerButton.backgroundColor = UIColor(red: 255/255, green: 237/255, blue: 165/255, alpha: 1.0)
        registerButton.layer.borderWidth = 2
        registerButton.layer.cornerRadius = 15
    }

    //Does the text field border color should immediately turn blue  when the keyboard rises?
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextFieldDidBeginEditing-ok")
        //textField.layer.borderColor = UIColor.blue.cgColor
        switch textField {
        case nameTextField:
             nameTextField.layer.borderColor = UIColor.blue.cgColor
            
        case adressTextField:
            adressTextField.layer.borderColor = UIColor.blue.cgColor
            
        case passwordTextField:
            passwordTextField.layer.borderColor = UIColor.blue.cgColor
            
        default:
            break
        }
        
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextFieldDidEndEditing-ok")
        if textField.text == ""{
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 0
        }
        
        //Validação do botão
        if nameTextField.text == "" || adressTextField.text == "" || passwordTextField.text == ""{
                   registerButton.isEnabled = false
               } else {
                   registerButton.isEnabled = true
               }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextFieldShouldReturn-OK")
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso!")
    }
}

