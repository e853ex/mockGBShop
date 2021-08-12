//
//  File.swift
//  
//
//  Created by Сергей Васильев on 11.08.2021.
//

import Vapor

struct GetProductByIdResponse: Content {
    
    let result: Int
    var errorMessage: String?
    let product: Product
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case product = "product"
        case errorMessage = "error_message"
    }
}
