// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct Vote_filter: InputObject {
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
    support: GraphQLNullable<Bool> = nil,
    support_not: GraphQLNullable<Bool> = nil,
    support_in: GraphQLNullable<[Bool]> = nil,
    support_not_in: GraphQLNullable<[Bool]> = nil,
    supportDetailed: GraphQLNullable<Int> = nil,
    supportDetailed_not: GraphQLNullable<Int> = nil,
    supportDetailed_gt: GraphQLNullable<Int> = nil,
    supportDetailed_lt: GraphQLNullable<Int> = nil,
    supportDetailed_gte: GraphQLNullable<Int> = nil,
    supportDetailed_lte: GraphQLNullable<Int> = nil,
    supportDetailed_in: GraphQLNullable<[Int]> = nil,
    supportDetailed_not_in: GraphQLNullable<[Int]> = nil,
    votesRaw: GraphQLNullable<BigInt> = nil,
    votesRaw_not: GraphQLNullable<BigInt> = nil,
    votesRaw_gt: GraphQLNullable<BigInt> = nil,
    votesRaw_lt: GraphQLNullable<BigInt> = nil,
    votesRaw_gte: GraphQLNullable<BigInt> = nil,
    votesRaw_lte: GraphQLNullable<BigInt> = nil,
    votesRaw_in: GraphQLNullable<[BigInt]> = nil,
    votesRaw_not_in: GraphQLNullable<[BigInt]> = nil,
    votes: GraphQLNullable<BigInt> = nil,
    votes_not: GraphQLNullable<BigInt> = nil,
    votes_gt: GraphQLNullable<BigInt> = nil,
    votes_lt: GraphQLNullable<BigInt> = nil,
    votes_gte: GraphQLNullable<BigInt> = nil,
    votes_lte: GraphQLNullable<BigInt> = nil,
    votes_in: GraphQLNullable<[BigInt]> = nil,
    votes_not_in: GraphQLNullable<[BigInt]> = nil,
    reason: GraphQLNullable<String> = nil,
    reason_not: GraphQLNullable<String> = nil,
    reason_gt: GraphQLNullable<String> = nil,
    reason_lt: GraphQLNullable<String> = nil,
    reason_gte: GraphQLNullable<String> = nil,
    reason_lte: GraphQLNullable<String> = nil,
    reason_in: GraphQLNullable<[String]> = nil,
    reason_not_in: GraphQLNullable<[String]> = nil,
    reason_contains: GraphQLNullable<String> = nil,
    reason_contains_nocase: GraphQLNullable<String> = nil,
    reason_not_contains: GraphQLNullable<String> = nil,
    reason_not_contains_nocase: GraphQLNullable<String> = nil,
    reason_starts_with: GraphQLNullable<String> = nil,
    reason_starts_with_nocase: GraphQLNullable<String> = nil,
    reason_not_starts_with: GraphQLNullable<String> = nil,
    reason_not_starts_with_nocase: GraphQLNullable<String> = nil,
    reason_ends_with: GraphQLNullable<String> = nil,
    reason_ends_with_nocase: GraphQLNullable<String> = nil,
    reason_not_ends_with: GraphQLNullable<String> = nil,
    reason_not_ends_with_nocase: GraphQLNullable<String> = nil,
    voter: GraphQLNullable<String> = nil,
    voter_not: GraphQLNullable<String> = nil,
    voter_gt: GraphQLNullable<String> = nil,
    voter_lt: GraphQLNullable<String> = nil,
    voter_gte: GraphQLNullable<String> = nil,
    voter_lte: GraphQLNullable<String> = nil,
    voter_in: GraphQLNullable<[String]> = nil,
    voter_not_in: GraphQLNullable<[String]> = nil,
    voter_contains: GraphQLNullable<String> = nil,
    voter_contains_nocase: GraphQLNullable<String> = nil,
    voter_not_contains: GraphQLNullable<String> = nil,
    voter_not_contains_nocase: GraphQLNullable<String> = nil,
    voter_starts_with: GraphQLNullable<String> = nil,
    voter_starts_with_nocase: GraphQLNullable<String> = nil,
    voter_not_starts_with: GraphQLNullable<String> = nil,
    voter_not_starts_with_nocase: GraphQLNullable<String> = nil,
    voter_ends_with: GraphQLNullable<String> = nil,
    voter_ends_with_nocase: GraphQLNullable<String> = nil,
    voter_not_ends_with: GraphQLNullable<String> = nil,
    voter_not_ends_with_nocase: GraphQLNullable<String> = nil,
    voter_: GraphQLNullable<Delegate_filter> = nil,
    nouns: GraphQLNullable<[String]> = nil,
    nouns_not: GraphQLNullable<[String]> = nil,
    nouns_contains: GraphQLNullable<[String]> = nil,
    nouns_contains_nocase: GraphQLNullable<[String]> = nil,
    nouns_not_contains: GraphQLNullable<[String]> = nil,
    nouns_not_contains_nocase: GraphQLNullable<[String]> = nil,
    nouns_: GraphQLNullable<Noun_filter> = nil,
    proposal: GraphQLNullable<String> = nil,
    proposal_not: GraphQLNullable<String> = nil,
    proposal_gt: GraphQLNullable<String> = nil,
    proposal_lt: GraphQLNullable<String> = nil,
    proposal_gte: GraphQLNullable<String> = nil,
    proposal_lte: GraphQLNullable<String> = nil,
    proposal_in: GraphQLNullable<[String]> = nil,
    proposal_not_in: GraphQLNullable<[String]> = nil,
    proposal_contains: GraphQLNullable<String> = nil,
    proposal_contains_nocase: GraphQLNullable<String> = nil,
    proposal_not_contains: GraphQLNullable<String> = nil,
    proposal_not_contains_nocase: GraphQLNullable<String> = nil,
    proposal_starts_with: GraphQLNullable<String> = nil,
    proposal_starts_with_nocase: GraphQLNullable<String> = nil,
    proposal_not_starts_with: GraphQLNullable<String> = nil,
    proposal_not_starts_with_nocase: GraphQLNullable<String> = nil,
    proposal_ends_with: GraphQLNullable<String> = nil,
    proposal_ends_with_nocase: GraphQLNullable<String> = nil,
    proposal_not_ends_with: GraphQLNullable<String> = nil,
    proposal_not_ends_with_nocase: GraphQLNullable<String> = nil,
    proposal_: GraphQLNullable<Proposal_filter> = nil,
    blockNumber: GraphQLNullable<BigInt> = nil,
    blockNumber_not: GraphQLNullable<BigInt> = nil,
    blockNumber_gt: GraphQLNullable<BigInt> = nil,
    blockNumber_lt: GraphQLNullable<BigInt> = nil,
    blockNumber_gte: GraphQLNullable<BigInt> = nil,
    blockNumber_lte: GraphQLNullable<BigInt> = nil,
    blockNumber_in: GraphQLNullable<[BigInt]> = nil,
    blockNumber_not_in: GraphQLNullable<[BigInt]> = nil,
    _change_block: GraphQLNullable<BlockChangedFilter> = nil,
    and: GraphQLNullable<[Vote_filter?]> = nil,
    or: GraphQLNullable<[Vote_filter?]> = nil
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
      "support": support,
      "support_not": support_not,
      "support_in": support_in,
      "support_not_in": support_not_in,
      "supportDetailed": supportDetailed,
      "supportDetailed_not": supportDetailed_not,
      "supportDetailed_gt": supportDetailed_gt,
      "supportDetailed_lt": supportDetailed_lt,
      "supportDetailed_gte": supportDetailed_gte,
      "supportDetailed_lte": supportDetailed_lte,
      "supportDetailed_in": supportDetailed_in,
      "supportDetailed_not_in": supportDetailed_not_in,
      "votesRaw": votesRaw,
      "votesRaw_not": votesRaw_not,
      "votesRaw_gt": votesRaw_gt,
      "votesRaw_lt": votesRaw_lt,
      "votesRaw_gte": votesRaw_gte,
      "votesRaw_lte": votesRaw_lte,
      "votesRaw_in": votesRaw_in,
      "votesRaw_not_in": votesRaw_not_in,
      "votes": votes,
      "votes_not": votes_not,
      "votes_gt": votes_gt,
      "votes_lt": votes_lt,
      "votes_gte": votes_gte,
      "votes_lte": votes_lte,
      "votes_in": votes_in,
      "votes_not_in": votes_not_in,
      "reason": reason,
      "reason_not": reason_not,
      "reason_gt": reason_gt,
      "reason_lt": reason_lt,
      "reason_gte": reason_gte,
      "reason_lte": reason_lte,
      "reason_in": reason_in,
      "reason_not_in": reason_not_in,
      "reason_contains": reason_contains,
      "reason_contains_nocase": reason_contains_nocase,
      "reason_not_contains": reason_not_contains,
      "reason_not_contains_nocase": reason_not_contains_nocase,
      "reason_starts_with": reason_starts_with,
      "reason_starts_with_nocase": reason_starts_with_nocase,
      "reason_not_starts_with": reason_not_starts_with,
      "reason_not_starts_with_nocase": reason_not_starts_with_nocase,
      "reason_ends_with": reason_ends_with,
      "reason_ends_with_nocase": reason_ends_with_nocase,
      "reason_not_ends_with": reason_not_ends_with,
      "reason_not_ends_with_nocase": reason_not_ends_with_nocase,
      "voter": voter,
      "voter_not": voter_not,
      "voter_gt": voter_gt,
      "voter_lt": voter_lt,
      "voter_gte": voter_gte,
      "voter_lte": voter_lte,
      "voter_in": voter_in,
      "voter_not_in": voter_not_in,
      "voter_contains": voter_contains,
      "voter_contains_nocase": voter_contains_nocase,
      "voter_not_contains": voter_not_contains,
      "voter_not_contains_nocase": voter_not_contains_nocase,
      "voter_starts_with": voter_starts_with,
      "voter_starts_with_nocase": voter_starts_with_nocase,
      "voter_not_starts_with": voter_not_starts_with,
      "voter_not_starts_with_nocase": voter_not_starts_with_nocase,
      "voter_ends_with": voter_ends_with,
      "voter_ends_with_nocase": voter_ends_with_nocase,
      "voter_not_ends_with": voter_not_ends_with,
      "voter_not_ends_with_nocase": voter_not_ends_with_nocase,
      "voter_": voter_,
      "nouns": nouns,
      "nouns_not": nouns_not,
      "nouns_contains": nouns_contains,
      "nouns_contains_nocase": nouns_contains_nocase,
      "nouns_not_contains": nouns_not_contains,
      "nouns_not_contains_nocase": nouns_not_contains_nocase,
      "nouns_": nouns_,
      "proposal": proposal,
      "proposal_not": proposal_not,
      "proposal_gt": proposal_gt,
      "proposal_lt": proposal_lt,
      "proposal_gte": proposal_gte,
      "proposal_lte": proposal_lte,
      "proposal_in": proposal_in,
      "proposal_not_in": proposal_not_in,
      "proposal_contains": proposal_contains,
      "proposal_contains_nocase": proposal_contains_nocase,
      "proposal_not_contains": proposal_not_contains,
      "proposal_not_contains_nocase": proposal_not_contains_nocase,
      "proposal_starts_with": proposal_starts_with,
      "proposal_starts_with_nocase": proposal_starts_with_nocase,
      "proposal_not_starts_with": proposal_not_starts_with,
      "proposal_not_starts_with_nocase": proposal_not_starts_with_nocase,
      "proposal_ends_with": proposal_ends_with,
      "proposal_ends_with_nocase": proposal_ends_with_nocase,
      "proposal_not_ends_with": proposal_not_ends_with,
      "proposal_not_ends_with_nocase": proposal_not_ends_with_nocase,
      "proposal_": proposal_,
      "blockNumber": blockNumber,
      "blockNumber_not": blockNumber_not,
      "blockNumber_gt": blockNumber_gt,
      "blockNumber_lt": blockNumber_lt,
      "blockNumber_gte": blockNumber_gte,
      "blockNumber_lte": blockNumber_lte,
      "blockNumber_in": blockNumber_in,
      "blockNumber_not_in": blockNumber_not_in,
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

  public var support: GraphQLNullable<Bool> {
    get { __data["support"] }
    set { __data["support"] = newValue }
  }

  public var support_not: GraphQLNullable<Bool> {
    get { __data["support_not"] }
    set { __data["support_not"] = newValue }
  }

  public var support_in: GraphQLNullable<[Bool]> {
    get { __data["support_in"] }
    set { __data["support_in"] = newValue }
  }

  public var support_not_in: GraphQLNullable<[Bool]> {
    get { __data["support_not_in"] }
    set { __data["support_not_in"] = newValue }
  }

  public var supportDetailed: GraphQLNullable<Int> {
    get { __data["supportDetailed"] }
    set { __data["supportDetailed"] = newValue }
  }

  public var supportDetailed_not: GraphQLNullable<Int> {
    get { __data["supportDetailed_not"] }
    set { __data["supportDetailed_not"] = newValue }
  }

  public var supportDetailed_gt: GraphQLNullable<Int> {
    get { __data["supportDetailed_gt"] }
    set { __data["supportDetailed_gt"] = newValue }
  }

  public var supportDetailed_lt: GraphQLNullable<Int> {
    get { __data["supportDetailed_lt"] }
    set { __data["supportDetailed_lt"] = newValue }
  }

  public var supportDetailed_gte: GraphQLNullable<Int> {
    get { __data["supportDetailed_gte"] }
    set { __data["supportDetailed_gte"] = newValue }
  }

  public var supportDetailed_lte: GraphQLNullable<Int> {
    get { __data["supportDetailed_lte"] }
    set { __data["supportDetailed_lte"] = newValue }
  }

  public var supportDetailed_in: GraphQLNullable<[Int]> {
    get { __data["supportDetailed_in"] }
    set { __data["supportDetailed_in"] = newValue }
  }

  public var supportDetailed_not_in: GraphQLNullable<[Int]> {
    get { __data["supportDetailed_not_in"] }
    set { __data["supportDetailed_not_in"] = newValue }
  }

  public var votesRaw: GraphQLNullable<BigInt> {
    get { __data["votesRaw"] }
    set { __data["votesRaw"] = newValue }
  }

  public var votesRaw_not: GraphQLNullable<BigInt> {
    get { __data["votesRaw_not"] }
    set { __data["votesRaw_not"] = newValue }
  }

  public var votesRaw_gt: GraphQLNullable<BigInt> {
    get { __data["votesRaw_gt"] }
    set { __data["votesRaw_gt"] = newValue }
  }

  public var votesRaw_lt: GraphQLNullable<BigInt> {
    get { __data["votesRaw_lt"] }
    set { __data["votesRaw_lt"] = newValue }
  }

  public var votesRaw_gte: GraphQLNullable<BigInt> {
    get { __data["votesRaw_gte"] }
    set { __data["votesRaw_gte"] = newValue }
  }

  public var votesRaw_lte: GraphQLNullable<BigInt> {
    get { __data["votesRaw_lte"] }
    set { __data["votesRaw_lte"] = newValue }
  }

  public var votesRaw_in: GraphQLNullable<[BigInt]> {
    get { __data["votesRaw_in"] }
    set { __data["votesRaw_in"] = newValue }
  }

  public var votesRaw_not_in: GraphQLNullable<[BigInt]> {
    get { __data["votesRaw_not_in"] }
    set { __data["votesRaw_not_in"] = newValue }
  }

  public var votes: GraphQLNullable<BigInt> {
    get { __data["votes"] }
    set { __data["votes"] = newValue }
  }

  public var votes_not: GraphQLNullable<BigInt> {
    get { __data["votes_not"] }
    set { __data["votes_not"] = newValue }
  }

  public var votes_gt: GraphQLNullable<BigInt> {
    get { __data["votes_gt"] }
    set { __data["votes_gt"] = newValue }
  }

  public var votes_lt: GraphQLNullable<BigInt> {
    get { __data["votes_lt"] }
    set { __data["votes_lt"] = newValue }
  }

  public var votes_gte: GraphQLNullable<BigInt> {
    get { __data["votes_gte"] }
    set { __data["votes_gte"] = newValue }
  }

  public var votes_lte: GraphQLNullable<BigInt> {
    get { __data["votes_lte"] }
    set { __data["votes_lte"] = newValue }
  }

  public var votes_in: GraphQLNullable<[BigInt]> {
    get { __data["votes_in"] }
    set { __data["votes_in"] = newValue }
  }

  public var votes_not_in: GraphQLNullable<[BigInt]> {
    get { __data["votes_not_in"] }
    set { __data["votes_not_in"] = newValue }
  }

  public var reason: GraphQLNullable<String> {
    get { __data["reason"] }
    set { __data["reason"] = newValue }
  }

  public var reason_not: GraphQLNullable<String> {
    get { __data["reason_not"] }
    set { __data["reason_not"] = newValue }
  }

  public var reason_gt: GraphQLNullable<String> {
    get { __data["reason_gt"] }
    set { __data["reason_gt"] = newValue }
  }

  public var reason_lt: GraphQLNullable<String> {
    get { __data["reason_lt"] }
    set { __data["reason_lt"] = newValue }
  }

  public var reason_gte: GraphQLNullable<String> {
    get { __data["reason_gte"] }
    set { __data["reason_gte"] = newValue }
  }

  public var reason_lte: GraphQLNullable<String> {
    get { __data["reason_lte"] }
    set { __data["reason_lte"] = newValue }
  }

  public var reason_in: GraphQLNullable<[String]> {
    get { __data["reason_in"] }
    set { __data["reason_in"] = newValue }
  }

  public var reason_not_in: GraphQLNullable<[String]> {
    get { __data["reason_not_in"] }
    set { __data["reason_not_in"] = newValue }
  }

  public var reason_contains: GraphQLNullable<String> {
    get { __data["reason_contains"] }
    set { __data["reason_contains"] = newValue }
  }

  public var reason_contains_nocase: GraphQLNullable<String> {
    get { __data["reason_contains_nocase"] }
    set { __data["reason_contains_nocase"] = newValue }
  }

  public var reason_not_contains: GraphQLNullable<String> {
    get { __data["reason_not_contains"] }
    set { __data["reason_not_contains"] = newValue }
  }

  public var reason_not_contains_nocase: GraphQLNullable<String> {
    get { __data["reason_not_contains_nocase"] }
    set { __data["reason_not_contains_nocase"] = newValue }
  }

  public var reason_starts_with: GraphQLNullable<String> {
    get { __data["reason_starts_with"] }
    set { __data["reason_starts_with"] = newValue }
  }

  public var reason_starts_with_nocase: GraphQLNullable<String> {
    get { __data["reason_starts_with_nocase"] }
    set { __data["reason_starts_with_nocase"] = newValue }
  }

  public var reason_not_starts_with: GraphQLNullable<String> {
    get { __data["reason_not_starts_with"] }
    set { __data["reason_not_starts_with"] = newValue }
  }

  public var reason_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["reason_not_starts_with_nocase"] }
    set { __data["reason_not_starts_with_nocase"] = newValue }
  }

  public var reason_ends_with: GraphQLNullable<String> {
    get { __data["reason_ends_with"] }
    set { __data["reason_ends_with"] = newValue }
  }

  public var reason_ends_with_nocase: GraphQLNullable<String> {
    get { __data["reason_ends_with_nocase"] }
    set { __data["reason_ends_with_nocase"] = newValue }
  }

  public var reason_not_ends_with: GraphQLNullable<String> {
    get { __data["reason_not_ends_with"] }
    set { __data["reason_not_ends_with"] = newValue }
  }

  public var reason_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["reason_not_ends_with_nocase"] }
    set { __data["reason_not_ends_with_nocase"] = newValue }
  }

  public var voter: GraphQLNullable<String> {
    get { __data["voter"] }
    set { __data["voter"] = newValue }
  }

  public var voter_not: GraphQLNullable<String> {
    get { __data["voter_not"] }
    set { __data["voter_not"] = newValue }
  }

  public var voter_gt: GraphQLNullable<String> {
    get { __data["voter_gt"] }
    set { __data["voter_gt"] = newValue }
  }

  public var voter_lt: GraphQLNullable<String> {
    get { __data["voter_lt"] }
    set { __data["voter_lt"] = newValue }
  }

  public var voter_gte: GraphQLNullable<String> {
    get { __data["voter_gte"] }
    set { __data["voter_gte"] = newValue }
  }

  public var voter_lte: GraphQLNullable<String> {
    get { __data["voter_lte"] }
    set { __data["voter_lte"] = newValue }
  }

  public var voter_in: GraphQLNullable<[String]> {
    get { __data["voter_in"] }
    set { __data["voter_in"] = newValue }
  }

  public var voter_not_in: GraphQLNullable<[String]> {
    get { __data["voter_not_in"] }
    set { __data["voter_not_in"] = newValue }
  }

  public var voter_contains: GraphQLNullable<String> {
    get { __data["voter_contains"] }
    set { __data["voter_contains"] = newValue }
  }

  public var voter_contains_nocase: GraphQLNullable<String> {
    get { __data["voter_contains_nocase"] }
    set { __data["voter_contains_nocase"] = newValue }
  }

  public var voter_not_contains: GraphQLNullable<String> {
    get { __data["voter_not_contains"] }
    set { __data["voter_not_contains"] = newValue }
  }

  public var voter_not_contains_nocase: GraphQLNullable<String> {
    get { __data["voter_not_contains_nocase"] }
    set { __data["voter_not_contains_nocase"] = newValue }
  }

  public var voter_starts_with: GraphQLNullable<String> {
    get { __data["voter_starts_with"] }
    set { __data["voter_starts_with"] = newValue }
  }

  public var voter_starts_with_nocase: GraphQLNullable<String> {
    get { __data["voter_starts_with_nocase"] }
    set { __data["voter_starts_with_nocase"] = newValue }
  }

  public var voter_not_starts_with: GraphQLNullable<String> {
    get { __data["voter_not_starts_with"] }
    set { __data["voter_not_starts_with"] = newValue }
  }

  public var voter_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["voter_not_starts_with_nocase"] }
    set { __data["voter_not_starts_with_nocase"] = newValue }
  }

  public var voter_ends_with: GraphQLNullable<String> {
    get { __data["voter_ends_with"] }
    set { __data["voter_ends_with"] = newValue }
  }

  public var voter_ends_with_nocase: GraphQLNullable<String> {
    get { __data["voter_ends_with_nocase"] }
    set { __data["voter_ends_with_nocase"] = newValue }
  }

  public var voter_not_ends_with: GraphQLNullable<String> {
    get { __data["voter_not_ends_with"] }
    set { __data["voter_not_ends_with"] = newValue }
  }

  public var voter_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["voter_not_ends_with_nocase"] }
    set { __data["voter_not_ends_with_nocase"] = newValue }
  }

  public var voter_: GraphQLNullable<Delegate_filter> {
    get { __data["voter_"] }
    set { __data["voter_"] = newValue }
  }

  public var nouns: GraphQLNullable<[String]> {
    get { __data["nouns"] }
    set { __data["nouns"] = newValue }
  }

  public var nouns_not: GraphQLNullable<[String]> {
    get { __data["nouns_not"] }
    set { __data["nouns_not"] = newValue }
  }

  public var nouns_contains: GraphQLNullable<[String]> {
    get { __data["nouns_contains"] }
    set { __data["nouns_contains"] = newValue }
  }

  public var nouns_contains_nocase: GraphQLNullable<[String]> {
    get { __data["nouns_contains_nocase"] }
    set { __data["nouns_contains_nocase"] = newValue }
  }

  public var nouns_not_contains: GraphQLNullable<[String]> {
    get { __data["nouns_not_contains"] }
    set { __data["nouns_not_contains"] = newValue }
  }

  public var nouns_not_contains_nocase: GraphQLNullable<[String]> {
    get { __data["nouns_not_contains_nocase"] }
    set { __data["nouns_not_contains_nocase"] = newValue }
  }

  public var nouns_: GraphQLNullable<Noun_filter> {
    get { __data["nouns_"] }
    set { __data["nouns_"] = newValue }
  }

  public var proposal: GraphQLNullable<String> {
    get { __data["proposal"] }
    set { __data["proposal"] = newValue }
  }

  public var proposal_not: GraphQLNullable<String> {
    get { __data["proposal_not"] }
    set { __data["proposal_not"] = newValue }
  }

  public var proposal_gt: GraphQLNullable<String> {
    get { __data["proposal_gt"] }
    set { __data["proposal_gt"] = newValue }
  }

  public var proposal_lt: GraphQLNullable<String> {
    get { __data["proposal_lt"] }
    set { __data["proposal_lt"] = newValue }
  }

  public var proposal_gte: GraphQLNullable<String> {
    get { __data["proposal_gte"] }
    set { __data["proposal_gte"] = newValue }
  }

  public var proposal_lte: GraphQLNullable<String> {
    get { __data["proposal_lte"] }
    set { __data["proposal_lte"] = newValue }
  }

  public var proposal_in: GraphQLNullable<[String]> {
    get { __data["proposal_in"] }
    set { __data["proposal_in"] = newValue }
  }

  public var proposal_not_in: GraphQLNullable<[String]> {
    get { __data["proposal_not_in"] }
    set { __data["proposal_not_in"] = newValue }
  }

  public var proposal_contains: GraphQLNullable<String> {
    get { __data["proposal_contains"] }
    set { __data["proposal_contains"] = newValue }
  }

  public var proposal_contains_nocase: GraphQLNullable<String> {
    get { __data["proposal_contains_nocase"] }
    set { __data["proposal_contains_nocase"] = newValue }
  }

  public var proposal_not_contains: GraphQLNullable<String> {
    get { __data["proposal_not_contains"] }
    set { __data["proposal_not_contains"] = newValue }
  }

  public var proposal_not_contains_nocase: GraphQLNullable<String> {
    get { __data["proposal_not_contains_nocase"] }
    set { __data["proposal_not_contains_nocase"] = newValue }
  }

  public var proposal_starts_with: GraphQLNullable<String> {
    get { __data["proposal_starts_with"] }
    set { __data["proposal_starts_with"] = newValue }
  }

  public var proposal_starts_with_nocase: GraphQLNullable<String> {
    get { __data["proposal_starts_with_nocase"] }
    set { __data["proposal_starts_with_nocase"] = newValue }
  }

  public var proposal_not_starts_with: GraphQLNullable<String> {
    get { __data["proposal_not_starts_with"] }
    set { __data["proposal_not_starts_with"] = newValue }
  }

  public var proposal_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["proposal_not_starts_with_nocase"] }
    set { __data["proposal_not_starts_with_nocase"] = newValue }
  }

  public var proposal_ends_with: GraphQLNullable<String> {
    get { __data["proposal_ends_with"] }
    set { __data["proposal_ends_with"] = newValue }
  }

  public var proposal_ends_with_nocase: GraphQLNullable<String> {
    get { __data["proposal_ends_with_nocase"] }
    set { __data["proposal_ends_with_nocase"] = newValue }
  }

  public var proposal_not_ends_with: GraphQLNullable<String> {
    get { __data["proposal_not_ends_with"] }
    set { __data["proposal_not_ends_with"] = newValue }
  }

  public var proposal_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["proposal_not_ends_with_nocase"] }
    set { __data["proposal_not_ends_with_nocase"] = newValue }
  }

  public var proposal_: GraphQLNullable<Proposal_filter> {
    get { __data["proposal_"] }
    set { __data["proposal_"] = newValue }
  }

  public var blockNumber: GraphQLNullable<BigInt> {
    get { __data["blockNumber"] }
    set { __data["blockNumber"] = newValue }
  }

  public var blockNumber_not: GraphQLNullable<BigInt> {
    get { __data["blockNumber_not"] }
    set { __data["blockNumber_not"] = newValue }
  }

  public var blockNumber_gt: GraphQLNullable<BigInt> {
    get { __data["blockNumber_gt"] }
    set { __data["blockNumber_gt"] = newValue }
  }

  public var blockNumber_lt: GraphQLNullable<BigInt> {
    get { __data["blockNumber_lt"] }
    set { __data["blockNumber_lt"] = newValue }
  }

  public var blockNumber_gte: GraphQLNullable<BigInt> {
    get { __data["blockNumber_gte"] }
    set { __data["blockNumber_gte"] = newValue }
  }

  public var blockNumber_lte: GraphQLNullable<BigInt> {
    get { __data["blockNumber_lte"] }
    set { __data["blockNumber_lte"] = newValue }
  }

  public var blockNumber_in: GraphQLNullable<[BigInt]> {
    get { __data["blockNumber_in"] }
    set { __data["blockNumber_in"] = newValue }
  }

  public var blockNumber_not_in: GraphQLNullable<[BigInt]> {
    get { __data["blockNumber_not_in"] }
    set { __data["blockNumber_not_in"] = newValue }
  }

  /// Filter for the block changed event.
  public var _change_block: GraphQLNullable<BlockChangedFilter> {
    get { __data["_change_block"] }
    set { __data["_change_block"] = newValue }
  }

  public var and: GraphQLNullable<[Vote_filter?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var or: GraphQLNullable<[Vote_filter?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }
}
