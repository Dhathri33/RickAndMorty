//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: ResponseModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                CharacterImageView(
                    imageURL: character.imageURL,
                    cornerRadius: 0,
                    size: nil,
                    height: 280
                )

                VStack(alignment: .leading, spacing: 12) {
                    DetailRow(title: "Species", value: character.species)
                    DetailRow(title: "Status", value: character.status)
                    DetailRow(title: "Origin", value: character.origin?.name)

                    if let type = character.type,
                       !type.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                        DetailRow(title: "Type", value: type)
                    }

                    DetailRow(title: "Created", value: character.formattedCreatedDate)
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 24)
                
                ShareLink(item: shareText()) {
                    Label("Share", systemImage: "square.and.arrow.up")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .padding(.horizontal, 16)
                        .padding(.top, 8)
                }
            }
        }
        .navigationTitle(character.name ?? "Character")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func shareText() -> String {
        return """
        Name: \(character.name ?? "Unknown")
        Species: \(character.species ?? "Unknown")
        Status: \(character.status ?? "Unknown")
        Origin: \(character.origin?.name ?? "Unknown")
        Type: \(character.type ?? "-")
        Created: \(character.formattedCreatedDate)
        Image URL: \(character.image ?? "Unknown")
        """
    }
}
