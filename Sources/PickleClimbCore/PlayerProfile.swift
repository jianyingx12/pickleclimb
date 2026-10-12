import Foundation

public struct PlayerProfile: Identifiable, Codable, Hashable, Sendable {
    public let id: UUID
    public let displayName: String
    public let profileImageURL: URL?
    public let homeCourtID: UUID?
    public let joinedAt: Date

    public init(
        id: UUID,
        displayName: String,
        profileImageURL: URL? = nil,
        homeCourtID: UUID? = nil,
        joinedAt: Date
    ) {
        self.id = id
        self.displayName = displayName
        self.profileImageURL = profileImageURL
        self.homeCourtID = homeCourtID
        self.joinedAt = joinedAt
    }
}
