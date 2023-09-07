// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ProposalQuery: GraphQLQuery {
  public static let operationName: String = "ProposalQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query ProposalQuery($id: ID!) {
        proposals(where: {id: $id}) {
          __typename
          id
          title
          status
          forVotes
          againstVotes
          abstainVotes
          quorumVotes
          totalSupply
          description
        }
      }
      """#
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: NounsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("proposals", [Proposal].self, arguments: ["where": ["id": .variable("id")]]),
    ] }

    public var proposals: [Proposal] { __data["proposals"] }

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
        .field("description", String.self),
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
      /// The full proposal description, which includes the title
      public var description: String { __data["description"] }
    }
  }
}
