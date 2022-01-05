//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class ProfileViewController: UIViewController {
    private lazy var topButtonStackView: TopButtonStackView = {
        let stackView: TopButtonStackView = TopButtonStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var bottomButtonStackView: BottomButtonStackView = {
        let stackView: BottomButtonStackView = BottomButtonStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTopStackView()
        setupBottomStackView()
    }
    
    func setupTopStackView() {
        view.addSubview(topButtonStackView)
        NSLayoutConstraint.activate([
            topButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 22),
            topButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            topButtonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 18)
        ])
    }
    
    func setupBottomStackView() {
        view.addSubview(bottomButtonStackView)
        NSLayoutConstraint.activate([
            bottomButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomButtonStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -64)
        ])
    }
}
