import Foundation

struct HoldEntry: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var date: Date
    var itemName: String
    var notes: String = ""
    var createdAt: Date = Date()
}
