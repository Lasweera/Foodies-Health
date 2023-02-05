//
//  FavouritesViewController.swift
//  Foodies Health
//
//  Created by LPW on 30/01/2023.
//

import UIKit

class FavouritesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Favourites"
        view.backgroundColor = .systemBackground
    }


}

//    
//       
//    var tableView = UITableView()
//    var foods: [Favo] = []
//    
//    struct Cells {
//        static let foodCell = "FoodCell"
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureTableView()
//        foods = fetchData()
//        view.backgroundColor = .systemBackground
//    }
//    
//    func configureTableView() {
//        view.addSubview(tableView)
//        setTableViewDelegate()
//        tableView.rowHeight = 100
//        tableView.register(FevoCell.self, forCellReuseIdentifier: Cells.foodCell)
//        
//        tableView.pin(to: view)
//    }
//    
//    func setTableViewDelegate() {
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//
//}
//
//extension FavouritesViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return foods.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.foodCell) as! FevoCell
//        let food = foods[indexPath.row]
//        cell.set(food: food)
//        
//        return cell
//    }
//    
//}
//
//extension FavouritesViewController {
//    
//    func fetchData() -> [Favo] {
//        let food1 = Favo(image: Images.cashew, title: "Cashews")
//        let food2 = Favo(image: Images.chicken, title: "Chicken")
//        let food3 = Favo(image: Images.chumSalmon, title: "Chum-Salmon")
//        let food4 = Favo(image: Images.fruitSalad, title: "Fruit Salad")
//        let food5 = Favo(image: Images.hamburger, title: "Hamburger")
//        let food6 = Favo(image: Images.hotDog, title: "Hot Dog")
//        let food7 = Favo(image: Images.pizza, title: "Pizza")
//        let food8 = Favo(image: Images.samosa, title: "Samosa")
//        let food9 = Favo(image: Images.shawarma, title: "Shawarma")
//        let food10 = Favo(image: Images.taco, title: "Taco")
//        
//        return [food1, food2, food3, food4, food5, food6, food7, food8, food9, food10]
//    }
//}
