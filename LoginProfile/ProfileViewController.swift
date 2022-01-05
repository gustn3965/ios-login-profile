//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class ProfileViewController: UIViewController {
    private struct Inset {
        let leadingTopButtonStackView: CGFloat = 22
        let trailingTopButtonStackView: CGFloat = 16
        let topTopButtonStackView: CGFloat = 16
        let bottomProfileView: CGFloat = 50
        let topBottomButtonStackView: CGFloat = 28
        let bottomBottomButtonStackView: CGFloat = 64
    }
    
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
    
    // MARK: - Properties
    private lazy var inset: ProfileViewController.Inset = ProfileViewController.Inset()
    
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
            topButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,
                                                        constant: inset.leadingTopButtonStackView),
            topButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,
                                                         constant: -inset.trailingTopButtonStackView),
            topButtonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                                    constant: inset.topTopButtonStackView)
        ])
    }
    
    func setupProfileView() {
        view.addSubview(profileView)
        NSLayoutConstraint.activate([
            profileView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileView.imageView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            profileView.imageView.heightAnchor.constraint(equalTo: profileView.imageView.widthAnchor),
            profileView.bottomAnchor.constraint(equalTo: dividerLine.topAnchor,
                                                constant: -inset.bottomProfileView)
        ])
    }
    
    func setupBottomStackView() {
        view.addSubview(dividerLine)
        view.addSubview(bottomButtonStackView)
        NSLayoutConstraint.activate([
            dividerLine.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            dividerLine.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            dividerLine.heightAnchor.constraint(equalToConstant: 1),
            bottomButtonStackView.topAnchor.constraint(equalTo: dividerLine.bottomAnchor,
                                                       constant: inset.topBottomButtonStackView),
            bottomButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomButtonStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -inset.bottomBottomButtonStackView)
        ])
    }
    
    func makeCornerRadiusProfileImageView() {
        profileView.makeCornerRadiusImageView()
    }
}
