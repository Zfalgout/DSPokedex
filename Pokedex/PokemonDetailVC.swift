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
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var typeLabel: UIStackView!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var currentEvoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!
    @IBOutlet weak var evoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
        
        pokemon.downloadPokemonDetails {
            
            print("Did arrive here")
            //Whatever we write here will only be called after the network call is complete.
            
            self.updateUI()
        }
    }
    
    func updateUI() {
        nameLabel.text = pokemon.name
        attackLabel.text = pokemon.attack
        defLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
