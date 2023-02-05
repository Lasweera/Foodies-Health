//
//  ViewController.swift
//  Foodies Health
//
//  Created by LPW on 30/01/2023.
//

import Kingfisher
import UIKit

class ViewController: UIViewController {
    

    var foods : [Result] = [Result]()
    
    let tableView : UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource =  self
        tableView.register(MyCellView.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .clear
        view.addSubview(tableView)
        
        setupContraint()
        
        downloadFoods()
    }
        func setupContraint(){
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
    }
    func downloadFoods(){
    let url = URL(string: "https://yummly2.p.rapidapi.com/feeds/list?limit=24&start=0")!
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = [
          "Content-Type": "application/json",
          //"Session": "fb4e7f9b-0f31-4709-"
          "API key": "e4c466d1bemsh72f16ae904c02cfp1be5e3jsnc060c5697f56"
        ]

    let dataTask = URLSession.shared.dataTask(with: request) { data, res, error in

                      if let foodData = data{
                          let json = try? JSONDecoder().decode(Foods.self, from: foodData)

//                          if let results = json?.keywords{
//                              self.foods = results
//                          }

                          DispatchQueue.main.async {
                              self.tableView.reloadData()
                          }
                      }
                  }
//        URLSession.shared
//          .dataTask(with: URL(string: "https://yummly2.p.rapidapi.com/feeds/list?limit=24&start=0")!)
//          .resume()
        dataTask.resume()
}
    
}
 extension ViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : MyCellView = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! MyCellView
       
        cell.titleLabel.text = foods[indexPath.row].displayName
        
        let imageURL = "https://lh3.googleusercontent.com" + foods[indexPath.row].directionsURL
        if let url = URL(string: imageURL){
            cell.MyImage.kf.setImage(with: url)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)-> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = FoodDetailsViewController()
        vc.selectedFoods = foods[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
//API Key f9923821f549f034afb399cd27e37afd

class MyCellView : UITableViewCell{
    
    let MyImage : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let baseView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowRadius = 0.5
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        
        return view
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = .black
        return label
    }()
    
    let lableHolder : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.alignment = .trailing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let contentHolder : UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .trailing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layComponent()
        setupConstraint()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented ")
    }
    func layComponent(){
        lableHolder.addArrangedSubview(titleLabel)
        lableHolder.addArrangedSubview(descriptionLabel)
        contentHolder.addArrangedSubview(MyImage)
        contentHolder.addArrangedSubview(lableHolder)
        baseView.addSubview(contentHolder)
        contentView.addSubview(baseView)
    }
    
    private func setupConstraint(){
        baseView.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().offset(20)
            make.trailing.bottom.equalToSuperview().offset(-20)
        }
        
        MyImage.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
    }
}












