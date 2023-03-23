//
//  AssetSummaryData.swift
//  MyAssets
//
//  Created by 박경춘 on 2023/03/22.
//

import SwiftUI

class AssetSummaryData: ObservableObject {
    
    @Published var assets: [Asset] = load("assets.json")
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError(filename + "없음") }
    
    do {
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError(filename + "없음")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch {
        fatalError(filename + "파싱 안됌")
    }
}
