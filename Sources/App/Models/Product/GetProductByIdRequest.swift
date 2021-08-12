//
//  File.swift
//  
//
//  Created by Сергей Васильев on 11.08.2021.
//

import Vapor

struct GetProductByIdRequest: Content {
    
    let idProduct: Int
    
    enum CodingKeys: String, CodingKey {
        
        case idProduct = "id_product"
    }
}
