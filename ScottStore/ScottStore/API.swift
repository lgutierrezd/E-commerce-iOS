// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// An enumeration.
public enum AccountErrorCode: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case activateOwnAccount
  case activateSuperuserAccount
  case duplicatedInputItem
  case deactivateOwnAccount
  case deactivateSuperuserAccount
  case deleteNonStaffUser
  case deleteOwnAccount
  case deleteStaffAccount
  case deleteSuperuserAccount
  case graphqlError
  case inactive
  case invalid
  case invalidPassword
  case leftNotManageablePermission
  case invalidCredentials
  case notFound
  case outOfScopeUser
  case outOfScopeGroup
  case outOfScopePermission
  case passwordEntirelyNumeric
  case passwordTooCommon
  case passwordTooShort
  case passwordTooSimilar
  case `required`
  case unique
  case jwtSignatureExpired
  case jwtInvalidToken
  case jwtDecodeError
  case jwtMissingToken
  case jwtInvalidCsrfToken
  case channelInactive
  case missingChannelSlug
  case accountNotConfirmed
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVATE_OWN_ACCOUNT": self = .activateOwnAccount
      case "ACTIVATE_SUPERUSER_ACCOUNT": self = .activateSuperuserAccount
      case "DUPLICATED_INPUT_ITEM": self = .duplicatedInputItem
      case "DEACTIVATE_OWN_ACCOUNT": self = .deactivateOwnAccount
      case "DEACTIVATE_SUPERUSER_ACCOUNT": self = .deactivateSuperuserAccount
      case "DELETE_NON_STAFF_USER": self = .deleteNonStaffUser
      case "DELETE_OWN_ACCOUNT": self = .deleteOwnAccount
      case "DELETE_STAFF_ACCOUNT": self = .deleteStaffAccount
      case "DELETE_SUPERUSER_ACCOUNT": self = .deleteSuperuserAccount
      case "GRAPHQL_ERROR": self = .graphqlError
      case "INACTIVE": self = .inactive
      case "INVALID": self = .invalid
      case "INVALID_PASSWORD": self = .invalidPassword
      case "LEFT_NOT_MANAGEABLE_PERMISSION": self = .leftNotManageablePermission
      case "INVALID_CREDENTIALS": self = .invalidCredentials
      case "NOT_FOUND": self = .notFound
      case "OUT_OF_SCOPE_USER": self = .outOfScopeUser
      case "OUT_OF_SCOPE_GROUP": self = .outOfScopeGroup
      case "OUT_OF_SCOPE_PERMISSION": self = .outOfScopePermission
      case "PASSWORD_ENTIRELY_NUMERIC": self = .passwordEntirelyNumeric
      case "PASSWORD_TOO_COMMON": self = .passwordTooCommon
      case "PASSWORD_TOO_SHORT": self = .passwordTooShort
      case "PASSWORD_TOO_SIMILAR": self = .passwordTooSimilar
      case "REQUIRED": self = .required
      case "UNIQUE": self = .unique
      case "JWT_SIGNATURE_EXPIRED": self = .jwtSignatureExpired
      case "JWT_INVALID_TOKEN": self = .jwtInvalidToken
      case "JWT_DECODE_ERROR": self = .jwtDecodeError
      case "JWT_MISSING_TOKEN": self = .jwtMissingToken
      case "JWT_INVALID_CSRF_TOKEN": self = .jwtInvalidCsrfToken
      case "CHANNEL_INACTIVE": self = .channelInactive
      case "MISSING_CHANNEL_SLUG": self = .missingChannelSlug
      case "ACCOUNT_NOT_CONFIRMED": self = .accountNotConfirmed
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .activateOwnAccount: return "ACTIVATE_OWN_ACCOUNT"
      case .activateSuperuserAccount: return "ACTIVATE_SUPERUSER_ACCOUNT"
      case .duplicatedInputItem: return "DUPLICATED_INPUT_ITEM"
      case .deactivateOwnAccount: return "DEACTIVATE_OWN_ACCOUNT"
      case .deactivateSuperuserAccount: return "DEACTIVATE_SUPERUSER_ACCOUNT"
      case .deleteNonStaffUser: return "DELETE_NON_STAFF_USER"
      case .deleteOwnAccount: return "DELETE_OWN_ACCOUNT"
      case .deleteStaffAccount: return "DELETE_STAFF_ACCOUNT"
      case .deleteSuperuserAccount: return "DELETE_SUPERUSER_ACCOUNT"
      case .graphqlError: return "GRAPHQL_ERROR"
      case .inactive: return "INACTIVE"
      case .invalid: return "INVALID"
      case .invalidPassword: return "INVALID_PASSWORD"
      case .leftNotManageablePermission: return "LEFT_NOT_MANAGEABLE_PERMISSION"
      case .invalidCredentials: return "INVALID_CREDENTIALS"
      case .notFound: return "NOT_FOUND"
      case .outOfScopeUser: return "OUT_OF_SCOPE_USER"
      case .outOfScopeGroup: return "OUT_OF_SCOPE_GROUP"
      case .outOfScopePermission: return "OUT_OF_SCOPE_PERMISSION"
      case .passwordEntirelyNumeric: return "PASSWORD_ENTIRELY_NUMERIC"
      case .passwordTooCommon: return "PASSWORD_TOO_COMMON"
      case .passwordTooShort: return "PASSWORD_TOO_SHORT"
      case .passwordTooSimilar: return "PASSWORD_TOO_SIMILAR"
      case .required: return "REQUIRED"
      case .unique: return "UNIQUE"
      case .jwtSignatureExpired: return "JWT_SIGNATURE_EXPIRED"
      case .jwtInvalidToken: return "JWT_INVALID_TOKEN"
      case .jwtDecodeError: return "JWT_DECODE_ERROR"
      case .jwtMissingToken: return "JWT_MISSING_TOKEN"
      case .jwtInvalidCsrfToken: return "JWT_INVALID_CSRF_TOKEN"
      case .channelInactive: return "CHANNEL_INACTIVE"
      case .missingChannelSlug: return "MISSING_CHANNEL_SLUG"
      case .accountNotConfirmed: return "ACCOUNT_NOT_CONFIRMED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: AccountErrorCode, rhs: AccountErrorCode) -> Bool {
    switch (lhs, rhs) {
      case (.activateOwnAccount, .activateOwnAccount): return true
      case (.activateSuperuserAccount, .activateSuperuserAccount): return true
      case (.duplicatedInputItem, .duplicatedInputItem): return true
      case (.deactivateOwnAccount, .deactivateOwnAccount): return true
      case (.deactivateSuperuserAccount, .deactivateSuperuserAccount): return true
      case (.deleteNonStaffUser, .deleteNonStaffUser): return true
      case (.deleteOwnAccount, .deleteOwnAccount): return true
      case (.deleteStaffAccount, .deleteStaffAccount): return true
      case (.deleteSuperuserAccount, .deleteSuperuserAccount): return true
      case (.graphqlError, .graphqlError): return true
      case (.inactive, .inactive): return true
      case (.invalid, .invalid): return true
      case (.invalidPassword, .invalidPassword): return true
      case (.leftNotManageablePermission, .leftNotManageablePermission): return true
      case (.invalidCredentials, .invalidCredentials): return true
      case (.notFound, .notFound): return true
      case (.outOfScopeUser, .outOfScopeUser): return true
      case (.outOfScopeGroup, .outOfScopeGroup): return true
      case (.outOfScopePermission, .outOfScopePermission): return true
      case (.passwordEntirelyNumeric, .passwordEntirelyNumeric): return true
      case (.passwordTooCommon, .passwordTooCommon): return true
      case (.passwordTooShort, .passwordTooShort): return true
      case (.passwordTooSimilar, .passwordTooSimilar): return true
      case (.required, .required): return true
      case (.unique, .unique): return true
      case (.jwtSignatureExpired, .jwtSignatureExpired): return true
      case (.jwtInvalidToken, .jwtInvalidToken): return true
      case (.jwtDecodeError, .jwtDecodeError): return true
      case (.jwtMissingToken, .jwtMissingToken): return true
      case (.jwtInvalidCsrfToken, .jwtInvalidCsrfToken): return true
      case (.channelInactive, .channelInactive): return true
      case (.missingChannelSlug, .missingChannelSlug): return true
      case (.accountNotConfirmed, .accountNotConfirmed): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [AccountErrorCode] {
    return [
      .activateOwnAccount,
      .activateSuperuserAccount,
      .duplicatedInputItem,
      .deactivateOwnAccount,
      .deactivateSuperuserAccount,
      .deleteNonStaffUser,
      .deleteOwnAccount,
      .deleteStaffAccount,
      .deleteSuperuserAccount,
      .graphqlError,
      .inactive,
      .invalid,
      .invalidPassword,
      .leftNotManageablePermission,
      .invalidCredentials,
      .notFound,
      .outOfScopeUser,
      .outOfScopeGroup,
      .outOfScopePermission,
      .passwordEntirelyNumeric,
      .passwordTooCommon,
      .passwordTooShort,
      .passwordTooSimilar,
      .required,
      .unique,
      .jwtSignatureExpired,
      .jwtInvalidToken,
      .jwtDecodeError,
      .jwtMissingToken,
      .jwtInvalidCsrfToken,
      .channelInactive,
      .missingChannelSlug,
      .accountNotConfirmed,
    ]
  }
}

public final class DeleteAllTokensMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation deleteAllTokens {
      tokensDeactivateAll {
        __typename
        accountErrors {
          __typename
          field
          message
          code
        }
      }
    }
    """

  public let operationName: String = "deleteAllTokens"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("tokensDeactivateAll", type: .object(TokensDeactivateAll.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(tokensDeactivateAll: TokensDeactivateAll? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "tokensDeactivateAll": tokensDeactivateAll.flatMap { (value: TokensDeactivateAll) -> ResultMap in value.resultMap }])
    }

    /// Deactivate all JWT tokens of the currently authenticated user.
    public var tokensDeactivateAll: TokensDeactivateAll? {
      get {
        return (resultMap["tokensDeactivateAll"] as? ResultMap).flatMap { TokensDeactivateAll(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "tokensDeactivateAll")
      }
    }

    public struct TokensDeactivateAll: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeactivateAllUserTokens"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("accountErrors", type: .nonNull(.list(.nonNull(.object(AccountError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(accountErrors: [AccountError]) {
        self.init(unsafeResultMap: ["__typename": "DeactivateAllUserTokens", "accountErrors": accountErrors.map { (value: AccountError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      @available(*, deprecated, message: "This field will be removed in Saleor 4.0. Use `errors` field instead.")
      public var accountErrors: [AccountError] {
        get {
          return (resultMap["accountErrors"] as! [ResultMap]).map { (value: ResultMap) -> AccountError in AccountError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: AccountError) -> ResultMap in value.resultMap }, forKey: "accountErrors")
        }
      }

      public struct AccountError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AccountError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .scalar(String.self)),
            GraphQLField("message", type: .scalar(String.self)),
            GraphQLField("code", type: .nonNull(.scalar(AccountErrorCode.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: String? = nil, message: String? = nil, code: AccountErrorCode) {
          self.init(unsafeResultMap: ["__typename": "AccountError", "field": field, "message": message, "code": code])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
        public var field: String? {
          get {
            return resultMap["field"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String? {
          get {
            return resultMap["message"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }

        /// The error code.
        public var code: AccountErrorCode {
          get {
            return resultMap["code"]! as! AccountErrorCode
          }
          set {
            resultMap.updateValue(newValue, forKey: "code")
          }
        }
      }
    }
  }
}

public final class LoginUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginUser($email: String!, $password: String!) {
      tokenCreate(email: $email, password: $password) {
        __typename
        token
        refreshToken
        csrfToken
        user {
          __typename
          email
        }
        errors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "loginUser"

  public var email: String
  public var password: String

  public init(email: String, password: String) {
    self.email = email
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("tokenCreate", arguments: ["email": GraphQLVariable("email"), "password": GraphQLVariable("password")], type: .object(TokenCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(tokenCreate: TokenCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "tokenCreate": tokenCreate.flatMap { (value: TokenCreate) -> ResultMap in value.resultMap }])
    }

    /// Create JWT token.
    public var tokenCreate: TokenCreate? {
      get {
        return (resultMap["tokenCreate"] as? ResultMap).flatMap { TokenCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "tokenCreate")
      }
    }

    public struct TokenCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CreateToken"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("refreshToken", type: .scalar(String.self)),
          GraphQLField("csrfToken", type: .scalar(String.self)),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("errors", type: .nonNull(.list(.nonNull(.object(Error.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(token: String? = nil, refreshToken: String? = nil, csrfToken: String? = nil, user: User? = nil, errors: [Error]) {
        self.init(unsafeResultMap: ["__typename": "CreateToken", "token": token, "refreshToken": refreshToken, "csrfToken": csrfToken, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "errors": errors.map { (value: Error) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// JWT token, required to authenticate.
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// JWT refresh token, required to re-generate access token.
      public var refreshToken: String? {
        get {
          return resultMap["refreshToken"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "refreshToken")
        }
      }

      /// CSRF token required to re-generate access token.
      public var csrfToken: String? {
        get {
          return resultMap["csrfToken"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "csrfToken")
        }
      }

      /// A user instance.
      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public var errors: [Error] {
        get {
          return (resultMap["errors"] as! [ResultMap]).map { (value: ResultMap) -> Error in Error(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Error) -> ResultMap in value.resultMap }, forKey: "errors")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(email: String) {
          self.init(unsafeResultMap: ["__typename": "User", "email": email])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var email: String {
          get {
            return resultMap["email"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }
      }

      public struct Error: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AccountError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .scalar(String.self)),
            GraphQLField("message", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: String? = nil, message: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "AccountError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
        public var field: String? {
          get {
            return resultMap["field"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String? {
          get {
            return resultMap["message"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}
