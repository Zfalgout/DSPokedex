//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Zack Falgout on 5/31/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
    }

}
