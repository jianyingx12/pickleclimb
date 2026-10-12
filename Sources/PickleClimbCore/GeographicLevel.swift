public enum GeographicLevel: Int, CaseIterable, Codable, Sendable {
    case court
    case neighborhood
    case city
    case state

    public var displayName: String {
        switch self {
        case .court:
            "Court"
        case .neighborhood:
            "Neighborhood"
        case .city:
            "City"
        case .state:
            "State"
        }
    }

    public var next: GeographicLevel? {
        GeographicLevel(rawValue: rawValue + 1)
    }
}
