//
//  Post.swift
//  InstagramTutorial
//
//  Created by Yery Castro on 31/8/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is Batman", likes: 123, imageUrl: "batman", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Wakanda Forever", likes: 104, imageUrl: "blackpanther-2", timestamp: Timestamp(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Iron Man", likes: 12, imageUrl: "ironman-2", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Venom is hungry. time to eat", likes: 314, imageUrl: "venom-10", timestamp: Timestamp(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is Spiderman", likes: 80, imageUrl: "spiderman-2", timestamp: Timestamp(), user: User.MOCK_USERS[4])
    ]
}
