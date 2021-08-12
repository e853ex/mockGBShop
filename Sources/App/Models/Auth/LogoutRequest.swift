//
//  File.swift
//  
//
//  Created by Сергей Васильев on 11.08.2021.
//

import Vapor

struct LogoutRequest: Content {
    
    let id: Int
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
    }

}
