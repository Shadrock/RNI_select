RNI city selection
==========
This is a repository for the data and “heatmap” analysis that prioritized outreach to candidate cities for the Resilience Network Initiative (RNI). RNI will initially work in 5 cities selected from the current (June, 2014) [Rockefeller short-list](http://100resilientcities.rockefellerfoundation.org/blog/entry/33-resilient-cities-announced). This analysis is not definitive and is only meant as a way to prioritize outreach for cities whose observable characteristics appear to be a good match for RNI or whose specific resilience challenges would be a good test case. Focus was given to existing programmatic connections to the Rockefeller Foundation and/or stakeholders who have signaled their interest in supporting RNI in their city.

__The analysis prioritized the following cities:__
*Da Nang* (Vietnam), *Semarang* (Indonesia), *Mandalay* (Myanmar), *Medellin* (Colombia), *Boulder* and *New Orleans* (USA), and *Surat* (India). 

## The Process
In this, two-step, process I began with national level data (see sources below) that suggested a climate conducive to RNI, then examined three primary variables available at the city level in those countries that had been identified. 

At the national level the analysis focuses at the prevalence of technology (e.g. cell phones and Internet access), governance, and existing programmatic connections. The goal was to get a general sense of which places had the most characteristics that would support an RNI project. 

Based on this output, I then examined three primary variables available at the city level in those countries that had been identified from the national-level process:
* known number of existing Rockefeller programs;
* number of interested stakeholders whom RNI was able to contact and perform initial consultations with; and 
* population.

Existing programs are important because they represent the potential for synergy and connections to existing local capacity. Outreach along programmatic lines has already lead to initial consultations with local stakeholders who have signaled their support for RNI programs in their city. Because the foundation of RNI is connecting community to government it is more likely that smaller bureaucracies will be easier to navigate and smaller cities will necessarily have smaller bureaucracies (though not necessarily more efficient or legible).

## Analysis & Outputs
The analysis was conducted using the [statistical software, “R”](http://www.r-project.org/). The [R code](/heatmap.r) was taken from the [Flowing Data tutorial](http://flowingdata.com/2010/01/21/how-to-make-a-heatmap-a-quick-and-easy-solution/) and the code presented here is for the [.csv file for national-level data](/data/RNI_NatVar.csv). The same commands are applicable to the [.csv file for city level data](/data/RNI_CityVar.csv).

The R code creates the following output: 
![Raw Output](/Images/NatVar_Rplot.png) 

I did a quick bit of finishing work in [Inkscape](http://www.inkscape.org/en/), including rotating the chart to reverse the order of observations: placing observations on the left; and adding a legend. I hand-colored null values (note below) and added a few lables to get the following: 

![Final Output](/Images/NatVar_Final.png) 

Similar steps provided similar output for city level data (excerpt below). 

![Final City Output](/Images/CityVar_Final.png) 

## Key / Data sources
The [.csv](/data) contains data from:
* Ushahidi Deployments: [Ushahidi curated list list](https://worldushahidis.crowdmap.com/) 
* Number of Known Rockefeller Programs: [manually searched from current Rockefeller programs](http://www.rockefellerfoundation.org/our-work/current-work). 
* Mobile subscriptions (per 100 people): [World Bank Development Indicators](http://data.worldbank.org/indicator/IT.CEL.SETS.P2). 
* Internet users (per 100 people): [World Bank Development Indicators](http://data.worldbank.org/indicator/IT.NET.USER.P2)
* Open Data Rank: [Open Knowledge Foundation](https://index.okfn.org/country) (OKFN)
* Freedom House Freedom Score: [Freedom House](http://www.freedomhouse.org/report/freedom-world/freedom-world-2013#.Uw5RtvldVEL) 
* Freedom on the Net: [Freedom House](http://freedomhouse.org/report/freedom-net-2013-global-scores#.UwqKBfldVEI) 
* Secure Internet servers (per 1 million people) [World Bank Development Indicators](http://data.worldbank.org/indicator/IT.NET.SECR.P6) 
* USAID Urban Policy (priority level): [USAID](http://www.usaid.gov/sites/default/files/documents/1870/USAIDSustainableUrbanServicesPolicy.pdf) 
* Interested Stakeholders: Internal documentation
* Population: [taken from each city’s page on the Rockefeller shortlist](http://100resilientcities.rockefellerfoundation.org/cities)

## Data processing notes:
I used inverse transformation to standardize higher numbers as "more" or "better" across all data sets. The three data sets that required the transformation were Freedom on the Net, Freedom House, and OKFN. For USAID, I simply reversed the range of values since the scale was 0-4.

### Note regarding null values
I had a few null values in the matrix (marked "N/A") that I simply converted to 0 since I wasn't sure how to make R ignore certain cells or values. When I created the final graphic I manually changed the color of these cells in Inkscape. The list of countries: variables with null values is:
* Colombia: Freedom on the Net, OKFN
* Denmark: Freedom on the Net
* Israel: Freedom on the Net
* Lebanon: OKFN
* Myanmar: OKFN
* Netherlands: Freedom on the Net
* New Zealand: Freedom on the Net
* Senegal: Freedom on the Net
* Thailand: OKFN
* Vietnam: OKFN
* West Bank & Gaza: Freedom on the Net, OKFN

