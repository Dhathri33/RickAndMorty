//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//

import SwiftUI

struct HomeView: View {
    @State private var responseViewModel: ResponseViewModelProtocol
    @State private var searchText: String = ""
    @State private var path: [ResponseModel] = []
    
    init(responseViewModel: ResponseViewModelProtocol) {
        self.responseViewModel = responseViewModel
    }

    var body: some View {
        NavigationStack(path: $path) {
            List(responseViewModel.responseArray, id: \.id) { character in
                CharacterRowView(character: character)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            path.append(character)
                        }
                    }
            }
            .navigationTitle("Characters")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Search characters"
            )
            .task(id: searchText) {
                 await responseViewModel.getDataFromServer(searchKey: searchText)
            }
            .navigationDestination(for: ResponseModel.self) { character in
                CharacterDetailView(character: character)
            }
        }
    }
}

#Preview {
    HomeView(responseViewModel: ResponseViewModel())
}
