//
//  NetworkManager.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import Foundation



final class NetworkManager: ObservableObject {
    
    static let shared = NetworkManager()
    
    private let scienceURL = "https://opentdb.com/api.php?amount=5&category=17&difficulty=easy&type=multiple"
    private let geographyURL = "https://opentdb.com/api.php?amount=5&category=22&difficulty=easy&type=multiple"
    private let historyURL = "https://opentdb.com/api.php?amount=5&category=23&difficulty=easy&type=multiple"
    private let mathURL = "https://opentdb.com/api.php?amount=5&category=19&difficulty=easy&type=multiple"
    
    private init() {}
    
    func getScienceQuiz(completed: @escaping (Result<[Questions], QuizError>) -> Void) {
        guard let url = URL(string: scienceURL) else {
            completed(.failure(.invalidURL))
            return
        }

        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(QuizResponse.self, from: data)
                completed(.success(decodedResponse.results))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }

    
    func getGeographyQuiz(completed: @escaping (Result<[Questions], QuizError>) -> Void) {
        guard let url = URL(string: geographyURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(QuizResponse.self, from: data)
                completed(.success(decodedResponse.results))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
    
    func getHistoryeQuiz(completed: @escaping (Result<[Questions], QuizError>) -> Void) {
        guard let url = URL(string: historyURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(QuizResponse.self, from: data)
                completed(.success(decodedResponse.results))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
    
    func getMathQuiz(completed: @escaping (Result<[Questions], QuizError>) -> Void) {
        guard let url = URL(string: mathURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(QuizResponse.self, from: data)
                completed(.success(decodedResponse.results))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
    
}
