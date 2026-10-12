import Foundation

public struct Court: Identifiable, Codable, Hashable, Sendable {
    public let id: UUID
    public let geographicAreaID: UUID
    public let name: String
    public let address: String
    public let latitude: Double
    public let longitude: Double
    public let imageURLs: [URL]

    public init(
        id: UUID,
        geographicAreaID: UUID,
        name: String,
        address: String,
        latitude: Double,
        longitude: Double,
        imageURLs: [URL] = []
    ) {
        self.id = id
        self.geographicAreaID = geographicAreaID
        self.name = name
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        self.imageURLs = imageURLs
    }
}
