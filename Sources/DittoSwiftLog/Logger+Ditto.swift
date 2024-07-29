//  Logger+Ditto.swift
//  Created by Brian Plattenburg on 4/8/24.

import Logging
import DittoSwift

/// An extension on `swift-log`'s `Logger` to allow it to be used as the target for `DittoLogger`'s Custom Callback
extension Logging.Logger {
    /// To use, call `DittoLogger.setCustomLogCallback()` and pass in this function which has the same signature.
    /// e.g. for some `Logger` `myLogger`: `DittoLogger.setCustomLogCallback(myLogger.dittoLoggerCallback(level:message:)`
    public func dittoLoggerCallback(level: DittoSwift.DittoLogLevel, message: String) {
        let translatedLogLevel = Logging.Logger.Level(dittoLevel: level)
        let message = Logging.Logger.Message(stringLiteral: message)
        log(level: translatedLogLevel, message)
    }
}
