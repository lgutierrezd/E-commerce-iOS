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

public final class AskCategoriesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query askCategories {
      categories(first: 12, level: 0) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            name
            parent {
              __typename
              id
              name
            }
            children(first: 12) {
              __typename
              totalCount
              edges {
                __typename
                node {
                  __typename
                  id
                  name
                }
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "askCategories"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("categories", arguments: ["first": 12, "level": 0], type: .object(Category.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(categories: Category? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "categories": categories.flatMap { (value: Category) -> ResultMap in value.resultMap }])
    }

    /// List of the shop's categories.
    public var categories: Category? {
      get {
        return (resultMap["categories"] as? ResultMap).flatMap { Category(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "categories")
      }
    }

    public struct Category: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CategoryCountableConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "CategoryCountableConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CategoryCountableEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "CategoryCountableEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of the edge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Category"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("parent", type: .object(Parent.selections)),
              GraphQLField("children", arguments: ["first": 12], type: .object(Child.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String, parent: Parent? = nil, children: Child? = nil) {
            self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name, "parent": parent.flatMap { (value: Parent) -> ResultMap in value.resultMap }, "children": children.flatMap { (value: Child) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var parent: Parent? {
            get {
              return (resultMap["parent"] as? ResultMap).flatMap { Parent(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "parent")
            }
          }

          /// List of children of the category.
          public var children: Child? {
            get {
              return (resultMap["children"] as? ResultMap).flatMap { Child(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "children")
            }
          }

          public struct Parent: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Category"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, name: String) {
              self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }

          public struct Child: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CategoryCountableConnection"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("totalCount", type: .scalar(Int.self)),
                GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(totalCount: Int? = nil, edges: [Edge]) {
              self.init(unsafeResultMap: ["__typename": "CategoryCountableConnection", "totalCount": totalCount, "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// A total count of items in the collection.
            public var totalCount: Int? {
              get {
                return resultMap["totalCount"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "totalCount")
              }
            }

            public var edges: [Edge] {
              get {
                return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
              }
            }

            public struct Edge: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CategoryCountableEdge"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("node", type: .nonNull(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(node: Node) {
                self.init(unsafeResultMap: ["__typename": "CategoryCountableEdge", "node": node.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The item at the end of the edge.
              public var node: Node {
                get {
                  return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "node")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Category"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: GraphQLID, name: String) {
                  self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: GraphQLID {
                  get {
                    return resultMap["id"]! as! GraphQLID
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                public var name: String {
                  get {
                    return resultMap["name"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }
              }
            }
          }
        }
      }
    }
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

public final class FrontProductsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query frontProducts {
      products(
        first: 20
        channel: "default-channel"
        sortBy: {field: NAME, direction: ASC}
      ) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            name
            category {
              __typename
              id
              name
            }
            pricing {
              __typename
              priceRange {
                __typename
                start {
                  __typename
                  gross {
                    __typename
                    amount
                    currency
                  }
                }
              }
              discount {
                __typename
                gross {
                  __typename
                  amount
                  currency
                }
              }
              priceRangeUndiscounted {
                __typename
                start {
                  __typename
                  gross {
                    __typename
                    amount
                    currency
                  }
                }
              }
            }
            thumbnail {
              __typename
              url
            }
          }
        }
      }
    }
    """

  public let operationName: String = "frontProducts"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", arguments: ["first": 20, "channel": "default-channel", "sortBy": ["field": "NAME", "direction": "ASC"]], type: .object(Product.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: Product? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "products": products.flatMap { (value: Product) -> ResultMap in value.resultMap }])
    }

    /// List of the shop's products.
    public var products: Product? {
      get {
        return (resultMap["products"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductCountableConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "ProductCountableConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ProductCountableEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "ProductCountableEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of the edge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Product"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("category", type: .object(Category.selections)),
              GraphQLField("pricing", type: .object(Pricing.selections)),
              GraphQLField("thumbnail", type: .object(Thumbnail.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String, category: Category? = nil, pricing: Pricing? = nil, thumbnail: Thumbnail? = nil) {
            self.init(unsafeResultMap: ["__typename": "Product", "id": id, "name": name, "category": category.flatMap { (value: Category) -> ResultMap in value.resultMap }, "pricing": pricing.flatMap { (value: Pricing) -> ResultMap in value.resultMap }, "thumbnail": thumbnail.flatMap { (value: Thumbnail) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var category: Category? {
            get {
              return (resultMap["category"] as? ResultMap).flatMap { Category(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "category")
            }
          }

          /// Lists the storefront product's pricing, the current price and discounts, only meant for displaying.
          public var pricing: Pricing? {
            get {
              return (resultMap["pricing"] as? ResultMap).flatMap { Pricing(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "pricing")
            }
          }

          /// The main thumbnail for a product.
          public var thumbnail: Thumbnail? {
            get {
              return (resultMap["thumbnail"] as? ResultMap).flatMap { Thumbnail(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "thumbnail")
            }
          }

          public struct Category: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Category"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, name: String) {
              self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }

          public struct Pricing: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductPricingInfo"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("priceRange", type: .object(PriceRange.selections)),
                GraphQLField("discount", type: .object(Discount.selections)),
                GraphQLField("priceRangeUndiscounted", type: .object(PriceRangeUndiscounted.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(priceRange: PriceRange? = nil, discount: Discount? = nil, priceRangeUndiscounted: PriceRangeUndiscounted? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProductPricingInfo", "priceRange": priceRange.flatMap { (value: PriceRange) -> ResultMap in value.resultMap }, "discount": discount.flatMap { (value: Discount) -> ResultMap in value.resultMap }, "priceRangeUndiscounted": priceRangeUndiscounted.flatMap { (value: PriceRangeUndiscounted) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The discounted price range of the product variants.
            public var priceRange: PriceRange? {
              get {
                return (resultMap["priceRange"] as? ResultMap).flatMap { PriceRange(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "priceRange")
              }
            }

            /// The discount amount if in sale (null otherwise).
            public var discount: Discount? {
              get {
                return (resultMap["discount"] as? ResultMap).flatMap { Discount(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "discount")
              }
            }

            /// The undiscounted price range of the product variants.
            public var priceRangeUndiscounted: PriceRangeUndiscounted? {
              get {
                return (resultMap["priceRangeUndiscounted"] as? ResultMap).flatMap { PriceRangeUndiscounted(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "priceRangeUndiscounted")
              }
            }

            public struct PriceRange: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["TaxedMoneyRange"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("start", type: .object(Start.selections)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(start: Start? = nil) {
                self.init(unsafeResultMap: ["__typename": "TaxedMoneyRange", "start": start.flatMap { (value: Start) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Lower bound of a price range.
              public var start: Start? {
                get {
                  return (resultMap["start"] as? ResultMap).flatMap { Start(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "start")
                }
              }

              public struct Start: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["TaxedMoney"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("gross", type: .nonNull(.object(Gross.selections))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(gross: Gross) {
                  self.init(unsafeResultMap: ["__typename": "TaxedMoney", "gross": gross.resultMap])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Amount of money including taxes.
                public var gross: Gross {
                  get {
                    return Gross(unsafeResultMap: resultMap["gross"]! as! ResultMap)
                  }
                  set {
                    resultMap.updateValue(newValue.resultMap, forKey: "gross")
                  }
                }

                public struct Gross: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Money"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("amount", type: .nonNull(.scalar(Double.self))),
                      GraphQLField("currency", type: .nonNull(.scalar(String.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(amount: Double, currency: String) {
                    self.init(unsafeResultMap: ["__typename": "Money", "amount": amount, "currency": currency])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// Amount of money.
                  public var amount: Double {
                    get {
                      return resultMap["amount"]! as! Double
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "amount")
                    }
                  }

                  /// Currency code.
                  public var currency: String {
                    get {
                      return resultMap["currency"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "currency")
                    }
                  }
                }
              }
            }

            public struct Discount: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["TaxedMoney"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("gross", type: .nonNull(.object(Gross.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(gross: Gross) {
                self.init(unsafeResultMap: ["__typename": "TaxedMoney", "gross": gross.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Amount of money including taxes.
              public var gross: Gross {
                get {
                  return Gross(unsafeResultMap: resultMap["gross"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "gross")
                }
              }

              public struct Gross: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Money"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("amount", type: .nonNull(.scalar(Double.self))),
                    GraphQLField("currency", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(amount: Double, currency: String) {
                  self.init(unsafeResultMap: ["__typename": "Money", "amount": amount, "currency": currency])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Amount of money.
                public var amount: Double {
                  get {
                    return resultMap["amount"]! as! Double
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "amount")
                  }
                }

                /// Currency code.
                public var currency: String {
                  get {
                    return resultMap["currency"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "currency")
                  }
                }
              }
            }

            public struct PriceRangeUndiscounted: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["TaxedMoneyRange"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("start", type: .object(Start.selections)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(start: Start? = nil) {
                self.init(unsafeResultMap: ["__typename": "TaxedMoneyRange", "start": start.flatMap { (value: Start) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Lower bound of a price range.
              public var start: Start? {
                get {
                  return (resultMap["start"] as? ResultMap).flatMap { Start(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "start")
                }
              }

              public struct Start: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["TaxedMoney"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("gross", type: .nonNull(.object(Gross.selections))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(gross: Gross) {
                  self.init(unsafeResultMap: ["__typename": "TaxedMoney", "gross": gross.resultMap])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Amount of money including taxes.
                public var gross: Gross {
                  get {
                    return Gross(unsafeResultMap: resultMap["gross"]! as! ResultMap)
                  }
                  set {
                    resultMap.updateValue(newValue.resultMap, forKey: "gross")
                  }
                }

                public struct Gross: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Money"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("amount", type: .nonNull(.scalar(Double.self))),
                      GraphQLField("currency", type: .nonNull(.scalar(String.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(amount: Double, currency: String) {
                    self.init(unsafeResultMap: ["__typename": "Money", "amount": amount, "currency": currency])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// Amount of money.
                  public var amount: Double {
                    get {
                      return resultMap["amount"]! as! Double
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "amount")
                    }
                  }

                  /// Currency code.
                  public var currency: String {
                    get {
                      return resultMap["currency"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "currency")
                    }
                  }
                }
              }
            }
          }

          public struct Thumbnail: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Image"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(url: String) {
              self.init(unsafeResultMap: ["__typename": "Image", "url": url])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The URL of the image.
            public var url: String {
              get {
                return resultMap["url"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }
          }
        }
      }
    }
  }
}

public final class HomeStoreFrontQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query homeStoreFront {
      categories(first: 4, level: 0) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            name
            products(first: 4, channel: "default-channel") {
              __typename
              edges {
                __typename
                node {
                  __typename
                  id
                  name
                  thumbnail {
                    __typename
                    url
                  }
                  category {
                    __typename
                    id
                    name
                  }
                }
              }
            }
            backgroundImage {
              __typename
              url
            }
          }
        }
      }
    }
    """

  public let operationName: String = "homeStoreFront"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("categories", arguments: ["first": 4, "level": 0], type: .object(Category.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(categories: Category? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "categories": categories.flatMap { (value: Category) -> ResultMap in value.resultMap }])
    }

    /// List of the shop's categories.
    public var categories: Category? {
      get {
        return (resultMap["categories"] as? ResultMap).flatMap { Category(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "categories")
      }
    }

    public struct Category: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CategoryCountableConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "CategoryCountableConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CategoryCountableEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "CategoryCountableEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of the edge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Category"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("products", arguments: ["first": 4, "channel": "default-channel"], type: .object(Product.selections)),
              GraphQLField("backgroundImage", type: .object(BackgroundImage.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String, products: Product? = nil, backgroundImage: BackgroundImage? = nil) {
            self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name, "products": products.flatMap { (value: Product) -> ResultMap in value.resultMap }, "backgroundImage": backgroundImage.flatMap { (value: BackgroundImage) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// List of products in the category.
          public var products: Product? {
            get {
              return (resultMap["products"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "products")
            }
          }

          public var backgroundImage: BackgroundImage? {
            get {
              return (resultMap["backgroundImage"] as? ResultMap).flatMap { BackgroundImage(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "backgroundImage")
            }
          }

          public struct Product: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductCountableConnection"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(edges: [Edge]) {
              self.init(unsafeResultMap: ["__typename": "ProductCountableConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var edges: [Edge] {
              get {
                return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
              }
            }

            public struct Edge: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ProductCountableEdge"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("node", type: .nonNull(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(node: Node) {
                self.init(unsafeResultMap: ["__typename": "ProductCountableEdge", "node": node.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The item at the end of the edge.
              public var node: Node {
                get {
                  return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "node")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Product"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("thumbnail", type: .object(Thumbnail.selections)),
                    GraphQLField("category", type: .object(Category.selections)),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: GraphQLID, name: String, thumbnail: Thumbnail? = nil, category: Category? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Product", "id": id, "name": name, "thumbnail": thumbnail.flatMap { (value: Thumbnail) -> ResultMap in value.resultMap }, "category": category.flatMap { (value: Category) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: GraphQLID {
                  get {
                    return resultMap["id"]! as! GraphQLID
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                public var name: String {
                  get {
                    return resultMap["name"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// The main thumbnail for a product.
                public var thumbnail: Thumbnail? {
                  get {
                    return (resultMap["thumbnail"] as? ResultMap).flatMap { Thumbnail(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "thumbnail")
                  }
                }

                public var category: Category? {
                  get {
                    return (resultMap["category"] as? ResultMap).flatMap { Category(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "category")
                  }
                }

                public struct Thumbnail: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Image"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("url", type: .nonNull(.scalar(String.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(url: String) {
                    self.init(unsafeResultMap: ["__typename": "Image", "url": url])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// The URL of the image.
                  public var url: String {
                    get {
                      return resultMap["url"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "url")
                    }
                  }
                }

                public struct Category: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Category"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                      GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: GraphQLID, name: String) {
                    self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var id: GraphQLID {
                    get {
                      return resultMap["id"]! as! GraphQLID
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  public var name: String {
                    get {
                      return resultMap["name"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "name")
                    }
                  }
                }
              }
            }
          }

          public struct BackgroundImage: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Image"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(url: String) {
              self.init(unsafeResultMap: ["__typename": "Image", "url": url])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The URL of the image.
            public var url: String {
              get {
                return resultMap["url"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }
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
