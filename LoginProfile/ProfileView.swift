import UIKit

class ProfileView: UIView {
    private var backgroundImage: UIImageView = UIImageView(image: UIImage(named: "sky"))
    private var profileImage: UIImageView = UIImageView(image: UIImage(named: "penguine"))
    private var chatImage: UIImageView = UIImageView(image: UIImage(named: "btn_bubble"))
    private var callImage: UIImageView = UIImageView(image: UIImage(named: "btn_phone"))
    private var storyImage: UIImageView = UIImageView(image: UIImage(named: "btn_quote"))
    
    private var divider: Divider = Divider()

    private var wonButton: WonButton = WonButton()
    private var giftButton: GiftButton = GiftButton()
    private var closeButton: CloseButton = CloseButton()
    private var circleButton: CircleButton = CircleButton()
    private var favouriteButton: FavouriteButton = FavouriteButton()
    
    private var nameLabel: UILabel = UILabel()
    private var chatLabel: UILabel = UILabel()
    private var callLabel: UILabel = UILabel()
    private var storyLabel: UILabel = UILabel()
    
    lazy var chatView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [chatImage, chatLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackV
    }()
    
    lazy var callView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [callImage, callLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackV
    }()
    
    lazy var storyView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [storyImage, storyLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackV
    }()
    
    lazy var profileView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [profileImage, nameLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.spacing = 5
        stackV.distribution = .equalSpacing
        return stackV
    }()
    
    lazy var functionButtonsView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [favouriteButton, wonButton, giftButton])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .horizontal
        stackV.distribution = .equalSpacing
        return stackV
    }()
    
    lazy var topButtonsView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [closeButton, functionButtonsView])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .horizontal
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return stackV
    }()
    
    lazy var bottomButtonsView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [chatView, callView, storyView])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .fill
        stackV.axis = .horizontal
        stackV.distribution = .fillEqually
        return stackV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(backgroundImage)
        self.addSubview(topButtonsView)
        self.addSubview(bottomButtonsView)
        self.addSubview(profileView)
        self.addSubview(divider)
        
        nameLabel.text = "claire"
//        nameLabel.font = .title3
        chatLabel.text = "1:1 채팅"
        callLabel.text = "전화하기"
        storyLabel.text = "카카오스토리"
        makeColorIn(labels: [nameLabel, chatLabel, callLabel, storyLabel], color: .white)
        
        functionButtonsView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        profileImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.25).isActive = true
        profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor).isActive = true
        profileView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        profileImage.layer.cornerRadius = 30
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleToFill
        
        setConstraint(view: topButtonsView, left: 16, right: 16, top: 16, bottom: nil)
        setConstraint(view: profileView, left: 0, right: 0, top: nil, bottom: nil)
        setConstraint(view: bottomButtonsView, left: 60, right: 60, top: nil, bottom: 50)
        setConstraint(view: divider, left: 0, right: 0, top: nil, bottom: nil)
        divider.bottomAnchor.constraint(equalTo: bottomButtonsView.topAnchor, constant: -25).isActive = true
        profileView.bottomAnchor.constraint(equalTo: divider.topAnchor, constant: -80).isActive = true
        
    }
    
    func makeColorIn(labels: [UILabel], color: UIColor) {
        labels.forEach { $0.textColor = .white }
    }
    
    func setConstraint(view: UIView, left: CGFloat?, right: CGFloat?, top: CGFloat?, bottom: CGFloat?) {
        let safeArea = self.safeAreaLayoutGuide
        if let left = left {
            view.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: left).isActive = true
        }
        if let right = right {
            view.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -right).isActive = true
        }
        if let top = top {
            view.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: top).isActive = true
        }
        
        if let bottom = bottom {
            view.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -bottom).isActive = true
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
