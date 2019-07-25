// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: protos/gatt.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Specialized calls that genericize common operations
enum DefinedOperation: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case stayAwake // = 0
  case goToSleep // = 1
  case lock // = 2
  case unlock // = 3
  case song // = 4
  case stopSong // = 5
  case publicKey // = 6
  case UNRECOGNIZED(Int)

  init() {
    self = .stayAwake
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .stayAwake
    case 1: self = .goToSleep
    case 2: self = .lock
    case 3: self = .unlock
    case 4: self = .song
    case 5: self = .stopSong
    case 6: self = .publicKey
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .stayAwake: return 0
    case .goToSleep: return 1
    case .lock: return 2
    case .unlock: return 3
    case .song: return 4
    case .stopSong: return 5
    case .publicKey: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension DefinedOperation: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [DefinedOperation] = [
    .stayAwake,
    .goToSleep,
    .lock,
    .unlock,
    .song,
    .stopSong,
    .publicKey,
  ]
}

#endif  // swift(>=4.2)

struct GattOperationList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Use the device ID to allow for ease of creating operations that all should be run on the same device
  var deviceID: String = String()

  var operations: [GattOperation] = []

  var disconnectOnCompletion: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct GattCall {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var serviceUuid: String = String()

  var characteristicUuid: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// An operation can either be a direct service/char uuid or a defined op
struct GattOperation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var deviceID: String {
    get {return _storage._deviceID}
    set {_uniqueStorage()._deviceID = newValue}
  }

  var operation: OneOf_Operation? {
    get {return _storage._operation}
    set {_uniqueStorage()._operation = newValue}
  }

  var definedOperation: DefinedOperation {
    get {
      if case .definedOperation(let v)? = _storage._operation {return v}
      return .stayAwake
    }
    set {_uniqueStorage()._operation = .definedOperation(newValue)}
  }

  var gattCall: GattCall {
    get {
      if case .gattCall(let v)? = _storage._operation {return v}
      return GattCall()
    }
    set {_uniqueStorage()._operation = .gattCall(newValue)}
  }

  var writeRequest: GattOperation.Write {
    get {return _storage._writeRequest ?? GattOperation.Write()}
    set {_uniqueStorage()._writeRequest = newValue}
  }
  /// Returns true if `writeRequest` has been explicitly set.
  var hasWriteRequest: Bool {return _storage._writeRequest != nil}
  /// Clears the value of `writeRequest`. Subsequent reads from it will return its default value.
  mutating func clearWriteRequest() {_uniqueStorage()._writeRequest = nil}

  var disconnectOnCompletion: Bool {
    get {return _storage._disconnectOnCompletion}
    set {_uniqueStorage()._disconnectOnCompletion = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Operation: Equatable {
    case definedOperation(DefinedOperation)
    case gattCall(GattCall)

  #if !swift(>=4.1)
    static func ==(lhs: GattOperation.OneOf_Operation, rhs: GattOperation.OneOf_Operation) -> Bool {
      switch (lhs, rhs) {
      case (.definedOperation(let l), .definedOperation(let r)): return l == r
      case (.gattCall(let l), .gattCall(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  struct Write {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var request: Data = SwiftProtobuf.Internal.emptyData

    var requiresResponse: Bool = false

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct GattResponseList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var responses: [GattResponse] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct GattResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var deviceID: String {
    get {return _storage._deviceID}
    set {_uniqueStorage()._deviceID = newValue}
  }

  var operation: OneOf_Operation? {
    get {return _storage._operation}
    set {_uniqueStorage()._operation = newValue}
  }

  var definedOperation: DefinedOperation {
    get {
      if case .definedOperation(let v)? = _storage._operation {return v}
      return .stayAwake
    }
    set {_uniqueStorage()._operation = .definedOperation(newValue)}
  }

  var gattCall: GattCall {
    get {
      if case .gattCall(let v)? = _storage._operation {return v}
      return GattCall()
    }
    set {_uniqueStorage()._operation = .gattCall(newValue)}
  }

  var response: Data {
    get {return _storage._response}
    set {_uniqueStorage()._response = newValue}
  }

  var error: String {
    get {return _storage._error}
    set {_uniqueStorage()._error = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Operation: Equatable {
    case definedOperation(DefinedOperation)
    case gattCall(GattCall)

  #if !swift(>=4.1)
    static func ==(lhs: GattResponse.OneOf_Operation, rhs: GattResponse.OneOf_Operation) -> Bool {
      switch (lhs, rhs) {
      case (.definedOperation(let l), .definedOperation(let r)): return l == r
      case (.gattCall(let l), .gattCall(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension DefinedOperation: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STAY_AWAKE"),
    1: .same(proto: "GO_TO_SLEEP"),
    2: .same(proto: "LOCK"),
    3: .same(proto: "UNLOCK"),
    4: .same(proto: "SONG"),
    5: .same(proto: "STOP_SONG"),
    6: .same(proto: "PUBLIC_KEY"),
  ]
}

extension GattOperationList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "GattOperationList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "device_id"),
    2: .same(proto: "operations"),
    3: .standard(proto: "disconnect_on_completion"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.deviceID)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.operations)
      case 3: try decoder.decodeSingularBoolField(value: &self.disconnectOnCompletion)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.deviceID.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceID, fieldNumber: 1)
    }
    if !self.operations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.operations, fieldNumber: 2)
    }
    if self.disconnectOnCompletion != false {
      try visitor.visitSingularBoolField(value: self.disconnectOnCompletion, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GattOperationList, rhs: GattOperationList) -> Bool {
    if lhs.deviceID != rhs.deviceID {return false}
    if lhs.operations != rhs.operations {return false}
    if lhs.disconnectOnCompletion != rhs.disconnectOnCompletion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GattCall: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "GattCall"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "service_uuid"),
    2: .standard(proto: "characteristic_uuid"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.serviceUuid)
      case 2: try decoder.decodeSingularStringField(value: &self.characteristicUuid)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.serviceUuid.isEmpty {
      try visitor.visitSingularStringField(value: self.serviceUuid, fieldNumber: 1)
    }
    if !self.characteristicUuid.isEmpty {
      try visitor.visitSingularStringField(value: self.characteristicUuid, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GattCall, rhs: GattCall) -> Bool {
    if lhs.serviceUuid != rhs.serviceUuid {return false}
    if lhs.characteristicUuid != rhs.characteristicUuid {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GattOperation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "GattOperation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "device_id"),
    2: .standard(proto: "defined_operation"),
    3: .standard(proto: "gatt_call"),
    4: .standard(proto: "write_request"),
    5: .standard(proto: "disconnect_on_completion"),
  ]

  fileprivate class _StorageClass {
    var _deviceID: String = String()
    var _operation: GattOperation.OneOf_Operation?
    var _writeRequest: GattOperation.Write? = nil
    var _disconnectOnCompletion: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _deviceID = source._deviceID
      _operation = source._operation
      _writeRequest = source._writeRequest
      _disconnectOnCompletion = source._disconnectOnCompletion
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._deviceID)
        case 2:
          if _storage._operation != nil {try decoder.handleConflictingOneOf()}
          var v: DefinedOperation?
          try decoder.decodeSingularEnumField(value: &v)
          if let v = v {_storage._operation = .definedOperation(v)}
        case 3:
          var v: GattCall?
          if let current = _storage._operation {
            try decoder.handleConflictingOneOf()
            if case .gattCall(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._operation = .gattCall(v)}
        case 4: try decoder.decodeSingularMessageField(value: &_storage._writeRequest)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._disconnectOnCompletion)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._deviceID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._deviceID, fieldNumber: 1)
      }
      switch _storage._operation {
      case .definedOperation(let v)?:
        try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
      case .gattCall(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
      if let v = _storage._writeRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._disconnectOnCompletion != false {
        try visitor.visitSingularBoolField(value: _storage._disconnectOnCompletion, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GattOperation, rhs: GattOperation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._deviceID != rhs_storage._deviceID {return false}
        if _storage._operation != rhs_storage._operation {return false}
        if _storage._writeRequest != rhs_storage._writeRequest {return false}
        if _storage._disconnectOnCompletion != rhs_storage._disconnectOnCompletion {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GattOperation.Write: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = GattOperation.protoMessageName + ".Write"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "request"),
    2: .standard(proto: "requires_response"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.request)
      case 2: try decoder.decodeSingularBoolField(value: &self.requiresResponse)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.request.isEmpty {
      try visitor.visitSingularBytesField(value: self.request, fieldNumber: 1)
    }
    if self.requiresResponse != false {
      try visitor.visitSingularBoolField(value: self.requiresResponse, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GattOperation.Write, rhs: GattOperation.Write) -> Bool {
    if lhs.request != rhs.request {return false}
    if lhs.requiresResponse != rhs.requiresResponse {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GattResponseList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "GattResponseList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "responses"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.responses)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.responses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.responses, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GattResponseList, rhs: GattResponseList) -> Bool {
    if lhs.responses != rhs.responses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GattResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "GattResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "device_id"),
    2: .standard(proto: "defined_operation"),
    3: .standard(proto: "gatt_call"),
    4: .same(proto: "response"),
    5: .same(proto: "error"),
  ]

  fileprivate class _StorageClass {
    var _deviceID: String = String()
    var _operation: GattResponse.OneOf_Operation?
    var _response: Data = SwiftProtobuf.Internal.emptyData
    var _error: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _deviceID = source._deviceID
      _operation = source._operation
      _response = source._response
      _error = source._error
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._deviceID)
        case 2:
          if _storage._operation != nil {try decoder.handleConflictingOneOf()}
          var v: DefinedOperation?
          try decoder.decodeSingularEnumField(value: &v)
          if let v = v {_storage._operation = .definedOperation(v)}
        case 3:
          var v: GattCall?
          if let current = _storage._operation {
            try decoder.handleConflictingOneOf()
            if case .gattCall(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._operation = .gattCall(v)}
        case 4: try decoder.decodeSingularBytesField(value: &_storage._response)
        case 5: try decoder.decodeSingularStringField(value: &_storage._error)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._deviceID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._deviceID, fieldNumber: 1)
      }
      switch _storage._operation {
      case .definedOperation(let v)?:
        try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
      case .gattCall(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
      if !_storage._response.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._response, fieldNumber: 4)
      }
      if !_storage._error.isEmpty {
        try visitor.visitSingularStringField(value: _storage._error, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GattResponse, rhs: GattResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._deviceID != rhs_storage._deviceID {return false}
        if _storage._operation != rhs_storage._operation {return false}
        if _storage._response != rhs_storage._response {return false}
        if _storage._error != rhs_storage._error {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
