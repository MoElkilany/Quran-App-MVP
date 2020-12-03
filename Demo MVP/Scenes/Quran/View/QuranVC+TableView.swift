//
//  QuranVC+TableView.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

extension QuranVC:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getTableCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: QuranCell.reuseID) as! QuranCell
        presenter.setCellData(cell: cell, index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelect(index: indexPath.row)
        
        
    }
    
  
}
/*
 func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   guard let color = presenter.color(for: indexPath.row) else { return }
   let detailsPresenter = ColorDetailsPresenter(with: color)
   let detailsController = ColorDetailsViewController(with: detailsPresenter)
   self.present(detailsController, animated: true, completion: nil)
 }
 */
