//
//  GameState.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

import Foundation

// GameState for HOA Havoc
struct GameState {
    
    // cardList is array of Cards that hold each possible complaint that the user has to deal with
    var cardList: [Card]
    
    // Current Power/Popularity/Money/Landscaping value of the users
    // When either reaches 0 or 100 the game ends
    var curPow: Int
    var curPop: Int
    var curMon: Int
    var curLand: Int
    init() {
        // Creates empty card deck, createDeck fills in the decks
        // Intializes game to have each current value at 50
        cardList = []
        curPow = 50
        curPop = 50
        curMon = 50
        curLand = 50
        createDeck()
    }
    
    
    // Checks if game is overs, returns true if over, false is not overs
    func gameOver() -> Bool {
        if(curPow < 1 || curPop < 1 || curMon < 1 || curLand < 1) {
            return true
        }
        if(curPow > 100 || curPop > 100 || curMon > 100 || curLand > 100) {
            return true;
        }
        return false
    }
    
    /* Function that creates each card in the deck
    /   Not sure how to make it look better, due to the custom text inputs
    /   Maybe a take a text file as an input to setup all the cards?
    /   Would seem cleaner, but would be just as messy conceptually
    /
    /   Community roles based on mod 6
    /   0. Farmer
    /   1. Carpenter
    /   2. Merchant
    /   3. Treasurer
    */
    
    mutating func createDeck() {
        let myCard1 = Card(id:1,nPow:0, yPow:10,nPop: -15, yPop: 0, nLand: 0,yLand: 10,nMon: 0,yMon: 0, t:"Jerry refuses to mow his lawn, should we deal with him?")
        let myCard2 = Card(id:2,nPow:0,yPow:5,nPop: 20, yPop: -20, nLand: 0,yLand: 0,nMon: -10,yMon: 10, t:"We should raise HOA taxes") //
        let myCard3 = Card(id:3,nPow:15,yPow:0,nPop: 0, yPop: 15, nLand: -10,yLand: 10,nMon: 0,yMon: 0, t:"A pipe burst at a resident's house, should we help them?") //
        let myCard4 = Card(id:4,nPow:-20,yPow:20,nPop: 0, yPop: -10, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Tim is plotting to overthrow your HOA rule, should we acknowledge it?") //
        let myCard5 = Card(id:5,nPow:0,yPow:0,nPop: 0, yPop: 10, nLand: -10,yLand: 0,nMon: 0,yMon: 0,t: "We have spare funds should we upgrade our lawn mowers?") //
        let myCard6 = Card(id:6,nPow:-15,yPow:30,nPop: 10, yPop: -20, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Katie has weeds in her yard, should we make an example out of her?") //
        let myCard7 = Card(id:7,nPow:-10,yPow:20,nPop: 10, yPop: -10, nLand: 0,yLand: 10,nMon: 0,yMon: 0,t:"Rose leaves her lights on every day, should we reprimand her?")
        let myCard8 = Card(id:8,nPow:-15,yPow:0,nPop: 20, yPop: -15, nLand: 0,yLand: 10,nMon: 0,yMon: 0,t:"Simon is half blind and his yard looks terrible, should we tell him?")
        let myCard9 = Card(id:9,nPow:0,yPow:0,nPop: -20, yPop: 20, nLand: 0,yLand: 0,nMon: 10,yMon: -20,t:"Michael needs funds to deal with termites on his property, do we help him?")
        let myCard10 = Card(id:10,nPow:0,yPow:0,nPop: 0, yPop: 0, nLand: 20,yLand: -50,nMon: -20,yMon: 50,t:"Ball Gites CEO of Mocrosift wants to install towers in our neighborhood, do we let him?") //
        let myCard11 = Card(id:11,nPow:-10,yPow:10,nPop: -10, yPop: 10, nLand: -10,yLand: 10,nMon: -10,yMon: 10,t:"Kate made cookies")
        let myCard12 = Card(id:12,nPow:-20,yPow:0,nPop: 0, yPop: 10, nLand: 0,yLand: -20,nMon: 0,yMon: 10,t:"A newcomer wants to install a new pool, should we let him?")
        let myCard13 = Card(id:13,nPow:0,yPow:-10,nPop: 0, yPop: 10, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Rose has a damaged mailbox, should we deal with it?" ) //
        let myCard14 = Card(id:14,nPow:20,yPow:-20,nPop: -20, yPop: 20, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Sebastian wants to paint his house yellow, is that acceptable?") //
        let myCard15 = Card(id:15,nPow:15,yPow:-10,nPop: -10, yPop: 20, nLand: 0,yLand: -15,nMon: 0,yMon: 0,t:"Luke desires a party with fireworks, do we let him use fireworks?") //
        let myCard16 = Card(id:16,nPow:-10,yPow:10,nPop: -10, yPop: -10, nLand: -10,yLand: 10,nMon: -10,yMon: 10,t:"Nick has 48er's decorations all over his house, do we deal with him?") //
        let myCard17 = Card(id:17,nPow:0,yPow:0,nPop: 10, yPop: -10, nLand: 0,yLand: 30,nMon: 30,yMon: 0,t:"Nozama a large shipping company, wants to pay to dump waste in our neighborhood, do we accept their payments?") //
        let myCard18 = Card(id:18,nPow:-10,yPow:10,nPop: -10, yPop: 10, nLand: -10,yLand: 10,nMon: -10,yMon: 10,t:"The Rat King, king of the rats, desires an offering of cheese, do we oblige?") //
        let myCard19 = Card(id:19,nPow:0,yPow:0,nPop: -10, yPop: 20, nLand: 0,yLand: -20,nMon: 10,yMon: -20,t:"The nuclear powered Lawn Mower 3000 came out, can we get one?") //
        let myCard20 = Card(id:20,nPow:20,yPow:-20,nPop: 0, yPop: 0, nLand: -15,yLand: 0,nMon: 0,yMon: -20,t:"Avaj Tpircs is threatening to burn down our neighborhood if he does not get money, do we give him tribute?") //
        let myCard21 = Card(id:21,nPow:10,yPow:-10,nPop: -10, yPop: 10, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Avery wants to throw a party, but after 7:00 pm is that acceptable?") //
        let myCard22 = Card(id:22,nPow:10,yPow:-20,nPop: 0, yPop: -20, nLand: 0,yLand: 10,nMon: 0,yMon: 20,t:"Deborah wants to grow poppies and cocoa in her backyard, it that allowed?") //
        let myCard23 = Card(id:23,nPow:10,yPow:-20,nPop: 10, yPop: -15, nLand: 0,yLand: 0,nMon: 0,yMon: 20,t:"Ryan, one of our highest donators wants to add a new room to his house that obstructs another resisdent's views, should we let it pass?") //
        let myCard24 = Card(id:24,nPow:20,yPow:-20,nPop: 0, yPop: -10, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Avaj Tpircs, evil overlord of the other HOA wants to meet with us, do we accept his invitation?" ) //
        let myCard25 = Card(id:25,nPow:10,yPow:-10,nPop: 10, yPop: -10, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Sam refuses to clean the carnage from her pet raccoon's forage through neighborhood garbage cans, can we put her racoon up for adoption?")
        let myCard26 = Card(id:26,nPow:-10,yPow:10,nPop: -20, yPop: 15, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"The local teens are throwing a party and disrupting the peace, should disrupt their speaker BlueberryTeeth connection?") //
        let myCard27 = Card(id:27,nPow:10,yPow:20,nPop: 0, yPop: 10, nLand: 0,yLand: -20,nMon: 0,yMon: -10,t:"I'm getting tired of enforcing the rules around here, can we have a day where the neighborhood can do anything they want?") //
        let myCard28 = Card(id:28,nPow:0,yPow:0,nPop: -20, yPop: 10, nLand: 0,yLand: -10,nMon: 0,yMon: -10,t:"There's no wheelchair accessible pathway to the park, can we construct a slightly larger pathway?") //
        let myCard29 = Card(id:29,nPow:0,yPow:0,nPop: -10, yPop: 10, nLand: 0,yLand: 0,nMon: 10,yMon: -10,t:"Rocha wants to start 'Mocha with Rocha' on Monday nights in the plaza, do we have the supplies and support to do so?") //
        let myCard30 = Card(id:30,nPow:10,yPow:-10,nPop: -50, yPop: 20, nLand: 0,yLand: 10,nMon: 0,yMon: 10,t:"The Rat King requests uncontrolled access to community trash cans, do we grant him such permissions?") //
        let myCard31 = Card(id:31,nPow:20,yPow:-20,nPop: 20, yPop: -20, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Children are protesting for access to the park after sunset, do we let them run about?") //
        let myCard32 = Card(id:32,nPow:0,yPow:0,nPop: 20, yPop: -20, nLand: 0,yLand: 0,nMon: 0,yMon: 15,t:"Zack has decided he wants to raise chickens, do we negotiate a deal to make profit off his eggs?") //
        let myCard33 = Card(id:33,nPow:-10,yPow:20,nPop: -10, yPop: 0, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Tony bought a lifted truck and has parked terribly diagonal every day, do we get the police to ticket him?") //
        let myCard34 = Card(id:34,nPow:10,yPow:-10,nPop: -20, yPop: 10, nLand: 0,yLand: 0,nMon: 0,yMon: -20,t:"John won't stop talking about Galaxy Conflict, do we buy him a light sword so he'll stop asking everyone to join his FundMe?") //
        let myCard35 = Card(id:35,nPow:-10,yPow:20,nPop: -15, yPop: 10, nLand: 0,yLand: 0,nMon: 0,yMon: -10,t:"Anna keeps bringing up her high school choir days, do we bring in an opera singer to humble her?") //
        let myCard36 = Card(id:36,nPow:0,yPow:15,nPop: 0, yPop: -15, nLand: 0,yLand: -15,nMon: 0,yMon: 0,t:"Nick keeps arguing with Marie about their land boundaries, do we settle this dispute ourselves?") //
        let myCard37 = Card(id:37,nPow:10,yPow:0,nPop: 0, yPop: 0, nLand: 0,yLand: 0,nMon: 0,yMon: -20,t:"Avaj Tpircs found our database password and has offered it for ransom, do we agree to his demands?") //
        let myCard38 = Card(id:38,nPow:0,yPow:0,nPop: 0, yPop: 10, nLand: 0,yLand: -20,nMon: 0,yMon: -10,t:"Marcos is proposing to his girlfriend in the park, do we help him make it grand?") //
        let myCard39 = Card(id:39,nPow:-10,yPow:10,nPop:0, yPop: 0, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Can you help me tell my neighbor Rachel to keep her boombox volume down after 10 PM? She won't listen to me!") //
        let myCard40 = Card(id:40,nPow:0,yPow:0,nPop: 0, yPop: 0, nLand: 0,yLand: 15,nMon: 10,yMon: -10,t:"An invasive plant species has taken over park vegetation, can we hire landscapers to exterminate the pests?") //
        let myCard41 = Card(id:41,nPow:10,yPow:-20,nPop: -10, yPop: 20, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Four score and seven years ago, Dolores was the HOA president. Can you grant her the honorary title of HOA president?") //
        let myCard42 = Card(id:42,nPow:0,yPow:0,nPop: -10, yPop: 10, nLand: 0,yLand: 0,nMon: 10,yMon: -15,t:"Britney wants to host a pageant for all the children to dress up as their favorite super heroes to raise money for charity. Do we have the supplies and people to put that on tomorrow?") //
        let myCard43 = Card(id:43,nPow:30,yPow:-20,nPop: -10, yPop: 10, nLand: 0,yLand: 0,nMon: 0,yMon: 0,t:"Hey punk, if you stop shutting down my son's parties, I won't make your life miserable. Remember: snitches may not always end up in ditches, but they definitely get stitches.") //
        let myCard44 = Card(id:44,nPow:10,yPow:-10,nPop: 0, yPop: 10, nLand: 0,yLand: 0,nMon: 0,yMon: -30,t:"The children have decided to start a pyramid scheme for painted rocks, should we invest in their LLC?") //
        let myCard45 = Card(id:45,nPow:-10,yPow:-10,nPop: -10, yPop: -10, nLand: 10,yLand: 10,nMon: 10,yMon: 10,t:"Do you want to try flying? I know a guy.") //
        let myCard46 = Card(id:46,nPow:0,yPow:0,nPop: -10, yPop: 10, nLand: 0,yLand: 0,nMon: 10,yMon: -10,t:"Can we hire a theater troupe to host Shakespeare in the Ampitheateater?") //
        let myCard47 = Card(id:47,nPow:0,yPow:-10,nPop: -20, yPop: 15, nLand: -20,yLand: 20,nMon: 0,yMon: 0,t:"Should we install a filter in the water supply? The people keep complaining about the orange tint.") //
        let myCard48 = Card(id:48,nPow:-10,yPow:10,nPop: 0, yPop: 0, nLand: 0,yLand: 0,nMon: -20,yMon: 0,t:"Jimmy's dog got loose again, should we deal with it ourselves?")
        
        
        // Now add each card that was created to the decks
        
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
        cardList.append(myCard31)
        cardList.append(myCard32)
        cardList.append(myCard33)
        cardList.append(myCard34)
        cardList.append(myCard35)
        cardList.append(myCard36)
        cardList.append(myCard37)
        cardList.append(myCard38)
        cardList.append(myCard39)
        cardList.append(myCard40)
        cardList.append(myCard41)
        cardList.append(myCard42)
        cardList.append(myCard43)
        cardList.append(myCard44)
        cardList.append(myCard45)
        cardList.append(myCard46)
        cardList.append(myCard47)
        cardList.append(myCard48)
        
        
        
        // Shuffle the deck using built in shuffle feature from Swift
        cardList.shuffle()
    }
    
    // Restarts the game, looks very similar to the constructor, but just reshuffles the deck
    mutating func restart() {
        self.curPow = 50
        self.curPop = 50
        self.curMon = 50
        self.curLand = 50
        cardList.shuffle()
    }
}
