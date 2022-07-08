1.) How can I get a list of the recent liquidations on the Aave Polygon V3 market?
2.) How do I get my token listed on Aave?
3.) How often do token prices update and based upon which price service?
4.) I’m interested in building a liquidation bot, what do I need to get started on this?

1
https://docs.aave.com/developers/guides/liquidations

2
https://docs.aave.com/governance/guides/new-asset-listing
Aave Request for Comments (ARCs) are the first step in the governance improvement process.
Aave Improvement Proposal (AIP) may be created and submitted by any community member who has sufficient proposition power. 

A snapshot vote is recommended to gather community feedback and the preferred path. This snapshot allows to reach a rought consensus to maximize the chances of positive outcome of the AIP submission. 

Decentralizing the addition of new assets
V3 introduces a new concept of “Asset Listing Admins.” With this feature, Aave Governance can create and grant rights to any entity, even smart contracts, to implement new strategies to add assets to the Aave protocol other than through an onchain vote. This will allow builders to create custom asset listing strategies which can be designed to bring true permissionless asset listing.

Isolation Mode
“Isolation Mode” is intended to allow Aave Governance to enact risk mitigation features when a new asset market is created on the protocol.

When a community member submits a governance proposal to create a new asset market on V3, the proposal can seek to list the assets as “isolated collateral” such that users supplying those “isolated” assets can only borrow stablecoins that Aave Governance has “permissioned” to be borrowed in isolation mode, up to a specified debt ceiling.

When a user supplies an “isolated asset” as collateral, that user can only use that asset as collateral; even if the user supplies other assets to the protocol, the user can only earn yield on those assets and cannot use those assets as collateral.

$TOKEN2 can also exit isolation mode when Aave Governance votes on a proposal to remove the debt ceiling related to that asset.

3
Aave relies on Chainlink oracles for all price updates. Prices are updates occur on a set interval  or if a certain threshold is reached (i.e. 2% price deviation), each asset has it's own parameters for the interval and deviation

4
https://docs.aave.com/developers/guides/liquidations
