import SwiftUI

/// Color the *number* by urgency while keeping chart fills in the brand
/// color. The usage UI now shows remaining quota, so smaller numbers warn
/// more strongly even though upstream data still arrives as "used".
enum UrgencyColor {
    /// #E8A85A — over 70%.
    static let amber = Color(red: 232/255, green: 168/255, blue: 90/255)
    /// #E65F5F — over 90%.
    static let red = Color(red: 230/255, green: 95/255, blue: 95/255)

    static func value(_ percent: Double) -> Color {
        if percent <= 10 { return red }
        if percent <= 30 { return amber }
        return .white
    }
}
