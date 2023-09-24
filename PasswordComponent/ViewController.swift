//
//  ViewController.swift
//  PasswordComponent
//
//  Created by SR on 2023/09/23.
//

import UIKit

class ViewController: UIViewController {
    let stackView = UIStackView()
    let newPasswordTextField = PasswordTextField(placeHolderText: "New Password")

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20

        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
    }

    func layout() {
        stackView.addArrangedSubview(newPasswordTextField)

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
        ])
    }
}
