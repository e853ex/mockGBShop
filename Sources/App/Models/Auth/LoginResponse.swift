//
//  File.swift
//  
//
//  Created by Сергей Васильев on 11.08.2021.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: User
    var errorMessage: String?
}
