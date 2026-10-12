import Foundation

public struct Ladder: Identifiable, Codable, Hashable, Sendable {
    public let id: UUID
    public let name: String
    public let geographicAreaID: UUID
    public let seasonID: UUID
    public let format: CompetitionFormat

    public init(
        id: UUID,
        name: String,
        geographicAreaID: UUID,
        seasonID: UUID,
        format: CompetitionFormat
    ) {
        self.id = id
        self.name = name
        self.geographicAreaID = geographicAreaID
        self.seasonID = seasonID
        self.format = format
    }
}
