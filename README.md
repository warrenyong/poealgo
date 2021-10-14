# poealgo
Path of Exile automated algo solution deployed on Google CLoud to automate trading strategies with in-game currencies.

Objective
Deeper understanding of construction of order book
Deeper understanding of algo construction in a game vs real world
Market inefficiencies as there is no "auction house" within the game
Going 1 layer deeper on top of use cases already available out there. Instead of just acquiring prices, creating business value by identifying actionable arbitrage opportunities based on order book construction taking into account volume.

Development Tasks
Account for server side rate limiting (16 requests in 1min) [complete] Alternative for top 8 of each in 1 run-time session
Initialisation API to capture the Exchange information for the most current league by default
Convert system curl to .Q.hp
Paralellise the multiple outputs using kdb+ vector as opposed to iteration [complete]
Enable slaves on 2-core server
Construction of order book snapshot logic
Removal of outliers / market manipulation / price fixing 
Logic to identify and exclude accounts which perform price fixing 
Algo logic for 2-way arbitrage leveraging VWAP
Algo logic for 3-way arbitrage leveraging VWAP
Post algo actions to discord end-point

**************Current in progress on development**************
