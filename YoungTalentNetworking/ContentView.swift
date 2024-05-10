//
//  ContentView.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentView.ViewModel()

    var body: some View {
        VStack {
            List($viewModel.movies, id: \.title) { movie in
                HStack {
                    Text(movie.wrappedValue.title ?? "")
                }
            }
        }
        .padding()
        .task {
            await viewModel.getMovies()
        }
    }
}

#Preview {
    ContentView()
}
