//
//  File.swift
//  
//
//  Created by Сергей Васильев on 11.08.2021.
//

import Vapor

struct GetAllProductResponse: Content {
    
    let result: Int
    let pageNumber: Int
    var errorMessage: String?
    let products: [Product]
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case pageNumber = "page_number"
        case products = "products"
        case errorMessage = "error_message"
    }
}
