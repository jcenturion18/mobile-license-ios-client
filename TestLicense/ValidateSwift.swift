//
//  ValidateSwift.swift
//  TestLicense
//
//  Created by Julian Centurion on 1/10/24.
//

import LicenseManager

class ValidateSwift {

    func doTheHarlemShake() {

        let headers = ["User-Agent": "iOS"]

        let request = RequestImp(device: "iOS", headers: headers, url: "http://127.0.0.1:3000/")
        ValidateKt.validate(request: request) { response, _ in
            if let error {

            }

            if let response {
                print(response)
            }
        }

    }
}

class RequestImp: Request {
    let device: String
    let headers: [String: String]
    let url: String

    init(device: String, headers: [String: String], url: String) {
        self.device = device
        self.headers = headers
        self.url = url
    }
}
