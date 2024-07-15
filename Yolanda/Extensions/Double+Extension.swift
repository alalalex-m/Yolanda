import Foundation


extension Double {
    
    func format(with unit: String) -> String {
        return "\(String(format: "%.0f", self)) \(unit)\(self != 1 ? "s" : "") "
    }
}
