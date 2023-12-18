//
//  ItemViewModel.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 18/12/23.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var item = [Item]()
    
    func fetchData() {
        if let url = URL(string: "https://657d3893853beeefdb9a669c.mockapi.io/api/v1/Asset") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                DispatchQueue.main.async {
                    if let error = error {
                        print("URLSession error: \(error.localizedDescription)")
                        return
                    }
                    
                    guard let data = data else {
                        print("No data received.")
                        return
                    }
                    
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode([Item].self, from: data)
                        self.item = results
                    } catch let decodingError {
                        print("Decoding error: \(decodingError)")
                    }
                }
            }
            task.resume()
        }
    }
}
