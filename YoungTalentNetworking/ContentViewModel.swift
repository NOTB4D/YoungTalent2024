//
//  ContentViewModel.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import Foundation

extension ContentView {
    final class ViewModel: ObservableObject {
        @Published var movies: [MovieResponse] = []
        
        func getMovies() async {
            let result = await API.Movie.getMovie.fetch(requestModel: [MovieResponse].self)
            
            switch result {
            case let .success(response):
                await MainActor.run {
                    movies = response
                }
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
        
        func getUpComingMovies() async {
            let upComingResponse = await API.Movie.upComing.fetch(requestModel: [MovieResponse].self)
            
            switch upComingResponse {
            case .success(_):
                break
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
}
