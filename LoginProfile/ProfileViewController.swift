//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class ProfileViewController: UIViewController {
    // MARK: - Views
    private let topButtonStackView: TopButtonStackView = {
        let stackView: TopButtonStackView = TopButtonStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let profileView: ProfileView = {
        let stackView: ProfileView = ProfileView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let dividerLine: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var bottomButtonStackView: BottomButtonStackView = {
        let stackView: BottomButtonStackView = BottomButtonStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupTopStackView()
        setupBottomStackView()
        setupProfileView()
    }
    
    override func viewWillLayoutSubviews() {
        makeCornerRadiusProfileImageView()
    }
    
    // MARK: - Setup
    func setupTopStackView() {
        view.addSubview(topButtonStackView)
        NSLayoutConstraint.activate([
            topButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 22),
            topButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            topButtonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 18)
        ])
    }
    
    func setupProfileView() {
        view.addSubview(profileView)
        NSLayoutConstraint.activate([
            profileView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileView.imageView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            profileView.imageView.heightAnchor.constraint(equalTo: profileView.imageView.widthAnchor),
            profileView.bottomAnchor.constraint(equalTo: dividerLine.topAnchor, constant: -50)
        ])
    }
    
    func setupBottomStackView() {
        view.addSubview(dividerLine)
        view.addSubview(bottomButtonStackView)
        NSLayoutConstraint.activate([
            dividerLine.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            dividerLine.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            dividerLine.heightAnchor.constraint(equalToConstant: 1),
            bottomButtonStackView.topAnchor.constraint(equalTo: dividerLine.bottomAnchor, constant: 28),
            bottomButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomButtonStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -64)
        ])
    }
    
    func makeCornerRadiusProfileImageView() {
        profileView.imageView.layer.cornerRadius = profileView.imageView.frame.width * 0.3
        profileView.imageView.clipsToBounds = true
    }
}
