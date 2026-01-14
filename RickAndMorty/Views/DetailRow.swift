//
//  DetailRow.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import SwiftUI

struct DetailRow: View {
    let title: String
    let value: String?
    var valueColor: Color = .secondary

    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 10) {
            Text(title)
                .font(.subheadline.weight(.semibold))
                .frame(width: 70, alignment: .leading)

            Text((value?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false) ? value! : "—")
                .font(.subheadline)
                .foregroundStyle(valueColor)

            Spacer()
        }
    }
}

