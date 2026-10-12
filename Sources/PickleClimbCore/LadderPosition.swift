import Foundation

public enum CompetitorKind: String, Codable, Sendable {
    case player
    case doublesTeam = "doubles_team"
}

public struct LadderPosition: Identifiable, Codable, Hashable, Sendable {
    public let id: UUID
    public let ladderID: UUID
    public let competitorID: UUID
    public let competitorKind: CompetitorKind
    public let rank: Int
    public let isActive: Bool
    public let updatedAt: Date

    public init(
        id: UUID,
        ladderID: UUID,
        competitorID: UUID,
        competitorKind: CompetitorKind,
        rank: Int,
        isActive: Bool,
        updatedAt: Date
    ) {
        self.id = id
        self.ladderID = ladderID
        self.competitorID = competitorID
        self.competitorKind = competitorKind
        self.rank = rank
        self.isActive = isActive
        self.updatedAt = updatedAt
    }
}
