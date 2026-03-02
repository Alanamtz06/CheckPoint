# Artwork Gallery SwiftUI App

A beautiful iOS app showcasing famous artworks with detailed information built with SwiftUI.

## Features

✨ **Gallery View** - Browse all 5 artworks in an elegant list format
📸 **High-Quality Images** - View detailed artwork photos
📖 **Detailed Information** - Artist name, title, and comprehensive descriptions
🎨 **Clean Design** - Modern SwiftUI interface with smooth navigation

## Project Structure

```
ArtworkGallery/
├── ArtworkGalleryApp.swift          # App entry point
├── Models/
│   └── Artwork.swift                # Data model for artwork
├── Views/
│   ├── ContentView.swift            # Main gallery list
│   ├── ArtworkRowView.swift         # List item component
│   └── ArtworkDetailView.swift      # Detail page
└── Resources/
    ├── Data/
    │   └── artworksData.json        # Artwork information
    └── Images/
        ├── The_Bedroom.jpg
        ├── A_Sunday_on_La_Grande_Jatte.jpg
        ├── Water_Lilies.jpg
        ├── Water_Lily_Pond.jpg
        └── The_Basket_of_Apples.jpg
```

## Artworks Included

1. **The Bedroom** - Vincent van Gogh
2. **A Sunday on La Grande Jatte** - Georges Seurat
3. **Water Lilies** - Claude Monet
4. **Water Lily Pond** - Claude Monet
5. **The Basket of Apples** - Paul Cézanne

## How to Build

1. Open `ArtworkGallery.xcodeproj` in Xcode
2. Select your target device/simulator
3. Press ⌘B to build or ⌘R to run

## Requirements

- Xcode 14.0+
- iOS 14.0+
- Swift 5.0+

## Architecture

The app uses SwiftUI with a clean architectural pattern:
- **Codable models** for JSON parsing
- **State management** with `@State` for loading states
- **NavigationStack** for navigation between views
- **Environment variables** for dismiss functionality
