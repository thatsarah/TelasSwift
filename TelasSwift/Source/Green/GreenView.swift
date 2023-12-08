import UIKit

class GreenView: UIView {
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        self.backgroundColor = .green
        setUpVisualElements()
    }
    
    let greenLabel = UILabel()
    let redButton = UIButton()
    let blueButton = UIButton()

    
    func setUpVisualElements() {
        addSubview(greenLabel)
        addSubview(redButton)
        addSubview(blueButton)

        
        NSLayoutConstraint.activate([
            
            greenLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 240),
            greenLabel.widthAnchor.constraint(equalToConstant: 275),
            greenLabel.heightAnchor.constraint(equalToConstant: 60),
            greenLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            greenLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            redButton.topAnchor.constraint(equalTo: greenLabel.bottomAnchor, constant: 30),
            redButton.widthAnchor.constraint(equalToConstant: 275),
            redButton.heightAnchor.constraint(equalToConstant: 60),
            redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            blueButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 10),
            blueButton.widthAnchor.constraint(equalToConstant: 275),
            blueButton.heightAnchor.constraint(equalToConstant: 60),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
