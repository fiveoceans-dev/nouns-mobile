// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AuctionBidderQuery: GraphQLQuery {
  public static let operationName: String = "AuctionBidderQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query AuctionBidderQuery {
        auctions(where: {id: 1}) {
          __typename
          id
          startTime
          endTime
          bids {
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

  public init() {}

  public struct Data: NounsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("auctions", [Auction].self, arguments: ["where": ["id": 1]]),
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
        .field("startTime", NounsAPI.BigInt.self),
        .field("endTime", NounsAPI.BigInt.self),
        .field("bids", [Bid].self),
      ] }

      /// The Noun's ERC721 token id
      public var id: NounsAPI.ID { __data["id"] }
      /// The time that the auction started
      public var startTime: NounsAPI.BigInt { __data["startTime"] }
      /// The time that the auction is scheduled to end
      public var endTime: NounsAPI.BigInt { __data["endTime"] }
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
