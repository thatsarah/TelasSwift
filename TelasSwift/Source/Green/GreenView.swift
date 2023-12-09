import UIKit

class GreenView: UIView {
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        self.backgroundColor = .green
        setUpVisualElements()
    }
    
    var greenLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "SFProDisplay-Light", size: 32)
        label.text = "This is the green screen."
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var blueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Blue Screen", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var redButton: UIButton = {
        let button = UIButton()
        button.setTitle("Red Screen", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    

    
    func setUpVisualElements() {
        addSubview(greenLabel)
        addSubview(blueButton)
        addSubview(redButton)

        
        NSLayoutConstraint.activate([
            
            greenLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 240),
            greenLabel.widthAnchor.constraint(equalToConstant: 275),
            greenLabel.heightAnchor.constraint(equalToConstant: 60),
            greenLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            greenLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            blueButton.topAnchor.constraint(equalTo: greenLabel.bottomAnchor, constant: 30),
            blueButton.widthAnchor.constraint(equalToConstant: 275),
            blueButton.heightAnchor.constraint(equalToConstant: 60),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            redButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 10),
            redButton.widthAnchor.constraint(equalToConstant: 275),
            redButton.heightAnchor.constraint(equalToConstant: 60),
            redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
