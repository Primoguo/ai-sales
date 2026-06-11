import Foundation
import SwiftData

@Model
class Customer {

    var name: String
    var company: String
    var phone: String
    var wechat: String
    var level: String
    var notes: String

    var createDate: Date

    init(
        name: String,
        company: String,
        phone: String,
        wechat: String,
        level: String,
        notes: String
    ) {

        self.name = name
        self.company = company
        self.phone = phone
        self.wechat = wechat
        self.level = level
        self.notes = notes

        self.createDate = Date()
    }
}
