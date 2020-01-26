//
//  SKResponseError.swift
//  SkarbSDKExample
//
//  Created by Artem Hitrik on 1/19/20.
//  Copyright © 2020 Prodinfire. All rights reserved.
//

import Foundation

enum ResponseErrorCode {
  case noInternet
  case serverError
  case other
}


struct SKResponseError: Error {
  let errorCode: ResponseErrorCode
  let message: String

  static let genericRetryMessage = "An error occurred connecting to the server. Please try again in a minute."

  init() {
    errorCode = .other
    message = SKResponseError.genericRetryMessage
  }

  init(serverStatusCode: Int, message: String?) {
    switch serverStatusCode {
      case -1009:
        errorCode = .noInternet
        self.message = "Please check your internet connection."
      case 400..<600:
        errorCode = .serverError
        self.message = message ?? SKResponseError.genericRetryMessage
      default:
        errorCode = .other
        self.message = message ?? SKResponseError.genericRetryMessage
    }
  }
}
