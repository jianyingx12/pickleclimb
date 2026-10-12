public enum CompetitionFormat: String, CaseIterable, Codable, Sendable {
    case singles
    case fixedPairDoubles = "fixed_pair_doubles"

    public var displayName: String {
        switch self {
        case .singles:
            "Singles"
        case .fixedPairDoubles:
            "Fixed-Pair Doubles"
        }
    }
}
