//
//  CharacterRowView.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import SwiftUI

struct CharacterRowView: View {
    let character: ResponseModel

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            CharacterImageView(imageURL: character.imageURL)
            
            VStack(alignment: .leading, spacing: 6) {
                DetailRow(title: "Name", value: character.name, valueColor: .primary)
                DetailRow(title: "Species", value: character.species, valueColor: .secondary)
            }

            Spacer()
        }
        .padding(.vertical, 6)
    }
}
