//
//  Card.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

// Card struct that holds the values it changes your power/popularity/landscaping/money values by
// Also contains an image id and the text that is displayed

struct Card {
    // id linked to image of the card
    // There are four options for images, so the image is found using mod 4
    let imgID: Int
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negPow: Int
    let posPow: Int
    
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negPop: Int
    let posPop: Int
    
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negLand: Int
    let posLand: Int
    
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negMon: Int
    let posMon: Int
    
    // String that represents the question the user must answer
    let text: String
    
    // Constructor
    init(id: Int, nPow: Int, yPow: Int,nPop: Int, yPop: Int, nLand: Int, yLand: Int, nMon: Int, yMon: Int, t:String) {
        self.imgID = id
        self.negPow = nPow
        self.posPow = yPow
        self.negLand = nLand
        self.posLand = yLand
        self.negPop = nPop
        self.posPop = yPop
        self.negMon = nMon
        self.posMon = yMon
        self.text = t
    }
    
}

