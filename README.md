RNI_select
==========
This is my very first R code: a heatmap visualization for RNI city selection. The goal for creating this repo is to:
* Start playing with R.
* Learn the Github workflow for better Pirate/Ninja collaboration in the future.
* Look cool.
The R code was taken from the Flowing Data tutorial (http://tiny.cc/pmdbex) and I used auremoser's Pirateplotr repo as a template to set up a sensible (I hope) repo of my own.

## Key / Data sources
The .csv contains data from:
* Mobile cellular subscriptions (per 100 people), World Bank Development Indicators: http://data.worldbank.org/indicator/IT.CEL.SETS.P2
* Internet users (per 100 people), World Bank Development Indicators: http://data.worldbank.org/indicator/IT.NET.USER.P2
* Secure Internet servers (per 1 million people), World Bank Development Indicators: http://data.worldbank.org/indicator/IT.NET.SECR.P6
* Freedom on the Net, Freedom House: http://freedomhouse.org/report/freedom-net-2013-global-scores#.UwqKBfldVEI
* Freedom House Freedom Score, Freedom House: http://www.freedomhouse.org/report/freedom-world/freedom-world-2013#.Uw5RtvldVEL
* OKFN Open Data Rank, Open Knowledge Foundation: https://index.okfn.org/country
* Known Ushahidi Deployments: National level, Ushahidi: https://docs.google.com/spreadsheet/ccc?key=0AikmHjO1VwoddEV2VGZxTHh1UE1YaGhtOG41ekhyTUE&usp=drive_web#gid=2
* USAID Policy Priority Level, USAID: http://www.usaid.gov/sites/default/files/documents/1870/USAIDSustainableUrbanServicesPolicy.pdf

## Data processing notes:
I used inverse transformation to standardize higher numbers are "more" or "better" across all data sets. The three data sets that required the transformation were Freedom on the Net, Freedom House, and OKFN. For USAID, I simply reversed the range of values since the scale was 0-4.
