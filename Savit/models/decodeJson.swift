//
//  decodeJson.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 02/08/2022.
//

import Foundation
import CoreLocation

var collections = decodeJsonFromJsonFile(jsonFileName: "collections.json")

func decodeJsonFromJsonFile(jsonFileName: String) -> [Collection] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Collection].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Collection]
}
