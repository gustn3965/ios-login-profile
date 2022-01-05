//
//  BottomButtonStackView.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class BottomButtonStackView: UIStackView {
    // MARK: - Views
    private let chatButton: UIButton = {
        let button: UIButton = UIButton()
        button.setImage(UIImage(named: "chat"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let callButton: UIButton = {
        let button: UIButton = UIButton()
        button.setImage(UIImage(named: "call"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let quoteButton: UIButton = {
        let button: UIButton = UIButton()
        button.setImage(UIImage(named: "quote"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let chatLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "1:1 채팅"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    private let callLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "통화하기"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    private let quoteLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "카카오스토리"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    // MARK: - Setup
    private func setupView() {
        addArrangedSubview(makeVerticalStackView(top: chatButton, bottom: chatLabel))
        addArrangedSubview(makeVerticalStackView(top: callButton, bottom: callLabel))
        addArrangedSubview(makeVerticalStackView(top: quoteButton, bottom: quoteLabel))
        
        axis = .horizontal
        alignment = .bottom
        distribution = .fillEqually
    }
    
    private func makeVerticalStackView(top topView: UIView, bottom bottomView: UIView) -> UIStackView {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [topView, bottomView])
        stackView.axis = .vertical
        stackView.spacing = 17
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}
