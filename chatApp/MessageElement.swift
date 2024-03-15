//
//  MessageElement.swift
//  chatApp
//
//  Created by 木村朋広 on 2024/03/08.
//

import Foundation
import FirebaseFirestoreSwift

struct MessageElement: Codable {
    @DocumentID var id: String?
    var name: String
    var message: String
    var createAt: Date
}
