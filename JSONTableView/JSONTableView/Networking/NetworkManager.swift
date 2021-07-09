//
//  NetworkManager.swift
//  JSONTableView
//
//  Created by Ramar Parham on 7/8/21.
//

import Foundation

struct NetworkManager {
    
    var urlString = "http://jsonplaceholder.typicode.com/users"
    
    func createUrl(from url: String) -> URL? {
        return URL(string: url)
    }
    
    func createRequest(with url: URL) -> URLRequest {
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        return request
    }
    
    func callService(completionHandler: @escaping (Data?) -> Void) {
        guard let url = createUrl(from: urlString) else {
            print("Failed to create a url object")
            completionHandler(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: createRequest(with: url)) {
            (data, _, error) in
            guard error == nil else {
                print("There was an error.")
                completionHandler(nil)
                return
            }
            
            guard let data = data else {
                print("There was no data returned.")
                completionHandler(nil)
                return
            }
            completionHandler(data)
        }
        task.resume()
    }
}

