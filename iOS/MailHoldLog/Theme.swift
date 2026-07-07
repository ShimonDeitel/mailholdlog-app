import SwiftUI

/// Unique palette for Mail Hold Log: postal violet.
enum Theme {
    static let background = Color(hex: "#241E2E")
    static let accent = Color(hex: "#8B6FD1")
    static let cardBackground = Color(hex: "#241E2E").opacity(0.06)
    static let textPrimary = Color.primary
    static let textSecondary = Color.secondary

    static var titleFont: Font { .system(.title2, design: .rounded).bold() }
    static var bodyFont: Font { .system(.body, design: .rounded) }
    static var captionFont: Font { .system(.caption, design: .rounded) }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: s).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
