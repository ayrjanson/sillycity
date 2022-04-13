//
//  GameState.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

import Foundation

struct GameState {
    
    var cardList: [Card]
    var curMil: Int
    var curPop: Int
    var curMon: Int
    var curCul: Int
    init() {
        cardList = []
        curMil = 50
        curPop = 50
        curMon = 50
        curCul = 50
        createDeck()
    }
    
    func gameOver() -> Bool {
        if(curMil < 1 || curPop < 1 || curMon < 1 || curCul < 1) {
            return true
        }
        if(curMil > 100 || curPop > 100 || curMon > 100 || curCul > 100) {
            return true;
        }
        return false
    }
    
    // This is a stupid comment
    mutating func createDeck() {
        let myCard1 = Card(id:2,nMil:25,pMil:-25,nPop: -25, pPop: 25, nCul: 0,pCul: 0,nMon: 0,pMon: 0, t:"") // Farmer
        let myCard2 = Card(id:3,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0, t:"") //
        let myCard3 = Card(id:4,nMil:25,pMil:-25,nPop: -25, pPop: 25, nCul: 0,pCul: 0,nMon: 0,pMon: 0, t:"")
        let myCard4 = Card(id:5,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard5 = Card(id:6,nMil:25,pMil:-25,nPop: -25, pPop: 25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t: "")
        let myCard6 = Card(id:7,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard7 = Card(id:8,nMil:25,pMil:-25,nPop: -25, pPop: 25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard8 = Card(id:9,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard9 = Card(id:10,nMil:25,pMil:-25,nPop: -25, pPop: 25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard10 = Card(id:10,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard11 = Card(id:11,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard12 = Card(id:12,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard13 = Card(id:13,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard14 = Card(id:14,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard15 = Card(id:15,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard16 = Card(id:16,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard17 = Card(id:17,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard18 = Card(id:18,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard19 = Card(id:19,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard20 = Card(id:20,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard21 = Card(id:21,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard22 = Card(id:22,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard23 = Card(id:23,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard24 = Card(id:24,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard25 = Card(id:25,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard26 = Card(id:26,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard27 = Card(id:27,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard28 = Card(id:28,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard29 = Card(id:29,nMil:-25,pMil:25,nPop: 25, pPop: -25, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"")
        let myCard30 = Card(id:30,nMil:-100,pMil:100,nPop: 100, pPop: -100, nCul: 0,pCul: 0,nMon: 0,pMon: 0,t:"Have you completed your Programming Languages project?")
        cardList.append(myCard1)
        cardList.append(myCard2)
        cardList.append(myCard3)
        cardList.append(myCard4)
        cardList.append(myCard5)
        cardList.append(myCard6)
        cardList.append(myCard7)
        cardList.append(myCard8)
        cardList.append(myCard9)
        cardList.append(myCard10)
        cardList.append(myCard11)
        cardList.append(myCard12)
        cardList.append(myCard13)
        cardList.append(myCard14)
        cardList.append(myCard15)
        cardList.append(myCard16)
        cardList.append(myCard17)
        cardList.append(myCard18)
        cardList.append(myCard19)
        cardList.append(myCard20)
        cardList.append(myCard21)
        cardList.append(myCard22)
        cardList.append(myCard23)
        cardList.append(myCard24)
        cardList.append(myCard25)
        cardList.append(myCard26)
        cardList.append(myCard27)
        cardList.append(myCard28)
        cardList.append(myCard29)
        cardList.append(myCard30)
        cardList.shuffle()
        
    }
    mutating func restart() {
        self.curMil = 50
        self.curPop = 50
        self.curMon = 50
        self.curCul = 50
        cardList.shuffle()
    }
    
}





