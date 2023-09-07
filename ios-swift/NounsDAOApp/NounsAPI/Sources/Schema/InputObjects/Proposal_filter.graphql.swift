// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct Proposal_filter: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: GraphQLNullable<ID> = nil,
    id_not: GraphQLNullable<ID> = nil,
    id_gt: GraphQLNullable<ID> = nil,
    id_lt: GraphQLNullable<ID> = nil,
    id_gte: GraphQLNullable<ID> = nil,
    id_lte: GraphQLNullable<ID> = nil,
    id_in: GraphQLNullable<[ID]> = nil,
    id_not_in: GraphQLNullable<[ID]> = nil,
    proposer: GraphQLNullable<String> = nil,
    proposer_not: GraphQLNullable<String> = nil,
    proposer_gt: GraphQLNullable<String> = nil,
    proposer_lt: GraphQLNullable<String> = nil,
    proposer_gte: GraphQLNullable<String> = nil,
    proposer_lte: GraphQLNullable<String> = nil,
    proposer_in: GraphQLNullable<[String]> = nil,
    proposer_not_in: GraphQLNullable<[String]> = nil,
    proposer_contains: GraphQLNullable<String> = nil,
    proposer_contains_nocase: GraphQLNullable<String> = nil,
    proposer_not_contains: GraphQLNullable<String> = nil,
    proposer_not_contains_nocase: GraphQLNullable<String> = nil,
    proposer_starts_with: GraphQLNullable<String> = nil,
    proposer_starts_with_nocase: GraphQLNullable<String> = nil,
    proposer_not_starts_with: GraphQLNullable<String> = nil,
    proposer_not_starts_with_nocase: GraphQLNullable<String> = nil,
    proposer_ends_with: GraphQLNullable<String> = nil,
    proposer_ends_with_nocase: GraphQLNullable<String> = nil,
    proposer_not_ends_with: GraphQLNullable<String> = nil,
    proposer_not_ends_with_nocase: GraphQLNullable<String> = nil,
    proposer_: GraphQLNullable<Delegate_filter> = nil,
    signers: GraphQLNullable<[String]> = nil,
    signers_not: GraphQLNullable<[String]> = nil,
    signers_contains: GraphQLNullable<[String]> = nil,
    signers_contains_nocase: GraphQLNullable<[String]> = nil,
    signers_not_contains: GraphQLNullable<[String]> = nil,
    signers_not_contains_nocase: GraphQLNullable<[String]> = nil,
    signers_: GraphQLNullable<Delegate_filter> = nil,
    targets: GraphQLNullable<[Bytes]> = nil,
    targets_not: GraphQLNullable<[Bytes]> = nil,
    targets_contains: GraphQLNullable<[Bytes]> = nil,
    targets_contains_nocase: GraphQLNullable<[Bytes]> = nil,
    targets_not_contains: GraphQLNullable<[Bytes]> = nil,
    targets_not_contains_nocase: GraphQLNullable<[Bytes]> = nil,
    values: GraphQLNullable<[BigInt]> = nil,
    values_not: GraphQLNullable<[BigInt]> = nil,
    values_contains: GraphQLNullable<[BigInt]> = nil,
    values_contains_nocase: GraphQLNullable<[BigInt]> = nil,
    values_not_contains: GraphQLNullable<[BigInt]> = nil,
    values_not_contains_nocase: GraphQLNullable<[BigInt]> = nil,
    signatures: GraphQLNullable<[String]> = nil,
    signatures_not: GraphQLNullable<[String]> = nil,
    signatures_contains: GraphQLNullable<[String]> = nil,
    signatures_contains_nocase: GraphQLNullable<[String]> = nil,
    signatures_not_contains: GraphQLNullable<[String]> = nil,
    signatures_not_contains_nocase: GraphQLNullable<[String]> = nil,
    calldatas: GraphQLNullable<[Bytes]> = nil,
    calldatas_not: GraphQLNullable<[Bytes]> = nil,
    calldatas_contains: GraphQLNullable<[Bytes]> = nil,
    calldatas_contains_nocase: GraphQLNullable<[Bytes]> = nil,
    calldatas_not_contains: GraphQLNullable<[Bytes]> = nil,
    calldatas_not_contains_nocase: GraphQLNullable<[Bytes]> = nil,
    createdTimestamp: GraphQLNullable<BigInt> = nil,
    createdTimestamp_not: GraphQLNullable<BigInt> = nil,
    createdTimestamp_gt: GraphQLNullable<BigInt> = nil,
    createdTimestamp_lt: GraphQLNullable<BigInt> = nil,
    createdTimestamp_gte: GraphQLNullable<BigInt> = nil,
    createdTimestamp_lte: GraphQLNullable<BigInt> = nil,
    createdTimestamp_in: GraphQLNullable<[BigInt]> = nil,
    createdTimestamp_not_in: GraphQLNullable<[BigInt]> = nil,
    createdBlock: GraphQLNullable<BigInt> = nil,
    createdBlock_not: GraphQLNullable<BigInt> = nil,
    createdBlock_gt: GraphQLNullable<BigInt> = nil,
    createdBlock_lt: GraphQLNullable<BigInt> = nil,
    createdBlock_gte: GraphQLNullable<BigInt> = nil,
    createdBlock_lte: GraphQLNullable<BigInt> = nil,
    createdBlock_in: GraphQLNullable<[BigInt]> = nil,
    createdBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    lastUpdatedTimestamp: GraphQLNullable<BigInt> = nil,
    lastUpdatedTimestamp_not: GraphQLNullable<BigInt> = nil,
    lastUpdatedTimestamp_gt: GraphQLNullable<BigInt> = nil,
    lastUpdatedTimestamp_lt: GraphQLNullable<BigInt> = nil,
    lastUpdatedTimestamp_gte: GraphQLNullable<BigInt> = nil,
    lastUpdatedTimestamp_lte: GraphQLNullable<BigInt> = nil,
    lastUpdatedTimestamp_in: GraphQLNullable<[BigInt]> = nil,
    lastUpdatedTimestamp_not_in: GraphQLNullable<[BigInt]> = nil,
    lastUpdatedBlock: GraphQLNullable<BigInt> = nil,
    lastUpdatedBlock_not: GraphQLNullable<BigInt> = nil,
    lastUpdatedBlock_gt: GraphQLNullable<BigInt> = nil,
    lastUpdatedBlock_lt: GraphQLNullable<BigInt> = nil,
    lastUpdatedBlock_gte: GraphQLNullable<BigInt> = nil,
    lastUpdatedBlock_lte: GraphQLNullable<BigInt> = nil,
    lastUpdatedBlock_in: GraphQLNullable<[BigInt]> = nil,
    lastUpdatedBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    createdTransactionHash: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_not: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_gt: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_lt: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_gte: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_lte: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_in: GraphQLNullable<[Bytes]> = nil,
    createdTransactionHash_not_in: GraphQLNullable<[Bytes]> = nil,
    createdTransactionHash_contains: GraphQLNullable<Bytes> = nil,
    createdTransactionHash_not_contains: GraphQLNullable<Bytes> = nil,
    startBlock: GraphQLNullable<BigInt> = nil,
    startBlock_not: GraphQLNullable<BigInt> = nil,
    startBlock_gt: GraphQLNullable<BigInt> = nil,
    startBlock_lt: GraphQLNullable<BigInt> = nil,
    startBlock_gte: GraphQLNullable<BigInt> = nil,
    startBlock_lte: GraphQLNullable<BigInt> = nil,
    startBlock_in: GraphQLNullable<[BigInt]> = nil,
    startBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    endBlock: GraphQLNullable<BigInt> = nil,
    endBlock_not: GraphQLNullable<BigInt> = nil,
    endBlock_gt: GraphQLNullable<BigInt> = nil,
    endBlock_lt: GraphQLNullable<BigInt> = nil,
    endBlock_gte: GraphQLNullable<BigInt> = nil,
    endBlock_lte: GraphQLNullable<BigInt> = nil,
    endBlock_in: GraphQLNullable<[BigInt]> = nil,
    endBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    proposalThreshold: GraphQLNullable<BigInt> = nil,
    proposalThreshold_not: GraphQLNullable<BigInt> = nil,
    proposalThreshold_gt: GraphQLNullable<BigInt> = nil,
    proposalThreshold_lt: GraphQLNullable<BigInt> = nil,
    proposalThreshold_gte: GraphQLNullable<BigInt> = nil,
    proposalThreshold_lte: GraphQLNullable<BigInt> = nil,
    proposalThreshold_in: GraphQLNullable<[BigInt]> = nil,
    proposalThreshold_not_in: GraphQLNullable<[BigInt]> = nil,
    quorumVotes: GraphQLNullable<BigInt> = nil,
    quorumVotes_not: GraphQLNullable<BigInt> = nil,
    quorumVotes_gt: GraphQLNullable<BigInt> = nil,
    quorumVotes_lt: GraphQLNullable<BigInt> = nil,
    quorumVotes_gte: GraphQLNullable<BigInt> = nil,
    quorumVotes_lte: GraphQLNullable<BigInt> = nil,
    quorumVotes_in: GraphQLNullable<[BigInt]> = nil,
    quorumVotes_not_in: GraphQLNullable<[BigInt]> = nil,
    forVotes: GraphQLNullable<BigInt> = nil,
    forVotes_not: GraphQLNullable<BigInt> = nil,
    forVotes_gt: GraphQLNullable<BigInt> = nil,
    forVotes_lt: GraphQLNullable<BigInt> = nil,
    forVotes_gte: GraphQLNullable<BigInt> = nil,
    forVotes_lte: GraphQLNullable<BigInt> = nil,
    forVotes_in: GraphQLNullable<[BigInt]> = nil,
    forVotes_not_in: GraphQLNullable<[BigInt]> = nil,
    againstVotes: GraphQLNullable<BigInt> = nil,
    againstVotes_not: GraphQLNullable<BigInt> = nil,
    againstVotes_gt: GraphQLNullable<BigInt> = nil,
    againstVotes_lt: GraphQLNullable<BigInt> = nil,
    againstVotes_gte: GraphQLNullable<BigInt> = nil,
    againstVotes_lte: GraphQLNullable<BigInt> = nil,
    againstVotes_in: GraphQLNullable<[BigInt]> = nil,
    againstVotes_not_in: GraphQLNullable<[BigInt]> = nil,
    abstainVotes: GraphQLNullable<BigInt> = nil,
    abstainVotes_not: GraphQLNullable<BigInt> = nil,
    abstainVotes_gt: GraphQLNullable<BigInt> = nil,
    abstainVotes_lt: GraphQLNullable<BigInt> = nil,
    abstainVotes_gte: GraphQLNullable<BigInt> = nil,
    abstainVotes_lte: GraphQLNullable<BigInt> = nil,
    abstainVotes_in: GraphQLNullable<[BigInt]> = nil,
    abstainVotes_not_in: GraphQLNullable<[BigInt]> = nil,
    title: GraphQLNullable<String> = nil,
    title_not: GraphQLNullable<String> = nil,
    title_gt: GraphQLNullable<String> = nil,
    title_lt: GraphQLNullable<String> = nil,
    title_gte: GraphQLNullable<String> = nil,
    title_lte: GraphQLNullable<String> = nil,
    title_in: GraphQLNullable<[String]> = nil,
    title_not_in: GraphQLNullable<[String]> = nil,
    title_contains: GraphQLNullable<String> = nil,
    title_contains_nocase: GraphQLNullable<String> = nil,
    title_not_contains: GraphQLNullable<String> = nil,
    title_not_contains_nocase: GraphQLNullable<String> = nil,
    title_starts_with: GraphQLNullable<String> = nil,
    title_starts_with_nocase: GraphQLNullable<String> = nil,
    title_not_starts_with: GraphQLNullable<String> = nil,
    title_not_starts_with_nocase: GraphQLNullable<String> = nil,
    title_ends_with: GraphQLNullable<String> = nil,
    title_ends_with_nocase: GraphQLNullable<String> = nil,
    title_not_ends_with: GraphQLNullable<String> = nil,
    title_not_ends_with_nocase: GraphQLNullable<String> = nil,
    description: GraphQLNullable<String> = nil,
    description_not: GraphQLNullable<String> = nil,
    description_gt: GraphQLNullable<String> = nil,
    description_lt: GraphQLNullable<String> = nil,
    description_gte: GraphQLNullable<String> = nil,
    description_lte: GraphQLNullable<String> = nil,
    description_in: GraphQLNullable<[String]> = nil,
    description_not_in: GraphQLNullable<[String]> = nil,
    description_contains: GraphQLNullable<String> = nil,
    description_contains_nocase: GraphQLNullable<String> = nil,
    description_not_contains: GraphQLNullable<String> = nil,
    description_not_contains_nocase: GraphQLNullable<String> = nil,
    description_starts_with: GraphQLNullable<String> = nil,
    description_starts_with_nocase: GraphQLNullable<String> = nil,
    description_not_starts_with: GraphQLNullable<String> = nil,
    description_not_starts_with_nocase: GraphQLNullable<String> = nil,
    description_ends_with: GraphQLNullable<String> = nil,
    description_ends_with_nocase: GraphQLNullable<String> = nil,
    description_not_ends_with: GraphQLNullable<String> = nil,
    description_not_ends_with_nocase: GraphQLNullable<String> = nil,
    status: GraphQLNullable<GraphQLEnum<ProposalStatus>> = nil,
    status_not: GraphQLNullable<GraphQLEnum<ProposalStatus>> = nil,
    status_in: GraphQLNullable<[GraphQLEnum<ProposalStatus>]> = nil,
    status_not_in: GraphQLNullable<[GraphQLEnum<ProposalStatus>]> = nil,
    executionETA: GraphQLNullable<BigInt> = nil,
    executionETA_not: GraphQLNullable<BigInt> = nil,
    executionETA_gt: GraphQLNullable<BigInt> = nil,
    executionETA_lt: GraphQLNullable<BigInt> = nil,
    executionETA_gte: GraphQLNullable<BigInt> = nil,
    executionETA_lte: GraphQLNullable<BigInt> = nil,
    executionETA_in: GraphQLNullable<[BigInt]> = nil,
    executionETA_not_in: GraphQLNullable<[BigInt]> = nil,
    votes_: GraphQLNullable<Vote_filter> = nil,
    totalSupply: GraphQLNullable<BigInt> = nil,
    totalSupply_not: GraphQLNullable<BigInt> = nil,
    totalSupply_gt: GraphQLNullable<BigInt> = nil,
    totalSupply_lt: GraphQLNullable<BigInt> = nil,
    totalSupply_gte: GraphQLNullable<BigInt> = nil,
    totalSupply_lte: GraphQLNullable<BigInt> = nil,
    totalSupply_in: GraphQLNullable<[BigInt]> = nil,
    totalSupply_not_in: GraphQLNullable<[BigInt]> = nil,
    minQuorumVotesBPS: GraphQLNullable<Int> = nil,
    minQuorumVotesBPS_not: GraphQLNullable<Int> = nil,
    minQuorumVotesBPS_gt: GraphQLNullable<Int> = nil,
    minQuorumVotesBPS_lt: GraphQLNullable<Int> = nil,
    minQuorumVotesBPS_gte: GraphQLNullable<Int> = nil,
    minQuorumVotesBPS_lte: GraphQLNullable<Int> = nil,
    minQuorumVotesBPS_in: GraphQLNullable<[Int]> = nil,
    minQuorumVotesBPS_not_in: GraphQLNullable<[Int]> = nil,
    maxQuorumVotesBPS: GraphQLNullable<Int> = nil,
    maxQuorumVotesBPS_not: GraphQLNullable<Int> = nil,
    maxQuorumVotesBPS_gt: GraphQLNullable<Int> = nil,
    maxQuorumVotesBPS_lt: GraphQLNullable<Int> = nil,
    maxQuorumVotesBPS_gte: GraphQLNullable<Int> = nil,
    maxQuorumVotesBPS_lte: GraphQLNullable<Int> = nil,
    maxQuorumVotesBPS_in: GraphQLNullable<[Int]> = nil,
    maxQuorumVotesBPS_not_in: GraphQLNullable<[Int]> = nil,
    quorumCoefficient: GraphQLNullable<BigInt> = nil,
    quorumCoefficient_not: GraphQLNullable<BigInt> = nil,
    quorumCoefficient_gt: GraphQLNullable<BigInt> = nil,
    quorumCoefficient_lt: GraphQLNullable<BigInt> = nil,
    quorumCoefficient_gte: GraphQLNullable<BigInt> = nil,
    quorumCoefficient_lte: GraphQLNullable<BigInt> = nil,
    quorumCoefficient_in: GraphQLNullable<[BigInt]> = nil,
    quorumCoefficient_not_in: GraphQLNullable<[BigInt]> = nil,
    objectionPeriodEndBlock: GraphQLNullable<BigInt> = nil,
    objectionPeriodEndBlock_not: GraphQLNullable<BigInt> = nil,
    objectionPeriodEndBlock_gt: GraphQLNullable<BigInt> = nil,
    objectionPeriodEndBlock_lt: GraphQLNullable<BigInt> = nil,
    objectionPeriodEndBlock_gte: GraphQLNullable<BigInt> = nil,
    objectionPeriodEndBlock_lte: GraphQLNullable<BigInt> = nil,
    objectionPeriodEndBlock_in: GraphQLNullable<[BigInt]> = nil,
    objectionPeriodEndBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    updatePeriodEndBlock: GraphQLNullable<BigInt> = nil,
    updatePeriodEndBlock_not: GraphQLNullable<BigInt> = nil,
    updatePeriodEndBlock_gt: GraphQLNullable<BigInt> = nil,
    updatePeriodEndBlock_lt: GraphQLNullable<BigInt> = nil,
    updatePeriodEndBlock_gte: GraphQLNullable<BigInt> = nil,
    updatePeriodEndBlock_lte: GraphQLNullable<BigInt> = nil,
    updatePeriodEndBlock_in: GraphQLNullable<[BigInt]> = nil,
    updatePeriodEndBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    feedbackPosts_: GraphQLNullable<ProposalFeedback_filter> = nil,
    onTimelockV1: GraphQLNullable<Bool> = nil,
    onTimelockV1_not: GraphQLNullable<Bool> = nil,
    onTimelockV1_in: GraphQLNullable<[Bool]> = nil,
    onTimelockV1_not_in: GraphQLNullable<[Bool]> = nil,
    voteSnapshotBlock: GraphQLNullable<BigInt> = nil,
    voteSnapshotBlock_not: GraphQLNullable<BigInt> = nil,
    voteSnapshotBlock_gt: GraphQLNullable<BigInt> = nil,
    voteSnapshotBlock_lt: GraphQLNullable<BigInt> = nil,
    voteSnapshotBlock_gte: GraphQLNullable<BigInt> = nil,
    voteSnapshotBlock_lte: GraphQLNullable<BigInt> = nil,
    voteSnapshotBlock_in: GraphQLNullable<[BigInt]> = nil,
    voteSnapshotBlock_not_in: GraphQLNullable<[BigInt]> = nil,
    _change_block: GraphQLNullable<BlockChangedFilter> = nil,
    and: GraphQLNullable<[Proposal_filter?]> = nil,
    or: GraphQLNullable<[Proposal_filter?]> = nil
  ) {
    __data = InputDict([
      "id": id,
      "id_not": id_not,
      "id_gt": id_gt,
      "id_lt": id_lt,
      "id_gte": id_gte,
      "id_lte": id_lte,
      "id_in": id_in,
      "id_not_in": id_not_in,
      "proposer": proposer,
      "proposer_not": proposer_not,
      "proposer_gt": proposer_gt,
      "proposer_lt": proposer_lt,
      "proposer_gte": proposer_gte,
      "proposer_lte": proposer_lte,
      "proposer_in": proposer_in,
      "proposer_not_in": proposer_not_in,
      "proposer_contains": proposer_contains,
      "proposer_contains_nocase": proposer_contains_nocase,
      "proposer_not_contains": proposer_not_contains,
      "proposer_not_contains_nocase": proposer_not_contains_nocase,
      "proposer_starts_with": proposer_starts_with,
      "proposer_starts_with_nocase": proposer_starts_with_nocase,
      "proposer_not_starts_with": proposer_not_starts_with,
      "proposer_not_starts_with_nocase": proposer_not_starts_with_nocase,
      "proposer_ends_with": proposer_ends_with,
      "proposer_ends_with_nocase": proposer_ends_with_nocase,
      "proposer_not_ends_with": proposer_not_ends_with,
      "proposer_not_ends_with_nocase": proposer_not_ends_with_nocase,
      "proposer_": proposer_,
      "signers": signers,
      "signers_not": signers_not,
      "signers_contains": signers_contains,
      "signers_contains_nocase": signers_contains_nocase,
      "signers_not_contains": signers_not_contains,
      "signers_not_contains_nocase": signers_not_contains_nocase,
      "signers_": signers_,
      "targets": targets,
      "targets_not": targets_not,
      "targets_contains": targets_contains,
      "targets_contains_nocase": targets_contains_nocase,
      "targets_not_contains": targets_not_contains,
      "targets_not_contains_nocase": targets_not_contains_nocase,
      "values": values,
      "values_not": values_not,
      "values_contains": values_contains,
      "values_contains_nocase": values_contains_nocase,
      "values_not_contains": values_not_contains,
      "values_not_contains_nocase": values_not_contains_nocase,
      "signatures": signatures,
      "signatures_not": signatures_not,
      "signatures_contains": signatures_contains,
      "signatures_contains_nocase": signatures_contains_nocase,
      "signatures_not_contains": signatures_not_contains,
      "signatures_not_contains_nocase": signatures_not_contains_nocase,
      "calldatas": calldatas,
      "calldatas_not": calldatas_not,
      "calldatas_contains": calldatas_contains,
      "calldatas_contains_nocase": calldatas_contains_nocase,
      "calldatas_not_contains": calldatas_not_contains,
      "calldatas_not_contains_nocase": calldatas_not_contains_nocase,
      "createdTimestamp": createdTimestamp,
      "createdTimestamp_not": createdTimestamp_not,
      "createdTimestamp_gt": createdTimestamp_gt,
      "createdTimestamp_lt": createdTimestamp_lt,
      "createdTimestamp_gte": createdTimestamp_gte,
      "createdTimestamp_lte": createdTimestamp_lte,
      "createdTimestamp_in": createdTimestamp_in,
      "createdTimestamp_not_in": createdTimestamp_not_in,
      "createdBlock": createdBlock,
      "createdBlock_not": createdBlock_not,
      "createdBlock_gt": createdBlock_gt,
      "createdBlock_lt": createdBlock_lt,
      "createdBlock_gte": createdBlock_gte,
      "createdBlock_lte": createdBlock_lte,
      "createdBlock_in": createdBlock_in,
      "createdBlock_not_in": createdBlock_not_in,
      "lastUpdatedTimestamp": lastUpdatedTimestamp,
      "lastUpdatedTimestamp_not": lastUpdatedTimestamp_not,
      "lastUpdatedTimestamp_gt": lastUpdatedTimestamp_gt,
      "lastUpdatedTimestamp_lt": lastUpdatedTimestamp_lt,
      "lastUpdatedTimestamp_gte": lastUpdatedTimestamp_gte,
      "lastUpdatedTimestamp_lte": lastUpdatedTimestamp_lte,
      "lastUpdatedTimestamp_in": lastUpdatedTimestamp_in,
      "lastUpdatedTimestamp_not_in": lastUpdatedTimestamp_not_in,
      "lastUpdatedBlock": lastUpdatedBlock,
      "lastUpdatedBlock_not": lastUpdatedBlock_not,
      "lastUpdatedBlock_gt": lastUpdatedBlock_gt,
      "lastUpdatedBlock_lt": lastUpdatedBlock_lt,
      "lastUpdatedBlock_gte": lastUpdatedBlock_gte,
      "lastUpdatedBlock_lte": lastUpdatedBlock_lte,
      "lastUpdatedBlock_in": lastUpdatedBlock_in,
      "lastUpdatedBlock_not_in": lastUpdatedBlock_not_in,
      "createdTransactionHash": createdTransactionHash,
      "createdTransactionHash_not": createdTransactionHash_not,
      "createdTransactionHash_gt": createdTransactionHash_gt,
      "createdTransactionHash_lt": createdTransactionHash_lt,
      "createdTransactionHash_gte": createdTransactionHash_gte,
      "createdTransactionHash_lte": createdTransactionHash_lte,
      "createdTransactionHash_in": createdTransactionHash_in,
      "createdTransactionHash_not_in": createdTransactionHash_not_in,
      "createdTransactionHash_contains": createdTransactionHash_contains,
      "createdTransactionHash_not_contains": createdTransactionHash_not_contains,
      "startBlock": startBlock,
      "startBlock_not": startBlock_not,
      "startBlock_gt": startBlock_gt,
      "startBlock_lt": startBlock_lt,
      "startBlock_gte": startBlock_gte,
      "startBlock_lte": startBlock_lte,
      "startBlock_in": startBlock_in,
      "startBlock_not_in": startBlock_not_in,
      "endBlock": endBlock,
      "endBlock_not": endBlock_not,
      "endBlock_gt": endBlock_gt,
      "endBlock_lt": endBlock_lt,
      "endBlock_gte": endBlock_gte,
      "endBlock_lte": endBlock_lte,
      "endBlock_in": endBlock_in,
      "endBlock_not_in": endBlock_not_in,
      "proposalThreshold": proposalThreshold,
      "proposalThreshold_not": proposalThreshold_not,
      "proposalThreshold_gt": proposalThreshold_gt,
      "proposalThreshold_lt": proposalThreshold_lt,
      "proposalThreshold_gte": proposalThreshold_gte,
      "proposalThreshold_lte": proposalThreshold_lte,
      "proposalThreshold_in": proposalThreshold_in,
      "proposalThreshold_not_in": proposalThreshold_not_in,
      "quorumVotes": quorumVotes,
      "quorumVotes_not": quorumVotes_not,
      "quorumVotes_gt": quorumVotes_gt,
      "quorumVotes_lt": quorumVotes_lt,
      "quorumVotes_gte": quorumVotes_gte,
      "quorumVotes_lte": quorumVotes_lte,
      "quorumVotes_in": quorumVotes_in,
      "quorumVotes_not_in": quorumVotes_not_in,
      "forVotes": forVotes,
      "forVotes_not": forVotes_not,
      "forVotes_gt": forVotes_gt,
      "forVotes_lt": forVotes_lt,
      "forVotes_gte": forVotes_gte,
      "forVotes_lte": forVotes_lte,
      "forVotes_in": forVotes_in,
      "forVotes_not_in": forVotes_not_in,
      "againstVotes": againstVotes,
      "againstVotes_not": againstVotes_not,
      "againstVotes_gt": againstVotes_gt,
      "againstVotes_lt": againstVotes_lt,
      "againstVotes_gte": againstVotes_gte,
      "againstVotes_lte": againstVotes_lte,
      "againstVotes_in": againstVotes_in,
      "againstVotes_not_in": againstVotes_not_in,
      "abstainVotes": abstainVotes,
      "abstainVotes_not": abstainVotes_not,
      "abstainVotes_gt": abstainVotes_gt,
      "abstainVotes_lt": abstainVotes_lt,
      "abstainVotes_gte": abstainVotes_gte,
      "abstainVotes_lte": abstainVotes_lte,
      "abstainVotes_in": abstainVotes_in,
      "abstainVotes_not_in": abstainVotes_not_in,
      "title": title,
      "title_not": title_not,
      "title_gt": title_gt,
      "title_lt": title_lt,
      "title_gte": title_gte,
      "title_lte": title_lte,
      "title_in": title_in,
      "title_not_in": title_not_in,
      "title_contains": title_contains,
      "title_contains_nocase": title_contains_nocase,
      "title_not_contains": title_not_contains,
      "title_not_contains_nocase": title_not_contains_nocase,
      "title_starts_with": title_starts_with,
      "title_starts_with_nocase": title_starts_with_nocase,
      "title_not_starts_with": title_not_starts_with,
      "title_not_starts_with_nocase": title_not_starts_with_nocase,
      "title_ends_with": title_ends_with,
      "title_ends_with_nocase": title_ends_with_nocase,
      "title_not_ends_with": title_not_ends_with,
      "title_not_ends_with_nocase": title_not_ends_with_nocase,
      "description": description,
      "description_not": description_not,
      "description_gt": description_gt,
      "description_lt": description_lt,
      "description_gte": description_gte,
      "description_lte": description_lte,
      "description_in": description_in,
      "description_not_in": description_not_in,
      "description_contains": description_contains,
      "description_contains_nocase": description_contains_nocase,
      "description_not_contains": description_not_contains,
      "description_not_contains_nocase": description_not_contains_nocase,
      "description_starts_with": description_starts_with,
      "description_starts_with_nocase": description_starts_with_nocase,
      "description_not_starts_with": description_not_starts_with,
      "description_not_starts_with_nocase": description_not_starts_with_nocase,
      "description_ends_with": description_ends_with,
      "description_ends_with_nocase": description_ends_with_nocase,
      "description_not_ends_with": description_not_ends_with,
      "description_not_ends_with_nocase": description_not_ends_with_nocase,
      "status": status,
      "status_not": status_not,
      "status_in": status_in,
      "status_not_in": status_not_in,
      "executionETA": executionETA,
      "executionETA_not": executionETA_not,
      "executionETA_gt": executionETA_gt,
      "executionETA_lt": executionETA_lt,
      "executionETA_gte": executionETA_gte,
      "executionETA_lte": executionETA_lte,
      "executionETA_in": executionETA_in,
      "executionETA_not_in": executionETA_not_in,
      "votes_": votes_,
      "totalSupply": totalSupply,
      "totalSupply_not": totalSupply_not,
      "totalSupply_gt": totalSupply_gt,
      "totalSupply_lt": totalSupply_lt,
      "totalSupply_gte": totalSupply_gte,
      "totalSupply_lte": totalSupply_lte,
      "totalSupply_in": totalSupply_in,
      "totalSupply_not_in": totalSupply_not_in,
      "minQuorumVotesBPS": minQuorumVotesBPS,
      "minQuorumVotesBPS_not": minQuorumVotesBPS_not,
      "minQuorumVotesBPS_gt": minQuorumVotesBPS_gt,
      "minQuorumVotesBPS_lt": minQuorumVotesBPS_lt,
      "minQuorumVotesBPS_gte": minQuorumVotesBPS_gte,
      "minQuorumVotesBPS_lte": minQuorumVotesBPS_lte,
      "minQuorumVotesBPS_in": minQuorumVotesBPS_in,
      "minQuorumVotesBPS_not_in": minQuorumVotesBPS_not_in,
      "maxQuorumVotesBPS": maxQuorumVotesBPS,
      "maxQuorumVotesBPS_not": maxQuorumVotesBPS_not,
      "maxQuorumVotesBPS_gt": maxQuorumVotesBPS_gt,
      "maxQuorumVotesBPS_lt": maxQuorumVotesBPS_lt,
      "maxQuorumVotesBPS_gte": maxQuorumVotesBPS_gte,
      "maxQuorumVotesBPS_lte": maxQuorumVotesBPS_lte,
      "maxQuorumVotesBPS_in": maxQuorumVotesBPS_in,
      "maxQuorumVotesBPS_not_in": maxQuorumVotesBPS_not_in,
      "quorumCoefficient": quorumCoefficient,
      "quorumCoefficient_not": quorumCoefficient_not,
      "quorumCoefficient_gt": quorumCoefficient_gt,
      "quorumCoefficient_lt": quorumCoefficient_lt,
      "quorumCoefficient_gte": quorumCoefficient_gte,
      "quorumCoefficient_lte": quorumCoefficient_lte,
      "quorumCoefficient_in": quorumCoefficient_in,
      "quorumCoefficient_not_in": quorumCoefficient_not_in,
      "objectionPeriodEndBlock": objectionPeriodEndBlock,
      "objectionPeriodEndBlock_not": objectionPeriodEndBlock_not,
      "objectionPeriodEndBlock_gt": objectionPeriodEndBlock_gt,
      "objectionPeriodEndBlock_lt": objectionPeriodEndBlock_lt,
      "objectionPeriodEndBlock_gte": objectionPeriodEndBlock_gte,
      "objectionPeriodEndBlock_lte": objectionPeriodEndBlock_lte,
      "objectionPeriodEndBlock_in": objectionPeriodEndBlock_in,
      "objectionPeriodEndBlock_not_in": objectionPeriodEndBlock_not_in,
      "updatePeriodEndBlock": updatePeriodEndBlock,
      "updatePeriodEndBlock_not": updatePeriodEndBlock_not,
      "updatePeriodEndBlock_gt": updatePeriodEndBlock_gt,
      "updatePeriodEndBlock_lt": updatePeriodEndBlock_lt,
      "updatePeriodEndBlock_gte": updatePeriodEndBlock_gte,
      "updatePeriodEndBlock_lte": updatePeriodEndBlock_lte,
      "updatePeriodEndBlock_in": updatePeriodEndBlock_in,
      "updatePeriodEndBlock_not_in": updatePeriodEndBlock_not_in,
      "feedbackPosts_": feedbackPosts_,
      "onTimelockV1": onTimelockV1,
      "onTimelockV1_not": onTimelockV1_not,
      "onTimelockV1_in": onTimelockV1_in,
      "onTimelockV1_not_in": onTimelockV1_not_in,
      "voteSnapshotBlock": voteSnapshotBlock,
      "voteSnapshotBlock_not": voteSnapshotBlock_not,
      "voteSnapshotBlock_gt": voteSnapshotBlock_gt,
      "voteSnapshotBlock_lt": voteSnapshotBlock_lt,
      "voteSnapshotBlock_gte": voteSnapshotBlock_gte,
      "voteSnapshotBlock_lte": voteSnapshotBlock_lte,
      "voteSnapshotBlock_in": voteSnapshotBlock_in,
      "voteSnapshotBlock_not_in": voteSnapshotBlock_not_in,
      "_change_block": _change_block,
      "and": and,
      "or": or
    ])
  }

  public var id: GraphQLNullable<ID> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var id_not: GraphQLNullable<ID> {
    get { __data["id_not"] }
    set { __data["id_not"] = newValue }
  }

  public var id_gt: GraphQLNullable<ID> {
    get { __data["id_gt"] }
    set { __data["id_gt"] = newValue }
  }

  public var id_lt: GraphQLNullable<ID> {
    get { __data["id_lt"] }
    set { __data["id_lt"] = newValue }
  }

  public var id_gte: GraphQLNullable<ID> {
    get { __data["id_gte"] }
    set { __data["id_gte"] = newValue }
  }

  public var id_lte: GraphQLNullable<ID> {
    get { __data["id_lte"] }
    set { __data["id_lte"] = newValue }
  }

  public var id_in: GraphQLNullable<[ID]> {
    get { __data["id_in"] }
    set { __data["id_in"] = newValue }
  }

  public var id_not_in: GraphQLNullable<[ID]> {
    get { __data["id_not_in"] }
    set { __data["id_not_in"] = newValue }
  }

  public var proposer: GraphQLNullable<String> {
    get { __data["proposer"] }
    set { __data["proposer"] = newValue }
  }

  public var proposer_not: GraphQLNullable<String> {
    get { __data["proposer_not"] }
    set { __data["proposer_not"] = newValue }
  }

  public var proposer_gt: GraphQLNullable<String> {
    get { __data["proposer_gt"] }
    set { __data["proposer_gt"] = newValue }
  }

  public var proposer_lt: GraphQLNullable<String> {
    get { __data["proposer_lt"] }
    set { __data["proposer_lt"] = newValue }
  }

  public var proposer_gte: GraphQLNullable<String> {
    get { __data["proposer_gte"] }
    set { __data["proposer_gte"] = newValue }
  }

  public var proposer_lte: GraphQLNullable<String> {
    get { __data["proposer_lte"] }
    set { __data["proposer_lte"] = newValue }
  }

  public var proposer_in: GraphQLNullable<[String]> {
    get { __data["proposer_in"] }
    set { __data["proposer_in"] = newValue }
  }

  public var proposer_not_in: GraphQLNullable<[String]> {
    get { __data["proposer_not_in"] }
    set { __data["proposer_not_in"] = newValue }
  }

  public var proposer_contains: GraphQLNullable<String> {
    get { __data["proposer_contains"] }
    set { __data["proposer_contains"] = newValue }
  }

  public var proposer_contains_nocase: GraphQLNullable<String> {
    get { __data["proposer_contains_nocase"] }
    set { __data["proposer_contains_nocase"] = newValue }
  }

  public var proposer_not_contains: GraphQLNullable<String> {
    get { __data["proposer_not_contains"] }
    set { __data["proposer_not_contains"] = newValue }
  }

  public var proposer_not_contains_nocase: GraphQLNullable<String> {
    get { __data["proposer_not_contains_nocase"] }
    set { __data["proposer_not_contains_nocase"] = newValue }
  }

  public var proposer_starts_with: GraphQLNullable<String> {
    get { __data["proposer_starts_with"] }
    set { __data["proposer_starts_with"] = newValue }
  }

  public var proposer_starts_with_nocase: GraphQLNullable<String> {
    get { __data["proposer_starts_with_nocase"] }
    set { __data["proposer_starts_with_nocase"] = newValue }
  }

  public var proposer_not_starts_with: GraphQLNullable<String> {
    get { __data["proposer_not_starts_with"] }
    set { __data["proposer_not_starts_with"] = newValue }
  }

  public var proposer_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["proposer_not_starts_with_nocase"] }
    set { __data["proposer_not_starts_with_nocase"] = newValue }
  }

  public var proposer_ends_with: GraphQLNullable<String> {
    get { __data["proposer_ends_with"] }
    set { __data["proposer_ends_with"] = newValue }
  }

  public var proposer_ends_with_nocase: GraphQLNullable<String> {
    get { __data["proposer_ends_with_nocase"] }
    set { __data["proposer_ends_with_nocase"] = newValue }
  }

  public var proposer_not_ends_with: GraphQLNullable<String> {
    get { __data["proposer_not_ends_with"] }
    set { __data["proposer_not_ends_with"] = newValue }
  }

  public var proposer_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["proposer_not_ends_with_nocase"] }
    set { __data["proposer_not_ends_with_nocase"] = newValue }
  }

  public var proposer_: GraphQLNullable<Delegate_filter> {
    get { __data["proposer_"] }
    set { __data["proposer_"] = newValue }
  }

  public var signers: GraphQLNullable<[String]> {
    get { __data["signers"] }
    set { __data["signers"] = newValue }
  }

  public var signers_not: GraphQLNullable<[String]> {
    get { __data["signers_not"] }
    set { __data["signers_not"] = newValue }
  }

  public var signers_contains: GraphQLNullable<[String]> {
    get { __data["signers_contains"] }
    set { __data["signers_contains"] = newValue }
  }

  public var signers_contains_nocase: GraphQLNullable<[String]> {
    get { __data["signers_contains_nocase"] }
    set { __data["signers_contains_nocase"] = newValue }
  }

  public var signers_not_contains: GraphQLNullable<[String]> {
    get { __data["signers_not_contains"] }
    set { __data["signers_not_contains"] = newValue }
  }

  public var signers_not_contains_nocase: GraphQLNullable<[String]> {
    get { __data["signers_not_contains_nocase"] }
    set { __data["signers_not_contains_nocase"] = newValue }
  }

  public var signers_: GraphQLNullable<Delegate_filter> {
    get { __data["signers_"] }
    set { __data["signers_"] = newValue }
  }

  public var targets: GraphQLNullable<[Bytes]> {
    get { __data["targets"] }
    set { __data["targets"] = newValue }
  }

  public var targets_not: GraphQLNullable<[Bytes]> {
    get { __data["targets_not"] }
    set { __data["targets_not"] = newValue }
  }

  public var targets_contains: GraphQLNullable<[Bytes]> {
    get { __data["targets_contains"] }
    set { __data["targets_contains"] = newValue }
  }

  public var targets_contains_nocase: GraphQLNullable<[Bytes]> {
    get { __data["targets_contains_nocase"] }
    set { __data["targets_contains_nocase"] = newValue }
  }

  public var targets_not_contains: GraphQLNullable<[Bytes]> {
    get { __data["targets_not_contains"] }
    set { __data["targets_not_contains"] = newValue }
  }

  public var targets_not_contains_nocase: GraphQLNullable<[Bytes]> {
    get { __data["targets_not_contains_nocase"] }
    set { __data["targets_not_contains_nocase"] = newValue }
  }

  public var values: GraphQLNullable<[BigInt]> {
    get { __data["values"] }
    set { __data["values"] = newValue }
  }

  public var values_not: GraphQLNullable<[BigInt]> {
    get { __data["values_not"] }
    set { __data["values_not"] = newValue }
  }

  public var values_contains: GraphQLNullable<[BigInt]> {
    get { __data["values_contains"] }
    set { __data["values_contains"] = newValue }
  }

  public var values_contains_nocase: GraphQLNullable<[BigInt]> {
    get { __data["values_contains_nocase"] }
    set { __data["values_contains_nocase"] = newValue }
  }

  public var values_not_contains: GraphQLNullable<[BigInt]> {
    get { __data["values_not_contains"] }
    set { __data["values_not_contains"] = newValue }
  }

  public var values_not_contains_nocase: GraphQLNullable<[BigInt]> {
    get { __data["values_not_contains_nocase"] }
    set { __data["values_not_contains_nocase"] = newValue }
  }

  public var signatures: GraphQLNullable<[String]> {
    get { __data["signatures"] }
    set { __data["signatures"] = newValue }
  }

  public var signatures_not: GraphQLNullable<[String]> {
    get { __data["signatures_not"] }
    set { __data["signatures_not"] = newValue }
  }

  public var signatures_contains: GraphQLNullable<[String]> {
    get { __data["signatures_contains"] }
    set { __data["signatures_contains"] = newValue }
  }

  public var signatures_contains_nocase: GraphQLNullable<[String]> {
    get { __data["signatures_contains_nocase"] }
    set { __data["signatures_contains_nocase"] = newValue }
  }

  public var signatures_not_contains: GraphQLNullable<[String]> {
    get { __data["signatures_not_contains"] }
    set { __data["signatures_not_contains"] = newValue }
  }

  public var signatures_not_contains_nocase: GraphQLNullable<[String]> {
    get { __data["signatures_not_contains_nocase"] }
    set { __data["signatures_not_contains_nocase"] = newValue }
  }

  public var calldatas: GraphQLNullable<[Bytes]> {
    get { __data["calldatas"] }
    set { __data["calldatas"] = newValue }
  }

  public var calldatas_not: GraphQLNullable<[Bytes]> {
    get { __data["calldatas_not"] }
    set { __data["calldatas_not"] = newValue }
  }

  public var calldatas_contains: GraphQLNullable<[Bytes]> {
    get { __data["calldatas_contains"] }
    set { __data["calldatas_contains"] = newValue }
  }

  public var calldatas_contains_nocase: GraphQLNullable<[Bytes]> {
    get { __data["calldatas_contains_nocase"] }
    set { __data["calldatas_contains_nocase"] = newValue }
  }

  public var calldatas_not_contains: GraphQLNullable<[Bytes]> {
    get { __data["calldatas_not_contains"] }
    set { __data["calldatas_not_contains"] = newValue }
  }

  public var calldatas_not_contains_nocase: GraphQLNullable<[Bytes]> {
    get { __data["calldatas_not_contains_nocase"] }
    set { __data["calldatas_not_contains_nocase"] = newValue }
  }

  public var createdTimestamp: GraphQLNullable<BigInt> {
    get { __data["createdTimestamp"] }
    set { __data["createdTimestamp"] = newValue }
  }

  public var createdTimestamp_not: GraphQLNullable<BigInt> {
    get { __data["createdTimestamp_not"] }
    set { __data["createdTimestamp_not"] = newValue }
  }

  public var createdTimestamp_gt: GraphQLNullable<BigInt> {
    get { __data["createdTimestamp_gt"] }
    set { __data["createdTimestamp_gt"] = newValue }
  }

  public var createdTimestamp_lt: GraphQLNullable<BigInt> {
    get { __data["createdTimestamp_lt"] }
    set { __data["createdTimestamp_lt"] = newValue }
  }

  public var createdTimestamp_gte: GraphQLNullable<BigInt> {
    get { __data["createdTimestamp_gte"] }
    set { __data["createdTimestamp_gte"] = newValue }
  }

  public var createdTimestamp_lte: GraphQLNullable<BigInt> {
    get { __data["createdTimestamp_lte"] }
    set { __data["createdTimestamp_lte"] = newValue }
  }

  public var createdTimestamp_in: GraphQLNullable<[BigInt]> {
    get { __data["createdTimestamp_in"] }
    set { __data["createdTimestamp_in"] = newValue }
  }

  public var createdTimestamp_not_in: GraphQLNullable<[BigInt]> {
    get { __data["createdTimestamp_not_in"] }
    set { __data["createdTimestamp_not_in"] = newValue }
  }

  public var createdBlock: GraphQLNullable<BigInt> {
    get { __data["createdBlock"] }
    set { __data["createdBlock"] = newValue }
  }

  public var createdBlock_not: GraphQLNullable<BigInt> {
    get { __data["createdBlock_not"] }
    set { __data["createdBlock_not"] = newValue }
  }

  public var createdBlock_gt: GraphQLNullable<BigInt> {
    get { __data["createdBlock_gt"] }
    set { __data["createdBlock_gt"] = newValue }
  }

  public var createdBlock_lt: GraphQLNullable<BigInt> {
    get { __data["createdBlock_lt"] }
    set { __data["createdBlock_lt"] = newValue }
  }

  public var createdBlock_gte: GraphQLNullable<BigInt> {
    get { __data["createdBlock_gte"] }
    set { __data["createdBlock_gte"] = newValue }
  }

  public var createdBlock_lte: GraphQLNullable<BigInt> {
    get { __data["createdBlock_lte"] }
    set { __data["createdBlock_lte"] = newValue }
  }

  public var createdBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["createdBlock_in"] }
    set { __data["createdBlock_in"] = newValue }
  }

  public var createdBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["createdBlock_not_in"] }
    set { __data["createdBlock_not_in"] = newValue }
  }

  public var lastUpdatedTimestamp: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedTimestamp"] }
    set { __data["lastUpdatedTimestamp"] = newValue }
  }

  public var lastUpdatedTimestamp_not: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedTimestamp_not"] }
    set { __data["lastUpdatedTimestamp_not"] = newValue }
  }

  public var lastUpdatedTimestamp_gt: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedTimestamp_gt"] }
    set { __data["lastUpdatedTimestamp_gt"] = newValue }
  }

  public var lastUpdatedTimestamp_lt: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedTimestamp_lt"] }
    set { __data["lastUpdatedTimestamp_lt"] = newValue }
  }

  public var lastUpdatedTimestamp_gte: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedTimestamp_gte"] }
    set { __data["lastUpdatedTimestamp_gte"] = newValue }
  }

  public var lastUpdatedTimestamp_lte: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedTimestamp_lte"] }
    set { __data["lastUpdatedTimestamp_lte"] = newValue }
  }

  public var lastUpdatedTimestamp_in: GraphQLNullable<[BigInt]> {
    get { __data["lastUpdatedTimestamp_in"] }
    set { __data["lastUpdatedTimestamp_in"] = newValue }
  }

  public var lastUpdatedTimestamp_not_in: GraphQLNullable<[BigInt]> {
    get { __data["lastUpdatedTimestamp_not_in"] }
    set { __data["lastUpdatedTimestamp_not_in"] = newValue }
  }

  public var lastUpdatedBlock: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedBlock"] }
    set { __data["lastUpdatedBlock"] = newValue }
  }

  public var lastUpdatedBlock_not: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedBlock_not"] }
    set { __data["lastUpdatedBlock_not"] = newValue }
  }

  public var lastUpdatedBlock_gt: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedBlock_gt"] }
    set { __data["lastUpdatedBlock_gt"] = newValue }
  }

  public var lastUpdatedBlock_lt: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedBlock_lt"] }
    set { __data["lastUpdatedBlock_lt"] = newValue }
  }

  public var lastUpdatedBlock_gte: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedBlock_gte"] }
    set { __data["lastUpdatedBlock_gte"] = newValue }
  }

  public var lastUpdatedBlock_lte: GraphQLNullable<BigInt> {
    get { __data["lastUpdatedBlock_lte"] }
    set { __data["lastUpdatedBlock_lte"] = newValue }
  }

  public var lastUpdatedBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["lastUpdatedBlock_in"] }
    set { __data["lastUpdatedBlock_in"] = newValue }
  }

  public var lastUpdatedBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["lastUpdatedBlock_not_in"] }
    set { __data["lastUpdatedBlock_not_in"] = newValue }
  }

  public var createdTransactionHash: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash"] }
    set { __data["createdTransactionHash"] = newValue }
  }

  public var createdTransactionHash_not: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_not"] }
    set { __data["createdTransactionHash_not"] = newValue }
  }

  public var createdTransactionHash_gt: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_gt"] }
    set { __data["createdTransactionHash_gt"] = newValue }
  }

  public var createdTransactionHash_lt: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_lt"] }
    set { __data["createdTransactionHash_lt"] = newValue }
  }

  public var createdTransactionHash_gte: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_gte"] }
    set { __data["createdTransactionHash_gte"] = newValue }
  }

  public var createdTransactionHash_lte: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_lte"] }
    set { __data["createdTransactionHash_lte"] = newValue }
  }

  public var createdTransactionHash_in: GraphQLNullable<[Bytes]> {
    get { __data["createdTransactionHash_in"] }
    set { __data["createdTransactionHash_in"] = newValue }
  }

  public var createdTransactionHash_not_in: GraphQLNullable<[Bytes]> {
    get { __data["createdTransactionHash_not_in"] }
    set { __data["createdTransactionHash_not_in"] = newValue }
  }

  public var createdTransactionHash_contains: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_contains"] }
    set { __data["createdTransactionHash_contains"] = newValue }
  }

  public var createdTransactionHash_not_contains: GraphQLNullable<Bytes> {
    get { __data["createdTransactionHash_not_contains"] }
    set { __data["createdTransactionHash_not_contains"] = newValue }
  }

  public var startBlock: GraphQLNullable<BigInt> {
    get { __data["startBlock"] }
    set { __data["startBlock"] = newValue }
  }

  public var startBlock_not: GraphQLNullable<BigInt> {
    get { __data["startBlock_not"] }
    set { __data["startBlock_not"] = newValue }
  }

  public var startBlock_gt: GraphQLNullable<BigInt> {
    get { __data["startBlock_gt"] }
    set { __data["startBlock_gt"] = newValue }
  }

  public var startBlock_lt: GraphQLNullable<BigInt> {
    get { __data["startBlock_lt"] }
    set { __data["startBlock_lt"] = newValue }
  }

  public var startBlock_gte: GraphQLNullable<BigInt> {
    get { __data["startBlock_gte"] }
    set { __data["startBlock_gte"] = newValue }
  }

  public var startBlock_lte: GraphQLNullable<BigInt> {
    get { __data["startBlock_lte"] }
    set { __data["startBlock_lte"] = newValue }
  }

  public var startBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["startBlock_in"] }
    set { __data["startBlock_in"] = newValue }
  }

  public var startBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["startBlock_not_in"] }
    set { __data["startBlock_not_in"] = newValue }
  }

  public var endBlock: GraphQLNullable<BigInt> {
    get { __data["endBlock"] }
    set { __data["endBlock"] = newValue }
  }

  public var endBlock_not: GraphQLNullable<BigInt> {
    get { __data["endBlock_not"] }
    set { __data["endBlock_not"] = newValue }
  }

  public var endBlock_gt: GraphQLNullable<BigInt> {
    get { __data["endBlock_gt"] }
    set { __data["endBlock_gt"] = newValue }
  }

  public var endBlock_lt: GraphQLNullable<BigInt> {
    get { __data["endBlock_lt"] }
    set { __data["endBlock_lt"] = newValue }
  }

  public var endBlock_gte: GraphQLNullable<BigInt> {
    get { __data["endBlock_gte"] }
    set { __data["endBlock_gte"] = newValue }
  }

  public var endBlock_lte: GraphQLNullable<BigInt> {
    get { __data["endBlock_lte"] }
    set { __data["endBlock_lte"] = newValue }
  }

  public var endBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["endBlock_in"] }
    set { __data["endBlock_in"] = newValue }
  }

  public var endBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["endBlock_not_in"] }
    set { __data["endBlock_not_in"] = newValue }
  }

  public var proposalThreshold: GraphQLNullable<BigInt> {
    get { __data["proposalThreshold"] }
    set { __data["proposalThreshold"] = newValue }
  }

  public var proposalThreshold_not: GraphQLNullable<BigInt> {
    get { __data["proposalThreshold_not"] }
    set { __data["proposalThreshold_not"] = newValue }
  }

  public var proposalThreshold_gt: GraphQLNullable<BigInt> {
    get { __data["proposalThreshold_gt"] }
    set { __data["proposalThreshold_gt"] = newValue }
  }

  public var proposalThreshold_lt: GraphQLNullable<BigInt> {
    get { __data["proposalThreshold_lt"] }
    set { __data["proposalThreshold_lt"] = newValue }
  }

  public var proposalThreshold_gte: GraphQLNullable<BigInt> {
    get { __data["proposalThreshold_gte"] }
    set { __data["proposalThreshold_gte"] = newValue }
  }

  public var proposalThreshold_lte: GraphQLNullable<BigInt> {
    get { __data["proposalThreshold_lte"] }
    set { __data["proposalThreshold_lte"] = newValue }
  }

  public var proposalThreshold_in: GraphQLNullable<[BigInt]> {
    get { __data["proposalThreshold_in"] }
    set { __data["proposalThreshold_in"] = newValue }
  }

  public var proposalThreshold_not_in: GraphQLNullable<[BigInt]> {
    get { __data["proposalThreshold_not_in"] }
    set { __data["proposalThreshold_not_in"] = newValue }
  }

  public var quorumVotes: GraphQLNullable<BigInt> {
    get { __data["quorumVotes"] }
    set { __data["quorumVotes"] = newValue }
  }

  public var quorumVotes_not: GraphQLNullable<BigInt> {
    get { __data["quorumVotes_not"] }
    set { __data["quorumVotes_not"] = newValue }
  }

  public var quorumVotes_gt: GraphQLNullable<BigInt> {
    get { __data["quorumVotes_gt"] }
    set { __data["quorumVotes_gt"] = newValue }
  }

  public var quorumVotes_lt: GraphQLNullable<BigInt> {
    get { __data["quorumVotes_lt"] }
    set { __data["quorumVotes_lt"] = newValue }
  }

  public var quorumVotes_gte: GraphQLNullable<BigInt> {
    get { __data["quorumVotes_gte"] }
    set { __data["quorumVotes_gte"] = newValue }
  }

  public var quorumVotes_lte: GraphQLNullable<BigInt> {
    get { __data["quorumVotes_lte"] }
    set { __data["quorumVotes_lte"] = newValue }
  }

  public var quorumVotes_in: GraphQLNullable<[BigInt]> {
    get { __data["quorumVotes_in"] }
    set { __data["quorumVotes_in"] = newValue }
  }

  public var quorumVotes_not_in: GraphQLNullable<[BigInt]> {
    get { __data["quorumVotes_not_in"] }
    set { __data["quorumVotes_not_in"] = newValue }
  }

  public var forVotes: GraphQLNullable<BigInt> {
    get { __data["forVotes"] }
    set { __data["forVotes"] = newValue }
  }

  public var forVotes_not: GraphQLNullable<BigInt> {
    get { __data["forVotes_not"] }
    set { __data["forVotes_not"] = newValue }
  }

  public var forVotes_gt: GraphQLNullable<BigInt> {
    get { __data["forVotes_gt"] }
    set { __data["forVotes_gt"] = newValue }
  }

  public var forVotes_lt: GraphQLNullable<BigInt> {
    get { __data["forVotes_lt"] }
    set { __data["forVotes_lt"] = newValue }
  }

  public var forVotes_gte: GraphQLNullable<BigInt> {
    get { __data["forVotes_gte"] }
    set { __data["forVotes_gte"] = newValue }
  }

  public var forVotes_lte: GraphQLNullable<BigInt> {
    get { __data["forVotes_lte"] }
    set { __data["forVotes_lte"] = newValue }
  }

  public var forVotes_in: GraphQLNullable<[BigInt]> {
    get { __data["forVotes_in"] }
    set { __data["forVotes_in"] = newValue }
  }

  public var forVotes_not_in: GraphQLNullable<[BigInt]> {
    get { __data["forVotes_not_in"] }
    set { __data["forVotes_not_in"] = newValue }
  }

  public var againstVotes: GraphQLNullable<BigInt> {
    get { __data["againstVotes"] }
    set { __data["againstVotes"] = newValue }
  }

  public var againstVotes_not: GraphQLNullable<BigInt> {
    get { __data["againstVotes_not"] }
    set { __data["againstVotes_not"] = newValue }
  }

  public var againstVotes_gt: GraphQLNullable<BigInt> {
    get { __data["againstVotes_gt"] }
    set { __data["againstVotes_gt"] = newValue }
  }

  public var againstVotes_lt: GraphQLNullable<BigInt> {
    get { __data["againstVotes_lt"] }
    set { __data["againstVotes_lt"] = newValue }
  }

  public var againstVotes_gte: GraphQLNullable<BigInt> {
    get { __data["againstVotes_gte"] }
    set { __data["againstVotes_gte"] = newValue }
  }

  public var againstVotes_lte: GraphQLNullable<BigInt> {
    get { __data["againstVotes_lte"] }
    set { __data["againstVotes_lte"] = newValue }
  }

  public var againstVotes_in: GraphQLNullable<[BigInt]> {
    get { __data["againstVotes_in"] }
    set { __data["againstVotes_in"] = newValue }
  }

  public var againstVotes_not_in: GraphQLNullable<[BigInt]> {
    get { __data["againstVotes_not_in"] }
    set { __data["againstVotes_not_in"] = newValue }
  }

  public var abstainVotes: GraphQLNullable<BigInt> {
    get { __data["abstainVotes"] }
    set { __data["abstainVotes"] = newValue }
  }

  public var abstainVotes_not: GraphQLNullable<BigInt> {
    get { __data["abstainVotes_not"] }
    set { __data["abstainVotes_not"] = newValue }
  }

  public var abstainVotes_gt: GraphQLNullable<BigInt> {
    get { __data["abstainVotes_gt"] }
    set { __data["abstainVotes_gt"] = newValue }
  }

  public var abstainVotes_lt: GraphQLNullable<BigInt> {
    get { __data["abstainVotes_lt"] }
    set { __data["abstainVotes_lt"] = newValue }
  }

  public var abstainVotes_gte: GraphQLNullable<BigInt> {
    get { __data["abstainVotes_gte"] }
    set { __data["abstainVotes_gte"] = newValue }
  }

  public var abstainVotes_lte: GraphQLNullable<BigInt> {
    get { __data["abstainVotes_lte"] }
    set { __data["abstainVotes_lte"] = newValue }
  }

  public var abstainVotes_in: GraphQLNullable<[BigInt]> {
    get { __data["abstainVotes_in"] }
    set { __data["abstainVotes_in"] = newValue }
  }

  public var abstainVotes_not_in: GraphQLNullable<[BigInt]> {
    get { __data["abstainVotes_not_in"] }
    set { __data["abstainVotes_not_in"] = newValue }
  }

  public var title: GraphQLNullable<String> {
    get { __data["title"] }
    set { __data["title"] = newValue }
  }

  public var title_not: GraphQLNullable<String> {
    get { __data["title_not"] }
    set { __data["title_not"] = newValue }
  }

  public var title_gt: GraphQLNullable<String> {
    get { __data["title_gt"] }
    set { __data["title_gt"] = newValue }
  }

  public var title_lt: GraphQLNullable<String> {
    get { __data["title_lt"] }
    set { __data["title_lt"] = newValue }
  }

  public var title_gte: GraphQLNullable<String> {
    get { __data["title_gte"] }
    set { __data["title_gte"] = newValue }
  }

  public var title_lte: GraphQLNullable<String> {
    get { __data["title_lte"] }
    set { __data["title_lte"] = newValue }
  }

  public var title_in: GraphQLNullable<[String]> {
    get { __data["title_in"] }
    set { __data["title_in"] = newValue }
  }

  public var title_not_in: GraphQLNullable<[String]> {
    get { __data["title_not_in"] }
    set { __data["title_not_in"] = newValue }
  }

  public var title_contains: GraphQLNullable<String> {
    get { __data["title_contains"] }
    set { __data["title_contains"] = newValue }
  }

  public var title_contains_nocase: GraphQLNullable<String> {
    get { __data["title_contains_nocase"] }
    set { __data["title_contains_nocase"] = newValue }
  }

  public var title_not_contains: GraphQLNullable<String> {
    get { __data["title_not_contains"] }
    set { __data["title_not_contains"] = newValue }
  }

  public var title_not_contains_nocase: GraphQLNullable<String> {
    get { __data["title_not_contains_nocase"] }
    set { __data["title_not_contains_nocase"] = newValue }
  }

  public var title_starts_with: GraphQLNullable<String> {
    get { __data["title_starts_with"] }
    set { __data["title_starts_with"] = newValue }
  }

  public var title_starts_with_nocase: GraphQLNullable<String> {
    get { __data["title_starts_with_nocase"] }
    set { __data["title_starts_with_nocase"] = newValue }
  }

  public var title_not_starts_with: GraphQLNullable<String> {
    get { __data["title_not_starts_with"] }
    set { __data["title_not_starts_with"] = newValue }
  }

  public var title_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["title_not_starts_with_nocase"] }
    set { __data["title_not_starts_with_nocase"] = newValue }
  }

  public var title_ends_with: GraphQLNullable<String> {
    get { __data["title_ends_with"] }
    set { __data["title_ends_with"] = newValue }
  }

  public var title_ends_with_nocase: GraphQLNullable<String> {
    get { __data["title_ends_with_nocase"] }
    set { __data["title_ends_with_nocase"] = newValue }
  }

  public var title_not_ends_with: GraphQLNullable<String> {
    get { __data["title_not_ends_with"] }
    set { __data["title_not_ends_with"] = newValue }
  }

  public var title_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["title_not_ends_with_nocase"] }
    set { __data["title_not_ends_with_nocase"] = newValue }
  }

  public var description: GraphQLNullable<String> {
    get { __data["description"] }
    set { __data["description"] = newValue }
  }

  public var description_not: GraphQLNullable<String> {
    get { __data["description_not"] }
    set { __data["description_not"] = newValue }
  }

  public var description_gt: GraphQLNullable<String> {
    get { __data["description_gt"] }
    set { __data["description_gt"] = newValue }
  }

  public var description_lt: GraphQLNullable<String> {
    get { __data["description_lt"] }
    set { __data["description_lt"] = newValue }
  }

  public var description_gte: GraphQLNullable<String> {
    get { __data["description_gte"] }
    set { __data["description_gte"] = newValue }
  }

  public var description_lte: GraphQLNullable<String> {
    get { __data["description_lte"] }
    set { __data["description_lte"] = newValue }
  }

  public var description_in: GraphQLNullable<[String]> {
    get { __data["description_in"] }
    set { __data["description_in"] = newValue }
  }

  public var description_not_in: GraphQLNullable<[String]> {
    get { __data["description_not_in"] }
    set { __data["description_not_in"] = newValue }
  }

  public var description_contains: GraphQLNullable<String> {
    get { __data["description_contains"] }
    set { __data["description_contains"] = newValue }
  }

  public var description_contains_nocase: GraphQLNullable<String> {
    get { __data["description_contains_nocase"] }
    set { __data["description_contains_nocase"] = newValue }
  }

  public var description_not_contains: GraphQLNullable<String> {
    get { __data["description_not_contains"] }
    set { __data["description_not_contains"] = newValue }
  }

  public var description_not_contains_nocase: GraphQLNullable<String> {
    get { __data["description_not_contains_nocase"] }
    set { __data["description_not_contains_nocase"] = newValue }
  }

  public var description_starts_with: GraphQLNullable<String> {
    get { __data["description_starts_with"] }
    set { __data["description_starts_with"] = newValue }
  }

  public var description_starts_with_nocase: GraphQLNullable<String> {
    get { __data["description_starts_with_nocase"] }
    set { __data["description_starts_with_nocase"] = newValue }
  }

  public var description_not_starts_with: GraphQLNullable<String> {
    get { __data["description_not_starts_with"] }
    set { __data["description_not_starts_with"] = newValue }
  }

  public var description_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["description_not_starts_with_nocase"] }
    set { __data["description_not_starts_with_nocase"] = newValue }
  }

  public var description_ends_with: GraphQLNullable<String> {
    get { __data["description_ends_with"] }
    set { __data["description_ends_with"] = newValue }
  }

  public var description_ends_with_nocase: GraphQLNullable<String> {
    get { __data["description_ends_with_nocase"] }
    set { __data["description_ends_with_nocase"] = newValue }
  }

  public var description_not_ends_with: GraphQLNullable<String> {
    get { __data["description_not_ends_with"] }
    set { __data["description_not_ends_with"] = newValue }
  }

  public var description_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["description_not_ends_with_nocase"] }
    set { __data["description_not_ends_with_nocase"] = newValue }
  }

  public var status: GraphQLNullable<GraphQLEnum<ProposalStatus>> {
    get { __data["status"] }
    set { __data["status"] = newValue }
  }

  public var status_not: GraphQLNullable<GraphQLEnum<ProposalStatus>> {
    get { __data["status_not"] }
    set { __data["status_not"] = newValue }
  }

  public var status_in: GraphQLNullable<[GraphQLEnum<ProposalStatus>]> {
    get { __data["status_in"] }
    set { __data["status_in"] = newValue }
  }

  public var status_not_in: GraphQLNullable<[GraphQLEnum<ProposalStatus>]> {
    get { __data["status_not_in"] }
    set { __data["status_not_in"] = newValue }
  }

  public var executionETA: GraphQLNullable<BigInt> {
    get { __data["executionETA"] }
    set { __data["executionETA"] = newValue }
  }

  public var executionETA_not: GraphQLNullable<BigInt> {
    get { __data["executionETA_not"] }
    set { __data["executionETA_not"] = newValue }
  }

  public var executionETA_gt: GraphQLNullable<BigInt> {
    get { __data["executionETA_gt"] }
    set { __data["executionETA_gt"] = newValue }
  }

  public var executionETA_lt: GraphQLNullable<BigInt> {
    get { __data["executionETA_lt"] }
    set { __data["executionETA_lt"] = newValue }
  }

  public var executionETA_gte: GraphQLNullable<BigInt> {
    get { __data["executionETA_gte"] }
    set { __data["executionETA_gte"] = newValue }
  }

  public var executionETA_lte: GraphQLNullable<BigInt> {
    get { __data["executionETA_lte"] }
    set { __data["executionETA_lte"] = newValue }
  }

  public var executionETA_in: GraphQLNullable<[BigInt]> {
    get { __data["executionETA_in"] }
    set { __data["executionETA_in"] = newValue }
  }

  public var executionETA_not_in: GraphQLNullable<[BigInt]> {
    get { __data["executionETA_not_in"] }
    set { __data["executionETA_not_in"] = newValue }
  }

  public var votes_: GraphQLNullable<Vote_filter> {
    get { __data["votes_"] }
    set { __data["votes_"] = newValue }
  }

  public var totalSupply: GraphQLNullable<BigInt> {
    get { __data["totalSupply"] }
    set { __data["totalSupply"] = newValue }
  }

  public var totalSupply_not: GraphQLNullable<BigInt> {
    get { __data["totalSupply_not"] }
    set { __data["totalSupply_not"] = newValue }
  }

  public var totalSupply_gt: GraphQLNullable<BigInt> {
    get { __data["totalSupply_gt"] }
    set { __data["totalSupply_gt"] = newValue }
  }

  public var totalSupply_lt: GraphQLNullable<BigInt> {
    get { __data["totalSupply_lt"] }
    set { __data["totalSupply_lt"] = newValue }
  }

  public var totalSupply_gte: GraphQLNullable<BigInt> {
    get { __data["totalSupply_gte"] }
    set { __data["totalSupply_gte"] = newValue }
  }

  public var totalSupply_lte: GraphQLNullable<BigInt> {
    get { __data["totalSupply_lte"] }
    set { __data["totalSupply_lte"] = newValue }
  }

  public var totalSupply_in: GraphQLNullable<[BigInt]> {
    get { __data["totalSupply_in"] }
    set { __data["totalSupply_in"] = newValue }
  }

  public var totalSupply_not_in: GraphQLNullable<[BigInt]> {
    get { __data["totalSupply_not_in"] }
    set { __data["totalSupply_not_in"] = newValue }
  }

  public var minQuorumVotesBPS: GraphQLNullable<Int> {
    get { __data["minQuorumVotesBPS"] }
    set { __data["minQuorumVotesBPS"] = newValue }
  }

  public var minQuorumVotesBPS_not: GraphQLNullable<Int> {
    get { __data["minQuorumVotesBPS_not"] }
    set { __data["minQuorumVotesBPS_not"] = newValue }
  }

  public var minQuorumVotesBPS_gt: GraphQLNullable<Int> {
    get { __data["minQuorumVotesBPS_gt"] }
    set { __data["minQuorumVotesBPS_gt"] = newValue }
  }

  public var minQuorumVotesBPS_lt: GraphQLNullable<Int> {
    get { __data["minQuorumVotesBPS_lt"] }
    set { __data["minQuorumVotesBPS_lt"] = newValue }
  }

  public var minQuorumVotesBPS_gte: GraphQLNullable<Int> {
    get { __data["minQuorumVotesBPS_gte"] }
    set { __data["minQuorumVotesBPS_gte"] = newValue }
  }

  public var minQuorumVotesBPS_lte: GraphQLNullable<Int> {
    get { __data["minQuorumVotesBPS_lte"] }
    set { __data["minQuorumVotesBPS_lte"] = newValue }
  }

  public var minQuorumVotesBPS_in: GraphQLNullable<[Int]> {
    get { __data["minQuorumVotesBPS_in"] }
    set { __data["minQuorumVotesBPS_in"] = newValue }
  }

  public var minQuorumVotesBPS_not_in: GraphQLNullable<[Int]> {
    get { __data["minQuorumVotesBPS_not_in"] }
    set { __data["minQuorumVotesBPS_not_in"] = newValue }
  }

  public var maxQuorumVotesBPS: GraphQLNullable<Int> {
    get { __data["maxQuorumVotesBPS"] }
    set { __data["maxQuorumVotesBPS"] = newValue }
  }

  public var maxQuorumVotesBPS_not: GraphQLNullable<Int> {
    get { __data["maxQuorumVotesBPS_not"] }
    set { __data["maxQuorumVotesBPS_not"] = newValue }
  }

  public var maxQuorumVotesBPS_gt: GraphQLNullable<Int> {
    get { __data["maxQuorumVotesBPS_gt"] }
    set { __data["maxQuorumVotesBPS_gt"] = newValue }
  }

  public var maxQuorumVotesBPS_lt: GraphQLNullable<Int> {
    get { __data["maxQuorumVotesBPS_lt"] }
    set { __data["maxQuorumVotesBPS_lt"] = newValue }
  }

  public var maxQuorumVotesBPS_gte: GraphQLNullable<Int> {
    get { __data["maxQuorumVotesBPS_gte"] }
    set { __data["maxQuorumVotesBPS_gte"] = newValue }
  }

  public var maxQuorumVotesBPS_lte: GraphQLNullable<Int> {
    get { __data["maxQuorumVotesBPS_lte"] }
    set { __data["maxQuorumVotesBPS_lte"] = newValue }
  }

  public var maxQuorumVotesBPS_in: GraphQLNullable<[Int]> {
    get { __data["maxQuorumVotesBPS_in"] }
    set { __data["maxQuorumVotesBPS_in"] = newValue }
  }

  public var maxQuorumVotesBPS_not_in: GraphQLNullable<[Int]> {
    get { __data["maxQuorumVotesBPS_not_in"] }
    set { __data["maxQuorumVotesBPS_not_in"] = newValue }
  }

  public var quorumCoefficient: GraphQLNullable<BigInt> {
    get { __data["quorumCoefficient"] }
    set { __data["quorumCoefficient"] = newValue }
  }

  public var quorumCoefficient_not: GraphQLNullable<BigInt> {
    get { __data["quorumCoefficient_not"] }
    set { __data["quorumCoefficient_not"] = newValue }
  }

  public var quorumCoefficient_gt: GraphQLNullable<BigInt> {
    get { __data["quorumCoefficient_gt"] }
    set { __data["quorumCoefficient_gt"] = newValue }
  }

  public var quorumCoefficient_lt: GraphQLNullable<BigInt> {
    get { __data["quorumCoefficient_lt"] }
    set { __data["quorumCoefficient_lt"] = newValue }
  }

  public var quorumCoefficient_gte: GraphQLNullable<BigInt> {
    get { __data["quorumCoefficient_gte"] }
    set { __data["quorumCoefficient_gte"] = newValue }
  }

  public var quorumCoefficient_lte: GraphQLNullable<BigInt> {
    get { __data["quorumCoefficient_lte"] }
    set { __data["quorumCoefficient_lte"] = newValue }
  }

  public var quorumCoefficient_in: GraphQLNullable<[BigInt]> {
    get { __data["quorumCoefficient_in"] }
    set { __data["quorumCoefficient_in"] = newValue }
  }

  public var quorumCoefficient_not_in: GraphQLNullable<[BigInt]> {
    get { __data["quorumCoefficient_not_in"] }
    set { __data["quorumCoefficient_not_in"] = newValue }
  }

  public var objectionPeriodEndBlock: GraphQLNullable<BigInt> {
    get { __data["objectionPeriodEndBlock"] }
    set { __data["objectionPeriodEndBlock"] = newValue }
  }

  public var objectionPeriodEndBlock_not: GraphQLNullable<BigInt> {
    get { __data["objectionPeriodEndBlock_not"] }
    set { __data["objectionPeriodEndBlock_not"] = newValue }
  }

  public var objectionPeriodEndBlock_gt: GraphQLNullable<BigInt> {
    get { __data["objectionPeriodEndBlock_gt"] }
    set { __data["objectionPeriodEndBlock_gt"] = newValue }
  }

  public var objectionPeriodEndBlock_lt: GraphQLNullable<BigInt> {
    get { __data["objectionPeriodEndBlock_lt"] }
    set { __data["objectionPeriodEndBlock_lt"] = newValue }
  }

  public var objectionPeriodEndBlock_gte: GraphQLNullable<BigInt> {
    get { __data["objectionPeriodEndBlock_gte"] }
    set { __data["objectionPeriodEndBlock_gte"] = newValue }
  }

  public var objectionPeriodEndBlock_lte: GraphQLNullable<BigInt> {
    get { __data["objectionPeriodEndBlock_lte"] }
    set { __data["objectionPeriodEndBlock_lte"] = newValue }
  }

  public var objectionPeriodEndBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["objectionPeriodEndBlock_in"] }
    set { __data["objectionPeriodEndBlock_in"] = newValue }
  }

  public var objectionPeriodEndBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["objectionPeriodEndBlock_not_in"] }
    set { __data["objectionPeriodEndBlock_not_in"] = newValue }
  }

  public var updatePeriodEndBlock: GraphQLNullable<BigInt> {
    get { __data["updatePeriodEndBlock"] }
    set { __data["updatePeriodEndBlock"] = newValue }
  }

  public var updatePeriodEndBlock_not: GraphQLNullable<BigInt> {
    get { __data["updatePeriodEndBlock_not"] }
    set { __data["updatePeriodEndBlock_not"] = newValue }
  }

  public var updatePeriodEndBlock_gt: GraphQLNullable<BigInt> {
    get { __data["updatePeriodEndBlock_gt"] }
    set { __data["updatePeriodEndBlock_gt"] = newValue }
  }

  public var updatePeriodEndBlock_lt: GraphQLNullable<BigInt> {
    get { __data["updatePeriodEndBlock_lt"] }
    set { __data["updatePeriodEndBlock_lt"] = newValue }
  }

  public var updatePeriodEndBlock_gte: GraphQLNullable<BigInt> {
    get { __data["updatePeriodEndBlock_gte"] }
    set { __data["updatePeriodEndBlock_gte"] = newValue }
  }

  public var updatePeriodEndBlock_lte: GraphQLNullable<BigInt> {
    get { __data["updatePeriodEndBlock_lte"] }
    set { __data["updatePeriodEndBlock_lte"] = newValue }
  }

  public var updatePeriodEndBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["updatePeriodEndBlock_in"] }
    set { __data["updatePeriodEndBlock_in"] = newValue }
  }

  public var updatePeriodEndBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["updatePeriodEndBlock_not_in"] }
    set { __data["updatePeriodEndBlock_not_in"] = newValue }
  }

  public var feedbackPosts_: GraphQLNullable<ProposalFeedback_filter> {
    get { __data["feedbackPosts_"] }
    set { __data["feedbackPosts_"] = newValue }
  }

  public var onTimelockV1: GraphQLNullable<Bool> {
    get { __data["onTimelockV1"] }
    set { __data["onTimelockV1"] = newValue }
  }

  public var onTimelockV1_not: GraphQLNullable<Bool> {
    get { __data["onTimelockV1_not"] }
    set { __data["onTimelockV1_not"] = newValue }
  }

  public var onTimelockV1_in: GraphQLNullable<[Bool]> {
    get { __data["onTimelockV1_in"] }
    set { __data["onTimelockV1_in"] = newValue }
  }

  public var onTimelockV1_not_in: GraphQLNullable<[Bool]> {
    get { __data["onTimelockV1_not_in"] }
    set { __data["onTimelockV1_not_in"] = newValue }
  }

  public var voteSnapshotBlock: GraphQLNullable<BigInt> {
    get { __data["voteSnapshotBlock"] }
    set { __data["voteSnapshotBlock"] = newValue }
  }

  public var voteSnapshotBlock_not: GraphQLNullable<BigInt> {
    get { __data["voteSnapshotBlock_not"] }
    set { __data["voteSnapshotBlock_not"] = newValue }
  }

  public var voteSnapshotBlock_gt: GraphQLNullable<BigInt> {
    get { __data["voteSnapshotBlock_gt"] }
    set { __data["voteSnapshotBlock_gt"] = newValue }
  }

  public var voteSnapshotBlock_lt: GraphQLNullable<BigInt> {
    get { __data["voteSnapshotBlock_lt"] }
    set { __data["voteSnapshotBlock_lt"] = newValue }
  }

  public var voteSnapshotBlock_gte: GraphQLNullable<BigInt> {
    get { __data["voteSnapshotBlock_gte"] }
    set { __data["voteSnapshotBlock_gte"] = newValue }
  }

  public var voteSnapshotBlock_lte: GraphQLNullable<BigInt> {
    get { __data["voteSnapshotBlock_lte"] }
    set { __data["voteSnapshotBlock_lte"] = newValue }
  }

  public var voteSnapshotBlock_in: GraphQLNullable<[BigInt]> {
    get { __data["voteSnapshotBlock_in"] }
    set { __data["voteSnapshotBlock_in"] = newValue }
  }

  public var voteSnapshotBlock_not_in: GraphQLNullable<[BigInt]> {
    get { __data["voteSnapshotBlock_not_in"] }
    set { __data["voteSnapshotBlock_not_in"] = newValue }
  }

  /// Filter for the block changed event.
  public var _change_block: GraphQLNullable<BlockChangedFilter> {
    get { __data["_change_block"] }
    set { __data["_change_block"] = newValue }
  }

  public var and: GraphQLNullable<[Proposal_filter?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var or: GraphQLNullable<[Proposal_filter?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }
}
