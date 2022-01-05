//
//  TopButtonStackView.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class TopButtonStackView: UIStackView {
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
    
    private lazy var stackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [closeButton,
                                                                    emptySpacingView,
                                                                    circleButtonStackView])
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    private func setupView() {
        addArrangedSubview(closeButton)
        addArrangedSubview(emptySpacingView)
        addArrangedSubview(circleButtonStackView)
        axis = .horizontal
        spacing = 0
        alignment = .center
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emptySpacingView.widthAnchor.constraint(greaterThanOrEqualToConstant: 0)
        ])
        constraintEqualWidthAndHeight(closeButton, by: 22)
        constraintEqualWidthAndHeight(giftButton, by: 26)
        constraintEqualWidthAndHeight(wonButton, by: 26)
        constraintEqualWidthAndHeight(favouriteButton, by: 26)
    }
    
    private func constraintEqualWidthAndHeight(_ targetView: UIView, by value: CGFloat) {
        NSLayoutConstraint.activate([
            targetView.widthAnchor.constraint(equalToConstant: value),
            targetView.heightAnchor.constraint(equalTo: targetView.widthAnchor)
        ])
    }
}
