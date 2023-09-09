
import UIKit

class ViewController: UIViewController {

    private let mainLabel = MakerView.shared.makeLabel(text: "Create New Password",
                                                       font: .boldSystemFont(ofSize: 32))
    
    private let lockImage = UIImageView(image: UIImage(named: "lock"))
    
    private let secondLabel = MakerView.shared.makeLabel(text: "Enter your new password. If you forget it, then you have to do forgot password.")
    
    private let passwordLabel = MakerView.shared.makeLabel(text: "Password",
                                                           font: .boldSystemFont(ofSize: 16))
    
    private let passwordTextField = MakerView.shared.makeTextField(placeholder: "Enter Password")
    
    private let passwordBorder = MakerView.shared.makeView()
    
    private let eyeButton = MakerView.shared.makeButton(image: UIImage(named: "eye")!)
    
    private let confirmPasswordLabel = MakerView.shared.makeLabel(text: "Confirm Password",
                                                           font: .boldSystemFont(ofSize: 16))
    
    private let confirmPasswordTextField = MakerView.shared.makeTextField(placeholder: "Confirm Password")
    
    private let confirmPasswordBorder = MakerView.shared.makeView()
    
    private let confirmEyeButton = MakerView.shared.makeButton(image: UIImage(named: "eye")!)
    
    private let rememberButton = MakerView.shared.makeButton(image: UIImage(named: "redrect")!)
    
    private let rememberButtonCheck = MakerView.shared.makeButton(image: UIImage(named: "mark")!)
    
    private let rememberLabel = MakerView.shared.makeLabel(text: "Remember me",
                                                           font: .boldSystemFont(ofSize: 16))
    
    private let continueButton = MakerView.shared.makeButton(title: "Continue",
                                                             backgroundColor: .systemGray,
                                                             cornerRadius: 32,
                                                             font: .boldSystemFont(ofSize: 16))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        initTextFields()
        initRememberMe()
        initContinueButton()
        
    }

    private func initUI() {
        
        view.backgroundColor = .white
        
        view.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        view.addSubview(lockImage)
        lockImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lockImage.topAnchor.constraint(equalTo: mainLabel.topAnchor),
            lockImage.leadingAnchor.constraint(equalTo: mainLabel.trailingAnchor, constant: 0)
        ])
        
        view.addSubview(secondLabel)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 8),
            secondLabel.leadingAnchor.constraint(equalTo: mainLabel.leadingAnchor),
            secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
    }
    
    private func initTextFields() {
        
        view.addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 30),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        passwordTextField.addTarget(self, action: #selector(enabledButton), for: .allEditingEvents)
        
        view.addSubview(eyeButton)
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor),
            eyeButton.leadingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 5)
        ])
        
        eyeButton.addTarget(self, action: #selector(securePassword), for: .touchUpInside)
        
        view.addSubview(passwordBorder)
        passwordBorder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordBorder.heightAnchor.constraint(equalToConstant: 1),
            passwordBorder.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            passwordBorder.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            passwordBorder.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        view.addSubview(confirmPasswordLabel)
        confirmPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            confirmPasswordLabel.topAnchor.constraint(equalTo: passwordBorder.bottomAnchor, constant: 30),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        view.addSubview(confirmPasswordTextField)
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor, constant: 10),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: confirmPasswordLabel.leadingAnchor),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        confirmPasswordTextField.addTarget(self, action: #selector(enabledButton), for: .allEditingEvents)
        
        view.addSubview(confirmEyeButton)
        confirmEyeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            confirmEyeButton.topAnchor.constraint(equalTo: confirmPasswordTextField.topAnchor),
            confirmEyeButton.leadingAnchor.constraint(equalTo: confirmPasswordTextField.trailingAnchor, constant: 5)
        ])
        
        confirmEyeButton.addTarget(self, action: #selector(secureConfirmPassword), for: .touchUpInside)
        
        view.addSubview(confirmPasswordBorder)
        confirmPasswordBorder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            confirmPasswordBorder.heightAnchor.constraint(equalToConstant: 1),
            confirmPasswordBorder.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 20),
            confirmPasswordBorder.leadingAnchor.constraint(equalTo: confirmPasswordTextField.leadingAnchor),
            confirmPasswordBorder.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
     
    }
    
    private func initRememberMe() {
        
        view.addSubview(rememberButton)
        rememberButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            rememberButton.topAnchor.constraint(equalTo: confirmPasswordBorder.bottomAnchor, constant: 20),
            rememberButton.leadingAnchor.constraint(equalTo: confirmPasswordBorder.leadingAnchor)
            
        ])
        
        rememberButton.addTarget(self, action: #selector(rememberMeCheck), for: .touchUpInside)
        
        view.addSubview(rememberButtonCheck)
        rememberButtonCheck.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            rememberButtonCheck.centerXAnchor.constraint(equalTo: rememberButton.centerXAnchor),
            rememberButtonCheck.centerYAnchor.constraint(equalTo: rememberButton.centerYAnchor)
            //rememberButton.leadingAnchor.constraint(equalTo: confirmPasswordBorder.leadingAnchor)
            
        ])
        
        rememberButtonCheck.isHidden = false
        rememberButtonCheck.addTarget(self, action: #selector(rememberMeCheck), for: .touchUpInside)
        
        view.addSubview(rememberLabel)
        rememberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            rememberLabel.topAnchor.constraint(equalTo: rememberButton.topAnchor, constant: 3),
            rememberLabel.leadingAnchor.constraint(equalTo: rememberButton.trailingAnchor, constant: 10)
            
        ])
        
    }
    
    private func initContinueButton() {
        
        view.addSubview(continueButton)
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            continueButton.heightAnchor.constraint(equalToConstant: 58),
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            
        ])
        
        continueButton.isEnabled = false
        continueButton.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        
        
    }
    
    @objc func securePassword() {
        
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
        
    }
                                   
    @objc func secureConfirmPassword() {
            
        confirmPasswordTextField.isSecureTextEntry = !confirmPasswordTextField.isSecureTextEntry
            
    }
    
    @objc func rememberMeCheck() {
        
        rememberButtonCheck.isHidden = !rememberButtonCheck.isHidden
        
    }
    
    @objc func enabledButton() {
            if passwordTextField.text!.count >= 8 &&
                confirmPasswordTextField.text!.count >= 8 &&
                passwordTextField.text == confirmPasswordTextField.text {
                
                continueButton.isEnabled = true
                continueButton.backgroundColor = .red
                
            } else {
                continueButton.isEnabled = false
                continueButton.backgroundColor = .systemGray
            }
    }
    
    @objc func goToNext() {
        
        let vc = TableViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}


    


