//
//  APIErrors.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import Foundation

enum APIErrors: Int, LocalizedError {
    case badRequest = 400
    case unAuthorized = 401
    case tooManyRequests = 429
    case serverError = 500
    case invalidURL
    case dataNil
    case decodingError
    case unknownError
    
    
    var errorDescription: String? {
        switch self {
        case .tooManyRequests:
            return "You made too many requests within a window of time and have been rate limited. Back off for a while.".localized()
        case .serverError:
            return "Server error.".localized()
        case .dataNil:
            return "Empty data.".localized()
        case .decodingError:
            return "Data has invalid format.".localized()
        default:
            return "Something goes wrong.".localized()
        }
    }
}

