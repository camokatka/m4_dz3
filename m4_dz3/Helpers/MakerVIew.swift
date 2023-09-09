
import UIKit

class MakerView {
    
    static let shared = MakerView()
    
    func makeLabel (text: String = "",
                    textColor: UIColor = .black,
                    font: UIFont = .systemFont(ofSize: 18, weight: .regular),
                    numberOfLines: Int = 0,
                    lineBreakMode: NSLineBreakMode = .byWordWrapping,
                    shadowColor: UIColor = .clear,
                    shadowOffset: CGSize = CGSize(width: 0, height: 0),
                    opacity: Float = 1.0,
                    borderwidth: CGFloat = 0,
                    bordercolor: UIColor = .clear ) -> UILabel
    {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = font
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.shadowColor = shadowColor
        label.shadowOffset = shadowOffset
        label.layer.opacity = opacity
        label.layer.borderWidth = borderwidth
        label.layer.borderColor = bordercolor.cgColor
        return label
    }
    
    func makeButton(title: String = "",
                    titleColor: UIColor = .white,
                    backgroundColor: UIColor = .clear,
                    cornerRadius: CGFloat = 12.0,
                    borderWidth: CGFloat = 0,
                    borderColor: UIColor = .clear,
                    isEnabled: Bool = true,
                    font: UIFont = UIFont.systemFont(ofSize: 17),
                    shadowColor: UIColor? = nil,
                    image: UIImage = UIImage()) -> UIButton
    {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(titleColor, for: .normal)
        btn.backgroundColor = backgroundColor
        btn.layer.cornerRadius = cornerRadius
        btn.layer.borderWidth = borderWidth
        btn.layer.borderColor = borderColor.cgColor
        btn.titleLabel?.font = font
        btn.isEnabled = isEnabled
        btn.setBackgroundImage(image, for: .normal)
        return btn
    }
    
    func makeTextField (text: String = "",
                        textColor: UIColor = .black,
                        textAlignment: NSTextAlignment = .left,
                        placeholder: String = "",
                        borderWidth: CGFloat = 0,
                        borderColor: UIColor = .clear,
                        borderStyle: UITextField.BorderStyle = .roundedRect,
                        cornerRadius: CGFloat = 12,
                        leftView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 1)),
                        adjustsFontSizeToFitWidth: Bool = true,
                        minimumFontSize: CGFloat = 12,
                        backgroundColor: UIColor = .white
                        
                        ) -> UITextField

    {
        let tf = UITextField()
        tf.text = text
        tf.textColor = textColor
        tf.textAlignment = textAlignment
        tf.placeholder = placeholder
        tf.layer.borderWidth = borderWidth
        tf.layer.borderColor = borderColor.cgColor
        tf.borderStyle = borderStyle
        tf.layer.cornerRadius = cornerRadius
        tf.leftView = leftView
        tf.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        tf.minimumFontSize = minimumFontSize
        tf.backgroundColor = backgroundColor
        return tf
    }
    
    func makeView (color: UIColor = .red) -> UIView
    {
        let view = UIView()
        view.backgroundColor = color
        return view
    }
    
}
