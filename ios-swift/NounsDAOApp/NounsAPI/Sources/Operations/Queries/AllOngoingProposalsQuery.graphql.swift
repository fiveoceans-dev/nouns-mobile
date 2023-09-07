// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllOngoingProposalsQuery: GraphQLQuery {
  public static let operationName: String = "AllOngoingProposalsQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query AllOngoingProposalsQuery {
        _meta {
          __typename
          block {
            __typename
            timestamp
            number
            hash
          }
        }
        proposals(
          where: {status_in: [ACTIVE, PENDING]}
          orderBy: createdBlock
          orderDirection: desc
          first: 12
        ) {
          __typename
          id
          title
          status
          forVotes
          againstVotes
          abstainVotes
          quorumVotes
          totalSupply
          startBlock
          endBlock
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
      .field("proposals", [Proposal].self, arguments: [
        "where": ["status_in": ["ACTIVE", "PENDING"]],
        "orderBy": "createdBlock",
        "orderDirection": "desc",
        "first": 12
      ]),
    ] }

    /// Access to subgraph metadata
    public var _meta: _Meta? { __data["_meta"] }
    public var proposals: [Proposal] { __data["proposals"] }

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

    /// Proposal
    ///
    /// Parent Type: `Proposal`
    public struct Proposal: NounsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Proposal }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", NounsAPI.ID.self),
        .field("title", String.self),
        .field("status", GraphQLEnum<NounsAPI.ProposalStatus>.self),
        .field("forVotes", NounsAPI.BigInt.self),
        .field("againstVotes", NounsAPI.BigInt.self),
        .field("abstainVotes", NounsAPI.BigInt.self),
        .field("quorumVotes", NounsAPI.BigInt.self),
        .field("totalSupply", NounsAPI.BigInt.self),
        .field("startBlock", NounsAPI.BigInt.self),
        .field("endBlock", NounsAPI.BigInt.self),
      ] }

      /// Internal proposal ID, in this implementation it seems to be a autoincremental id
      public var id: NounsAPI.ID { __data["id"] }
      /// The proposal title, parsed from the description
      public var title: String { __data["title"] }
      /// Status of the proposal
      public var status: GraphQLEnum<NounsAPI.ProposalStatus> { __data["status"] }
      /// The number of votes in favor of the proposal
      public var forVotes: NounsAPI.BigInt { __data["forVotes"] }
      /// The number of votes against of the proposal
      public var againstVotes: NounsAPI.BigInt { __data["againstVotes"] }
      /// The number of votes to abstain on the proposal
      public var abstainVotes: NounsAPI.BigInt { __data["abstainVotes"] }
      /// The required number of votes for quorum at the time of proposal creation
      public var quorumVotes: NounsAPI.BigInt { __data["quorumVotes"] }
      /// Total supply when this proposal was created
      public var totalSupply: NounsAPI.BigInt { __data["totalSupply"] }
      /// Block number from where the voting starts
      public var startBlock: NounsAPI.BigInt { __data["startBlock"] }
      /// Block number from where the voting ends
      public var endBlock: NounsAPI.BigInt { __data["endBlock"] }
    }
  }
}
