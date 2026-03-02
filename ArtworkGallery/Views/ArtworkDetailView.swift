import SwiftUI

struct ArtworkDetailView: View {
    let artwork: Artwork
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(artwork.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .shadow(radius: 8)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(artwork.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(artwork.artist)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Divider()
                        .padding(.vertical, 8)
                    
                    Text("About this artwork")
                        .font(.headline)
                    
                    Text(artwork.description)
                        .font(.body)
                        .lineSpacing(4)
                }
                .padding(.horizontal)
                .padding(.bottom, 16)
            }
        }
        .navigationTitle("Artwork Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ArtworkDetailView(
            artwork: Artwork(
                artist: "Vincent van Gogh",
                title: "The Bedroom",
                description: "A famous painting of a bedroom with vivid colors.",
                id: 1,
                imageName: "The_Bedroom"
            )
        )
    }
}
