
import UIKit

class TableViewController: UIViewController {
    
    private let tableView = UITableView()
    
    private let recepies: [Recepie] = [Recepie(personName: "Jane Cooper",
                                               personImage: UIImageView(image: UIImage(named: "face1")),
                                               action: "published a new recepie!",
                                               time: "09:24 AM",
                                               daysAgo: 0,
                                               recrpieImage: UIImageView(image: UIImage(named: "food1"))),
                                       Recepie(personName: "Roshel",
                                               personImage: UIImageView(image: UIImage(named: "face2")),
                                               action: "commented on your recepie", time: "14:43 PM", daysAgo: 1,
                                               recrpieImage: UIImageView(image: UIImage(named: "food2"))),
                                       Recepie(personName: "Brad Wigington",
                                               personImage: UIImageView(image: UIImage(named: "face3")),
                                               action: "liked your comment",
                                               time: "09:29 AM",
                                               daysAgo: 2,
                                               recrpieImage: UIImageView(image: UIImage(named: "food3")))]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "mycell")
        initUI()
    }
    
    private func initUI() {
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recepies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! TableViewCell
        
        cell.cellFaceImage.image = recepies[indexPath.row].personImage.image
        cell.cellMainLabel.text = "\(recepies[indexPath.row].personName) has \(recepies[indexPath.row].action)"
        
        var days = ""
        if recepies[indexPath.row].daysAgo == 0 {
            days = "Today"
        } else {
            days = "\(recepies[indexPath.row].daysAgo) day(s) ago"
        }
        
        cell.cellTimeLabel.text = days + " | \(recepies[indexPath.row].time)"
        
        cell.cellRecepieImage.image = recepies[indexPath.row].recrpieImage.image
        
        return cell
    }
    
    
    
    
}
