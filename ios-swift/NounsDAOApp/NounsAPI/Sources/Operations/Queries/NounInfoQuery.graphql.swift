// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class NounInfoQuery: GraphQLQuery {
  public static let operationName: String = "NounInfoQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query NounInfoQuery($nounInfoID: ID!) {
        noun(id: $nounInfoID) {
          __typename
          seed {
            __typename
            id
            head
            glasses
            accessory
            body
            background
          }
        }
      }
      """#
    ))

  public var nounInfoID: ID

  public init(nounInfoID: ID) {
    self.nounInfoID = nounInfoID
  }

  public var __variables: Variables? { ["nounInfoID": nounInfoID] }

  public struct Data: NounsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("noun", Noun?.self, arguments: ["id": .variable("nounInfoID")]),
    ] }

    public var noun: Noun? { __data["noun"] }

    /// Noun
    ///
    /// Parent Type: `Noun`
    public struct Noun: NounsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Noun }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("seed", Seed?.self),
      ] }

      /// The seed used to determine the Noun's traits
      public var seed: Seed? { __data["seed"] }

      /// Noun.Seed
      ///
      /// Parent Type: `Seed`
      public struct Seed: NounsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Seed }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", NounsAPI.ID.self),
          .field("head", NounsAPI.BigInt.self),
          .field("glasses", NounsAPI.BigInt.self),
          .field("accessory", NounsAPI.BigInt.self),
          .field("body", NounsAPI.BigInt.self),
          .field("background", NounsAPI.BigInt.self),
        ] }

        /// The Noun's ERC721 token id
        public var id: NounsAPI.ID { __data["id"] }
        /// The head index
        public var head: NounsAPI.BigInt { __data["head"] }
        /// The glasses index
        public var glasses: NounsAPI.BigInt { __data["glasses"] }
        /// The accessory index
        public var accessory: NounsAPI.BigInt { __data["accessory"] }
        /// The body index
        public var body: NounsAPI.BigInt { __data["body"] }
        /// The background index
        public var background: NounsAPI.BigInt { __data["background"] }
      }
    }
  }
}
