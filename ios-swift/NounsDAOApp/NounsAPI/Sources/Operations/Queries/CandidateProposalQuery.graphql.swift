// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CandidateProposalQuery: GraphQLQuery {
  public static let operationName: String = "CandidateProposalQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query CandidateProposalQuery($id: ID!) {
        proposalCandidates(where: {id: $id}) {
          __typename
          id
          proposer
          latestVersion {
            __typename
            content {
              __typename
              title
              proposer
              signatures
            }
          }
          createdTimestamp
          canceledTimestamp
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
      .field("proposalCandidates", [ProposalCandidate].self, arguments: ["where": ["id": .variable("id")]]),
    ] }

    public var proposalCandidates: [ProposalCandidate] { __data["proposalCandidates"] }

    /// ProposalCandidate
    ///
    /// Parent Type: `ProposalCandidate`
    public struct ProposalCandidate: NounsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.ProposalCandidate }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", NounsAPI.ID.self),
        .field("proposer", NounsAPI.Bytes.self),
        .field("latestVersion", LatestVersion.self),
        .field("createdTimestamp", NounsAPI.BigInt.self),
        .field("canceledTimestamp", NounsAPI.BigInt?.self),
      ] }

      /// A concatination of proposer and slug
      public var id: NounsAPI.ID { __data["id"] }
      /// The proposer account
      public var proposer: NounsAPI.Bytes { __data["proposer"] }
      /// Latest version of the proposal
      public var latestVersion: LatestVersion { __data["latestVersion"] }
      /// The proposal candidate creation timestamp
      public var createdTimestamp: NounsAPI.BigInt { __data["createdTimestamp"] }
      /// The timestamp at which this candidate was canceled
      public var canceledTimestamp: NounsAPI.BigInt? { __data["canceledTimestamp"] }

      /// ProposalCandidate.LatestVersion
      ///
      /// Parent Type: `ProposalCandidateVersion`
      public struct LatestVersion: NounsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.ProposalCandidateVersion }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("content", Content.self),
        ] }

        /// The proposal content
        public var content: Content { __data["content"] }

        /// ProposalCandidate.LatestVersion.Content
        ///
        /// Parent Type: `ProposalCandidateContent`
        public struct Content: NounsAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { NounsAPI.Objects.ProposalCandidateContent }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("title", String.self),
            .field("proposer", NounsAPI.Bytes.self),
            .field("signatures", [String]?.self),
          ] }

          /// The proposal title, parsed from the description
          public var title: String { __data["title"] }
          /// The proposer account
          public var proposer: NounsAPI.Bytes { __data["proposer"] }
          /// Signature data for the change
          public var signatures: [String]? { __data["signatures"] }
        }
      }
    }
  }
}
