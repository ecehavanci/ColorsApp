//
//  ColorsTableVC.swift
//  ColorsApp
//
//  Created by Ece Havanci on 27.06.2023.
//

import UIKit

class ColorsTableVC: UIViewController{
    var colors:[UIColor] = []
    
    enum Cell{
        static let colorcell = "ColorCell"
    }
    enum Segues{
        static let toDetail = "toColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addColor()
    }
    
    func addColor(){
        for _ in 0..<50{
            colors.append(UIColor.random())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC;
        destVC.color = (sender as? UIColor)
    }
    
}

extension ColorsTableVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //how many num of rows need to show
        return colors.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {//what to show in rows
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.colorcell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
