//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Antoine Goncalves on 05/07/2024.
//

import UIKit

class NetworkManager {
    static let shared   = NetworkManager()
    let baseURL         = "https://api.github.com/users/"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request. Please try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, "Unable to complete your request. Please check your internet connection")
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode === 200 else {
                
            }
        }
        
        task.resume()
    }
}
