// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class NounAuctionsInfoQuery: GraphQLQuery {
  public static let operationName: String = "NounAuctionsInfoQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query NounAuctionsInfoQuery($nounId: ID!) {
        auctions(where: {id: $nounId}) {
          __typename
          id
          bids(first: 1, orderBy: amount, orderDirection: desc) {
            __typename
            amount
            bidder {
              __typename
              id
            }
          }
        }
      }
      """#
    ))

  public var nounId: ID

  public init(nounId: ID) {
    self.nounId = nounId
  }

  public var __variables: Variables? { ["nounId": nounId] }

  public struct Data: NounsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("auctions", [Auction].self, arguments: ["where": ["id": .variable("nounId")]]),
    ] }

    public var auctions: [Auction] { __data["auctions"] }

    /// Auction
    ///
    /// Parent Type: `Auction`
    public struct Auction: NounsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Auction }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", NounsAPI.ID.self),
        .field("bids", [Bid].self, arguments: [
          "first": 1,
          "orderBy": "amount",
          "orderDirection": "desc"
        ]),
      ] }

      /// The Noun's ERC721 token id
      public var id: NounsAPI.ID { __data["id"] }
      /// The auction bids
      public var bids: [Bid] { __data["bids"] }

      /// Auction.Bid
      ///
      /// Parent Type: `Bid`
      public struct Bid: NounsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Bid }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("amount", NounsAPI.BigInt.self),
          .field("bidder", Bidder?.self),
        ] }

        /// Bid amount
        public var amount: NounsAPI.BigInt { __data["amount"] }
        /// Bidder account
        public var bidder: Bidder? { __data["bidder"] }

        /// Auction.Bid.Bidder
        ///
        /// Parent Type: `Account`
        public struct Bidder: NounsAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Account }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", NounsAPI.ID.self),
          ] }

          /// An Account is any address that holds any amount of Nouns, the id used is the blockchain address.
          public var id: NounsAPI.ID { __data["id"] }
        }
      }
    }
  }
}
