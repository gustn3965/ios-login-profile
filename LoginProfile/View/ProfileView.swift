//
//  ProfileView.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

final class ProfileView: UIStackView {
    let imageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = UIImage(named: "yagom")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "yagom"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [imageView, nameLabel])
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
    
    func setupView() {
        addArrangedSubview(imageView)
        addArrangedSubview(nameLabel)
        
        axis = .vertical
        spacing = 5
    }
}

