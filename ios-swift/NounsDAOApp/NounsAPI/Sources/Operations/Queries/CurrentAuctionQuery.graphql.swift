// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CurrentAuctionQuery: GraphQLQuery {
  public static let operationName: String = "CurrentAuctionQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query CurrentAuctionQuery {
        _meta {
          __typename
          block {
            __typename
            timestamp
            number
            hash
          }
        }
        auctions(where: {settled: false}) {
          __typename
          id
          startTime
          endTime
          noun {
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
          bids(orderBy: amount, orderDirection: desc) {
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
      .field("_meta", _Meta?.self),
      .field("auctions", [Auction].self, arguments: ["where": ["settled": false]]),
    ] }

    /// Access to subgraph metadata
    public var _meta: _Meta? { __data["_meta"] }
    public var auctions: [Auction] { __data["auctions"] }

    /// _Meta
    ///
    /// Parent Type: `_Meta_`
    public struct _Meta: NounsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects._Meta_ }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("block", Block.self),
      ] }

      /// Information about a specific subgraph block. The hash of the block
      /// will be null if the _meta field has a block constraint that asks for
      /// a block number. It will be filled if the _meta field has no block constraint
      /// and therefore asks for the latest  block
      public var block: Block { __data["block"] }

      /// _Meta.Block
      ///
      /// Parent Type: `_Block_`
      public struct Block: NounsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects._Block_ }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("timestamp", Int?.self),
          .field("number", Int.self),
          .field("hash", NounsAPI.Bytes?.self),
        ] }

        /// Integer representation of the timestamp stored in blocks for the chain
        public var timestamp: Int? { __data["timestamp"] }
        /// The block number
        public var number: Int { __data["number"] }
        /// The hash of the block
        public var hash: NounsAPI.Bytes? { __data["hash"] }
      }
    }

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
        .field("noun", Noun.self),
        .field("bids", [Bid].self, arguments: [
          "orderBy": "amount",
          "orderDirection": "desc"
        ]),
      ] }

      /// The Noun's ERC721 token id
      public var id: NounsAPI.ID { __data["id"] }
      /// The time that the auction started
      public var startTime: NounsAPI.BigInt { __data["startTime"] }
      /// The time that the auction is scheduled to end
      public var endTime: NounsAPI.BigInt { __data["endTime"] }
      /// The Noun
      public var noun: Noun { __data["noun"] }
      /// The auction bids
      public var bids: [Bid] { __data["bids"] }

      /// Auction.Noun
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

        /// Auction.Noun.Seed
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
