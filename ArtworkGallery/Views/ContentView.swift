import SwiftUI

struct ContentView: View {
    @State private var artworks: [Artwork] = []
    @State private var isLoading = true
    @State private var errorMessage: String?
    
    var body: some View {
        NavigationStack {
            if isLoading {
                ProgressView()
                    .navigationTitle("Artwork Gallery")
            } else if let errorMessage = errorMessage {
                VStack {
                    Text("Error: \(errorMessage)")
                        .foregroundColor(.red)
                        .padding()
                }
                .navigationTitle("Artwork Gallery")
            } else {
                List(artworks) { artwork in
                    NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                        ArtworkRowView(artwork: artwork)
                    }
                }
                .navigationTitle("Artwork Gallery")
            }
        }
        .onAppear {
            loadArtworks()
        }
    }
    
    private func loadArtworks() {
        guard let url = Bundle.main.url(forResource: "artworksData", withExtension: "json") else {
            errorMessage = "Could not find artworksData.json"
            isLoading = false
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            artworks = try decoder.decode([Artwork].self, from: data)
            isLoading = false
        } catch {
            errorMessage = error.localizedDescription
            isLoading = false
        }
    }
}

#Preview {
    ContentView()
}
