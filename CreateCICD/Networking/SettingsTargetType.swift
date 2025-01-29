//
//  SettingsTargetType.swift
//  TDD
//
//  Created by Denny Arfansyah on 28/01/25.
//

import Foundation
import Moya

enum SettingsTargetType: TargetType {
    case getSettings
    
    var baseURL: URL { URL(string: "https://run.mocky.io/v3/")! }
    var path: String { "a5cf23b2-37d8-4ab0-9bd5-693abfad886c" }
    var method: Moya.Method { .get }
    var task: Moya.Task { .requestPlain }
    var headers: [String : String]? {
        [
            "X-Device-Info": "iOS",
            "Content-Type" : "application/vnd.api.v4+json",
            "Application-Version": "3.1.40",
            "X-Device-ID": "24629109-0F53-4B93-9614-659C4209C344"
        ]
    }
}
