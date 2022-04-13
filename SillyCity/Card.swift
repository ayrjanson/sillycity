//
//  Card.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

struct Card {
    // id linked to image of the card
    let imgID: Int
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negMil: Int
    let posMil: Int
    
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negPop: Int
    let posPop: Int
    
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negCul: Int
    let posCul: Int
    
    // integers representing changes in military
    // neg denotes "no" was chosen, pos denotes "yes" was chosen
    let negMon: Int
    let posMon: Int
    
    // String that represents the question the user must answer
    let text: String
    
    // Constructor
    init(id: Int, nMil: Int, pMil: Int,nPop: Int, pPop: Int, nCul: Int, pCul: Int, nMon: Int, pMon: Int, t:String) {
        self.imgID = id
        self.negMil = nMil
        self.posMil = pMil
        self.negCul = nCul
        self.posCul = pCul
        self.negPop = nPop
        self.posPop = pPop
        self.negMon = nMon
        self.posMon = pMon
        self.text = t
    }
    
}

