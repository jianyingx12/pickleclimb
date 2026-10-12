import Foundation

public struct GeographicArea: Identifiable, Codable, Hashable, Sendable {
    public let id: UUID
    public let name: String
    public let level: GeographicLevel
    public let parentID: UUID?

    public init(
        id: UUID,
        name: String,
        level: GeographicLevel,
        parentID: UUID? = nil
    ) {
        self.id = id
        self.name = name
        self.level = level
        self.parentID = parentID
    }
}
