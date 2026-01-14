//
//  CharacterImageView.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import SwiftUI

struct CharacterImageView: View {
    let imageURL: URL?
    var cornerRadius: CGFloat = 8
    var size: CGFloat? = 70
    var height: CGFloat? = nil

    var body: some View {
        AsyncImage(url: imageURL) { phase in
            switch phase {
            case .empty:
                    ProgressView()

            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()

            case .failure:
                    Image(systemName: "person.fill")

            @unknown default:
                EmptyView()
            }
        }
        .frame(
            width: size,
            height: height ?? size
        )
        .clipped()              
        .cornerRadius(cornerRadius)
    }
}
