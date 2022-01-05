//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class ProfileViewController: UIViewController {
    private let closeButton: CloseButton = CloseButton()
    private let emptySpacingView: UIView = {
        let view: UIView = UIView()
        return view
    }()
    private let giftButton: GiftButton = GiftButton()
    private let wonButton: WonButton = WonButton()
    private let favouriteButton: FavouriteButton = FavouriteButton()
    
    private lazy var circleButtonStackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [giftButton,
                                                                    wonButton,
                                                                    favouriteButton])
        stackView.axis = .horizontal
        stackView.spacing = 13
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var topButtonStackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [closeButton,
                                                                    emptySpacingView,
                                                                    circleButtonStackView])
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTopStackView()
    }
    
    func setupTopStackView() {
        view.addSubview(topButtonStackView)
        NSLayoutConstraint.activate([
            topButtonStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 22),
            topButtonStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            topButtonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 18),
            emptySpacingView.widthAnchor.constraint(greaterThanOrEqualToConstant: 0)
        ])
        constraintEqualWidthAndHeight(closeButton, by: 22)
        constraintEqualWidthAndHeight(giftButton, by: 26)
        constraintEqualWidthAndHeight(wonButton, by: 26)
        constraintEqualWidthAndHeight(favouriteButton, by: 26)
    }
    
    func constraintEqualWidthAndHeight(_ targetView: UIView, by value: CGFloat) {
        NSLayoutConstraint.activate([
            targetView.widthAnchor.constraint(equalToConstant: value),
            targetView.heightAnchor.constraint(equalTo: targetView.widthAnchor)
        ])
    }
}
