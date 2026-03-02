import Foundation

struct Artwork: Codable, Identifiable {
    let artist: String
    let title: String
    let description: String
    let id: Int
    let imageName: String
}
