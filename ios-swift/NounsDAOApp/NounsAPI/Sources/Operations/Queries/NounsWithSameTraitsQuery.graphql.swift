// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class NounsWithSameTraitsQuery: GraphQLQuery {
  public static let operationName: String = "NounsWithSameTraits"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query NounsWithSameTraits($where: Noun_filter = {seed_: {head: "94"}}) {
        nouns(where: $where) {
          __typename
          seed {
            __typename
            id
            head
            glasses
            body
            accessory
            background
          }
        }
      }
      """#
    ))

  public var `where`: GraphQLNullable<Noun_filter>

  public init(`where`: GraphQLNullable<Noun_filter> = .init(
    Noun_filter(seed_: .init(
      Seed_filter(head: "94")
    ))
  )) {
    self.`where` = `where`
  }

  public var __variables: Variables? { ["where": `where`] }

  public struct Data: NounsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("nouns", [Noun].self, arguments: ["where": .variable("where")]),
    ] }

    public var nouns: [Noun] { __data["nouns"] }

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
          .field("body", NounsAPI.BigInt.self),
          .field("accessory", NounsAPI.BigInt.self),
          .field("background", NounsAPI.BigInt.self),
        ] }

        /// The Noun's ERC721 token id
        public var id: NounsAPI.ID { __data["id"] }
        /// The head index
        public var head: NounsAPI.BigInt { __data["head"] }
        /// The glasses index
        public var glasses: NounsAPI.BigInt { __data["glasses"] }
        /// The body index
        public var body: NounsAPI.BigInt { __data["body"] }
        /// The accessory index
        public var accessory: NounsAPI.BigInt { __data["accessory"] }
        /// The background index
        public var background: NounsAPI.BigInt { __data["background"] }
      }
    }
  }
}
