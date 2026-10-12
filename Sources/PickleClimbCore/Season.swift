import Foundation

public enum SeasonStatus: String, CaseIterable, Codable, Sendable {
    case upcoming
    case active
    case completed
}

public struct Season: Identifiable, Codable, Hashable, Sendable {
    public let id: UUID
    public let name: String
    public let startsAt: Date
    public let endsAt: Date
    public let status: SeasonStatus

    public init(
        id: UUID,
        name: String,
        startsAt: Date,
        endsAt: Date,
        status: SeasonStatus
    ) {
        self.id = id
        self.name = name
        self.startsAt = startsAt
        self.endsAt = endsAt
        self.status = status
    }
}
