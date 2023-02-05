

import UIKit
import Kingfisher
import SnapKit

class FoodDetailsViewController: UIViewController {

 
    
    var selectedFoods : Result?
    
    let poster : UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFit
        return imageview
    }()
    let main : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = .blue
        return label
    }()
    
    let overview : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    let date : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = .blue
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food Details"
        self.view.backgroundColor = .white
        print(selectedFoods!)
        setupConstraints()
        loadContent()
    }
    
    func setupConstraints(){
        self.view.addSubview(poster)
        poster.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(400)
            make.leading.trailing.equalToSuperview()
            
        }
        let holder = UIStackView(arrangedSubviews: [main, date, overview])
        holder.spacing = 10
        holder.axis = .vertical
        self.view.addSubview(holder)
        
        holder.snp.makeConstraints{make in
            make.top.equalTo(poster.snp_bottomMargin).offset(40)
            make.leading.equalTo(view.snp_leadingMargin).offset(20)
            make.trailing.equalTo(view.snp_trailingMargin).offset(-20)
            
        }
    }
    
    func loadContent(){
        if let food = selectedFoods {
            let imageLink = "https://lh3.googleusercontent.com" + food.directionsURL
            if let imageURL = URL(string: imageLink){
                poster.kf.setImage(with: imageURL)
            }
            
            main.text = food.name
            date.text = food.globalID
            overview.text = food.id
        }
    }


}
