import UIKit

class TableViewCell: UITableViewCell {

    var cellFaceImage = UIImageView()
    
    var cellMainLabel = MakerView.shared.makeLabel(font: .boldSystemFont(ofSize: 14))
    
    var cellTimeLabel = MakerView.shared.makeLabel(textColor: .systemGray,
                                                   font: .systemFont(ofSize: 12))
    
    var cellRecepieImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)

        
        contentView.addSubview(cellFaceImage)
        cellFaceImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cellFaceImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cellFaceImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        ])
        
        contentView.addSubview(cellRecepieImage)
        cellRecepieImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cellRecepieImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            cellRecepieImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            cellRecepieImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cellRecepieImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5)
        ])
        
        contentView.addSubview(cellMainLabel)
        cellMainLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cellMainLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellMainLabel.leadingAnchor.constraint(equalTo: cellFaceImage.trailingAnchor, constant: 12),
            cellMainLabel.trailingAnchor.constraint(equalTo: cellRecepieImage.leadingAnchor, constant: -16),
            cellMainLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30)
        ])

        contentView.addSubview(cellTimeLabel)
        cellTimeLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cellTimeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            cellTimeLabel.leadingAnchor.constraint(equalTo: cellFaceImage.trailingAnchor, constant: 12),
            cellTimeLabel.trailingAnchor.constraint(equalTo: cellRecepieImage.leadingAnchor,constant: -16)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
