import Foundation
import SwiftData

@Model
class Opportunity {

    var name: String
    var stage: String
    var forecastAmount: String
    var customer: String
    var expectedCloseDate: String
    var probability: String
    var notes: String

    var createDate: Date

    init(
        name: String,
        stage: String,
        forecastAmount: String,
        customer: String,
        expectedCloseDate: String,
        probability: String,
        notes: String
    ) {
        self.name = name
        self.stage = stage
        self.forecastAmount = forecastAmount
        self.customer = customer
        self.expectedCloseDate = expectedCloseDate
        self.probability = probability
        self.notes = notes
        self.createDate = Date()
    }
}
