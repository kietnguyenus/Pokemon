//
//  PokemonCell.swift
//  Pokemon
//
//  Created by Nguyễn Tuấn Kiệt on 6/30/17.
//  Copyright © 2017 Nguyễn Tuấn Kiệt. All rights reserved.
//

import UIKit

class PokemonCell: UICollectionViewCell {
    
    @IBOutlet weak var pokeImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func Configure(_ pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        pokeImg.image = UIImage(named: "\(self.pokemon.id)")
        
    }
    
}
