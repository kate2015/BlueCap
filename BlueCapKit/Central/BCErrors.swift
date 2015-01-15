//
//  Errors.swift
//  BlueCap
//
//  Created by Troy Stribling on 7/5/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

import Foundation

public enum CharacteristicError : Int {
    case readTimeout        = 1
    case writeTimeout       = 2
    case notSerializable    = 3
    case readNotSupported   = 4
    case writeNotSupported  = 5
}


public enum ConnectoratorError : Int {
    case timeout            = 10
    case disconnect         = 11
    case forceDisconnect    = 12
    case failed             = 13
    case giveUp             = 14
}

public enum PeripheralError : Int {
    case discoveryTimeout   = 20
    case disconnected       = 21
}

public enum PeripheralManagerError : Int {
    case isAdvertising      = 40
}

struct BCError {
    static let domain = "BlueCap"
    
    static let characteristicReadTimeout = NSError(domain:domain, code:CharacteristicError.readTimeout.rawValue, userInfo:[NSLocalizedDescriptionKey:"Characteristic read timeout"])
    static let characteristicWriteTimeout = NSError(domain:domain, code:CharacteristicError.writeTimeout.rawValue, userInfo:[NSLocalizedDescriptionKey:"Characteristic write timeout"])
    static let characteristicNotSerilaizable = NSError(domain:domain, code:CharacteristicError.notSerializable.rawValue, userInfo:[NSLocalizedDescriptionKey:"Characteristic not serializable"])
    static let characteristicReadNotSupported = NSError(domain:domain, code:CharacteristicError.readNotSupported.rawValue, userInfo:[NSLocalizedDescriptionKey:"Characteristic read not supported"])
    static let characteristicWriteNotSupported = NSError(domain:domain, code:CharacteristicError.writeNotSupported.rawValue, userInfo:[NSLocalizedDescriptionKey:"Characteristic write not supported"])

    static let connectoratorTimeout = NSError(domain:domain, code:ConnectoratorError.timeout.rawValue, userInfo:[NSLocalizedDescriptionKey:"Connectorator timeout"])
    static let connectoratorDisconnect = NSError(domain:domain, code:ConnectoratorError.disconnect.rawValue, userInfo:[NSLocalizedDescriptionKey:"Connectorator disconnect"])
    static let connectoratorForcedDisconnect = NSError(domain:domain, code:ConnectoratorError.forceDisconnect.rawValue, userInfo:[NSLocalizedDescriptionKey:"Connectorator forced disconnected"])
    static let connectoratorFailed = NSError(domain:domain, code:ConnectoratorError.failed.rawValue, userInfo:[NSLocalizedDescriptionKey:"Connectorator connection failed"])
    static let connectoratorGiveUp = NSError(domain:domain, code:ConnectoratorError.giveUp.rawValue, userInfo:[NSLocalizedDescriptionKey:"Connectorator giving up"])

    static let peripheralDisconnected = NSError(domain:domain, code:PeripheralError.discoveryTimeout.rawValue, userInfo:[NSLocalizedDescriptionKey:"Peripheral disconnected timeout"])
    static let peripheralDiscoveryTimeout = NSError(domain:domain, code:PeripheralError.disconnected.rawValue, userInfo:[NSLocalizedDescriptionKey:"Peripheral discovery Timeout"])
        
    static let peripheralManagerIsAdvertising = NSError(domain:domain, code:PeripheralManagerError.isAdvertising.rawValue, userInfo:[NSLocalizedDescriptionKey:"Peripheral Manager is Advertising"])

}

