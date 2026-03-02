import SwiftUI

struct ArtworkRowView: View {
    let artwork: Artwork
    
    var body: some View {
        HStack(spacing: 12) {
            Image(artwork.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(artwork.title)
                    .font(.headline)
                    .lineLimit(2)
                
                Text(artwork.artist)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .frame(height: 100)
    }
}

#Preview {
    let sampleArtwork = Artwork(
        artist: "Vincent van Gogh",
        title: "The Bedroom",
        description: "A famous painting",
        id: 1,
        imageName: "The_Bedroom"
    )
    ArtworkRowView(artwork: sampleArtwork)
}
