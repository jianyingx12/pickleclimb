public enum GeographicLevel: String, CaseIterable, Codable, Sendable {
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
        switch self {
        case .court:
            .neighborhood
        case .neighborhood:
            .city
        case .city:
            .state
        case .state:
            nil
        }
    }
}
