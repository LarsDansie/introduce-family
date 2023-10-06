//
//  familyAPI.swift
//  IntroduceFamily
//
//  Created by Lars Dansie on 10/5/23.
//

import Foundation


class familyAPI {
    static func getFamily() -> [FamilyMember] {
        let familyMembers = [
        FamilyMember(name: "Jamie Moore", relation: "Mother", bio: "Here is my loving mom, she is REDACTED years old, born and raised in Utah. Her hobbies include gardening, loving up on her cute four year old granddaughter, and road trips."),
        FamilyMember(name: "Dan Moore", relation: "Step-Dad", bio: "Here is my large step-dad, he's a lot softer than he comes across. Major history buff, pretends he doesn't like cats, and also obssesed with his granddaughter."),
        FamilyMember(name: "Daniel and Linsday Dansie", relation: "Older Brother and Sister-In-Law", bio: "Here is my brother Daniel and his wife Lindsay, parents of four year old princess Mira. Hobbies include listening to German Rock Bands, Magic The Gathering, watching shows with their daaughter Mira, and going on cute dates together."),
        FamilyMember(name: "Hyrum Dansie", relation: "Older Brother", bio: "Here is my older brother Hyrum, he has been an incredible inspiration to me since my earliest memories. Incredibly talented, creative and outgoing. Hobbies include painting miniatures for board games, D&D, Cosplay, Writing and exploring nature."),
        FamilyMember(name: "Jade Dansie", relation: "Twin Sister", bio: "Here is my twin sister Jade, creative and wild at heart she has found herself in California chasing her dreams of singing. With an incredible voice and charismatic personality I hope to see her go far. Hobbies include Singing, Writing music, and a bit of more wild activities in California."),
        FamilyMember(name: "Jack Moore", relation: "Younger Brother", bio: "Here is my youngest sibling Jack, with a kind soul for all living things from family to friends and even all sorts of animals, if you get to know him he will do his best to care about you. Hobbies include raising chickens, dogs, cats, fish, bunnies and playing games with anyone he can find."),
        ]
        return familyMembers
    }
}
