
//  hw_1_1
//  Created by Антон Баландин on 2.08.23.

import UIKit

class ViewController: UIViewController {

    private var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        imageView.backgroundColor = .blue
        return imageView
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.textAlignment = .center
        label.font = label.font.withSize(40)
        label.backgroundColor = .gray
        return label
    }()
    
    private var textFildLogin: UITextField = {
        let textFildLogin = UITextField()
        textFildLogin.attributedPlaceholder = NSAttributedString(string: "Логин", attributes: [.font: UIFont.systemFont(ofSize: 25)])
        textFildLogin.textAlignment = .center
        textFildLogin.backgroundColor = .gray
        return textFildLogin
        
    }()
    
    private var textFildPassword: UITextField = {
        let textFildPassword = UITextField()
        textFildPassword.attributedPlaceholder = NSAttributedString(string: "Пароль", attributes: [.font: UIFont.systemFont(ofSize: 25)])
        textFildPassword.textAlignment = .center
        textFildPassword.backgroundColor = .gray
        return textFildPassword
        
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .gray
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        
        button.addTarget(self, action: #selector(butt), for: .touchUpInside)
    }
    
    
    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(textFildLogin)
        view.addSubview(textFildPassword)
        view.addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textFildLogin.translatesAutoresizingMaskIntoConstraints = false
        textFildPassword.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.1),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.width/7),
            
            textFildLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFildLogin.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            textFildLogin.widthAnchor.constraint(equalToConstant: 150),
            textFildLogin.heightAnchor.constraint(equalToConstant: 50),
            
            textFildPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFildPassword.topAnchor.constraint(equalTo: textFildLogin.bottomAnchor, constant: 10),
            textFildPassword.widthAnchor.constraint(equalToConstant: 150),
            textFildPassword.heightAnchor.constraint(equalToConstant: 50),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: textFildPassword.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            button.heightAnchor.constraint(equalToConstant: view.frame.size.width/8)

        ])
    }
}

private extension ViewController {
    @objc func butt() {
        // Переходим на новый контроллер
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
}

