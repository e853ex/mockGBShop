//
//  File.swift
//  
//
//  Created by Сергей Васильев on 11.08.2021.
//

import Vapor

class AuthController {
    
    func register(_ req: Request) throws -> EventLoopFuture<StandartResponse> {

        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = StandartResponse(
            result: 1,
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.query.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)
        
        let response = LoginResponse(
            result: 1,
            user: User(id: 123, login: "geekbrains", name: "John", lastname: "Doe")
        )
        
        return req.eventLoop.future(response)
    }
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<StandartResponse> {

        guard let body = try? req.content.decode(ChangeUserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = StandartResponse(
            result: 1,
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<StandartResponse> {
        guard let body = try? req.query.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)
        
        let response = StandartResponse(
            result: 1,
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    
    
}
