//
//  SearchResultVM.swift
//  MVVM-Demo
//
//  Created by de la Hera, Raul (R.) on 12/04/2023.
//

import Foundation

struct SearchResultVM {
    
    let model: SearchResult
    
    var trackName: String {
        model.trackName ?? ""
    }
    
    var imgUrl: URL? {
        URL(string: model.artworkUrl60 ?? "")
    }
    
    var fullPrice: String {
        guard let gPrice = model.trackPrice,
                let gCurrency = model.currency else { return "NA"}
        return gPrice.formatted(.currency(code: gCurrency))
    }
}

