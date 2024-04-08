//  LoggerLevel+Ditto.swift
//  Created by Brian Plattenburg on 4/8/24.

import Logging
import DittoSwift

/// Allows for easy conversion from `DittoSwift.DittoLogLevel` to `swift-log`'s `Logger.Level`
extension Logger.Level {
    init(dittoLevel: DittoSwift.DittoLogLevel) {
        switch dittoLevel {
        case .error:
            self = .error
        case .warning:
            self = .warning
        case .info:
            self = .info
        case .debug:
            self = .debug
        case .verbose:
            self = .trace
            /// In the unlikely event that `DittoSwift.DittoLogLevel` adds a new case, tag that as `.info` here
        @unknown default:
            self = .info
        }
    }
}
