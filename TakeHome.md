1.) How can I get a list of the recent liquidations on the Aave Polygon V3 market?

One way of creating a local list of liquidations would be to monitor emitted events from the protocol. For each user interacting with the protocol, take the user's address and call getUserAccountData(), part of this function will return the user's current 'healthFactor'. If this healthFactor is below 1 then the account can be liquidated by calling liquidationCall() directly on the Pool or L2Pool Contracts.
V1 has a Liquidations API which can be sent a GET request to return the data in a JSON format.

2.) How do I get my token listed on Aave?

First it is recommended to use the Aave Request for Comments (ARC) process, this will allow community feedback, improvements and a rough consensus which can be snapshotted for use in the following Aave Improvement Proposal (AIP). This should be followed by risk analysis including proposed risk parameters and interest rate curves. The smart contract should also be peer-reviewed before the AIP to ensure the new asset fits into Aave's ecosystem.
Once the ARC has reached community consensus, an AIP can be proposed as long as the proposer has enough proposition power using the Asset Onboarding Template. Every new asset proposed must have a ChainLink price feed and all necessary payloads must be included in the proposal.

New in V3, community members can submit governance proposals to creat asset markets in 'isolated mode', this only allows the borrowing of 'permissioned' stablecoins. This allows Aave Governance to enact risk mitigation features on the new asset but the 'isolated asset' can also exit isolation mode via another proposal to remove the debt ceiling related to the asset. Also of note, as of V3, Aave Governance can grant the right of 'Asset Listing Admin' to any entity, allowing builders to great custom asset listing strategies.  

3.) How often do token prices update and based upon which price service?


Asset price updates occur on a set time interval or when a certain price deviation is reached, these updates use ChainLink Oracles for price updates.

4.) I’m interested in building a liquidation bot, what do I need to get started on this?

A liquidation bot should first and foremost have access to enough capital to transact with the network and perform liquidations. It should also have access to the latest protocol user data and the ability to calculate the profitability of liquidating loans against the price of gas. The best programming resources for creating the bot would be using github repos and the aave developer documentation.
