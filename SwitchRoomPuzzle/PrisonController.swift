//
//  PrisonController.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation
import GameplayKit

class PrisonController: NSObject {

    var room: Room?
    var numberOfPrisoners: Int?
    var prisoners = [PrisonerProtocol]()

    /// store state, to check if prisoner's guess is correct
    var prisonerVisiteds = [Bool]()

    init(room: Room?, numberOfPrisoners: Int?) {
        super.init()
        self.room = room ?? Room()
        self.numberOfPrisoners = numberOfPrisoners ?? 10
        self.prisoners = populatedPrisoners(numberOfPrisoners: self.numberOfPrisoners!)
        self.prisonerVisiteds = populatedPrisonersVisitedRoom(prisoners: self.prisoners)
    }

    func populatedPrisoners(numberOfPrisoners: Int) -> [PrisonerProtocol] {

        var prisoners = [PrisonerProtocol]()
        // prisoners[0] is leader
        prisoners.append(LeadPrisoner(room: room, numberOfPrisoners: numberOfPrisoners))

        for _ in 1..<numberOfPrisoners {
            prisoners.append(Prisoner())
        }
        return prisoners
    }

    /// - Parameter prisoners: used to map returned array
    /// - Returns: array with numberOfPrisoners elements, all elements false
    func populatedPrisonersVisitedRoom(prisoners: [PrisonerProtocol]) -> [Bool] {
        let visiteds = prisoners.map({ _ in false })
        return visiteds
    }

    /// returns true if prisoners got free
    func managePrisoners() -> Bool {

        guard let room = room, let numberOfPrisoners = numberOfPrisoners else { return false }

        // a random uniform distribution of integers from (0 - numberOfPrisoners - 1) inclusive
        // https://developer.apple.com/library/tvos/documentation/GameplayKit/Reference/GKShuffledDistribution_Class/index.html
        let uniformDist = GKRandomDistribution(lowestValue: 0,
                                               highestValue: numberOfPrisoners - 1)

        while true {

            // uniformDist.nextInt() returns the next random integer
            let prisonerIndex = uniformDist.nextInt()
            print("prisonerIndex \(prisonerIndex)")

            prisoners[prisonerIndex].visitRoom(room)
            prisonerVisiteds[prisonerIndex] = true

            if room.didPrisonerSayAllHaveVisited {
                if didAllPrisonersVisitAtLeastOnce() {
                    print("prisoner was correct, free all prisoners")
                    return true
                } else {
                    print("prisoner was wrong, feed them to crocodiles")
                    return false
                }
            }
        }
    }

    /// - PrisonController can use this to check if a Prisoner "guess" is correct.
    /// - Returns: true if each prisoner has visited at least once
    func didAllPrisonersVisitAtLeastOnce() -> Bool {
        return prisonerVisiteds.filter({ $0 == false }) == []
    }

}
