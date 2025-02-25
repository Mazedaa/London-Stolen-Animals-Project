# London Stolen Animals Project

## Project Background
As a Data Analyst focusing on crime trends in London, I analyzed Metropolitan Police Service (MPS) data to identify patterns in stolen animal incidents from 2010 to 2023. The dataset includes details on the date of the crime, the borough in which the theft occurred, the type of animal stolen, the associated offense type, the recovery status of the animal, and the number of animals involved in each theft. The objective of this analysis was to transform raw data into actionable insights that can help improve public awareness, assist law enforcement in refining recovery strategies, and support community-based prevention initiatives. 

## Executive Summary
This analysis sheds light on trends in animal thefts across London, including hotspots, commonly stolen animals, offense types, and recovery rates. From over 14 years of data, significant trends emerged:
  - A steady increase in thefts, with a sharp rise in 2022 due to a major incident involving the theft of 1,206 fish in Barking and Dagenham.
  - Dogs are the most commonly stolen animal, particularly in boroughs like Croydon and Lambeth.
  - Recovery rates remain low (6.15%), highlighting the need for improved strategies. 

These findings provide a basis for public awareness initiatives, enhanced law enforcement focus, and community education to reduce animal thefts and increase recovery rates.

![Tableau Dashboard - London Stolen Animals](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/TableauDashboard.png)

## Insights Deep-Dive
### Trends in Stolen Animal Incidents
  - Animal thefts grew significantly from 612 incidents in 2020 to 1027 incidents in 2021 to 1,713 in 2022.
    Notably, April 2022 saw the highest spike, driven by the theft of 1,206 fish in Barking and Dagenham.
  - A clear increase in thefts over the past few years, particularly in the post-pandemic period.
  - Seasonal trends emerged, with thefts peaking in March (4 times) and October (2 times), suggesting that certain times of year experience higher rates of theft.

![Trend Over Time](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/trend.png)

### Theft Hotspots
  - Boroughs with the highest theft rates: Barking and Dagenham, Hillingdon, Croydon, Bromley.

In these areas, pet owners are more likely to live in houses with gardens rather than apartments, which means pets are often left unsupervised outdoors, increasing their vulnerability to theft.

![Boroughs](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/borough.png)

### Commonly Stolen Animal Types
  - Dogs are the most frequently stolen animals, especially in Croydon and Lambeth, where pet ownership is high.
  - Dogs, Fish and Bird accumularte 82% of stolen animals, followed by another 10% being cat, with rest being mammals(excl dogs & cats), reptile, insects, arachnid, rabbit and amphibian.
  - Fish and birds are often stolen during burglaries, particularly in larger quantities, due to their accessibility and the difficulty in identifying stolen animals in these categories.

![Animal Tyoe](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/animalType.png)

### Offence Types
  - Theft and handling and Burglary accumulate to 95% of the offense type
  - For dogs, the most common offense types are Theft and Handling, reflecting opportunistic thefts.
  - Burglary is the primary offense for the theft of fish and birds, which are typically stolen during home invasions or burglaries, often involving multiple animals at once.

![Offence Type](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/offenceType.png)

###  Recovery Rates
  - Only 6.15% of stolen animals are recovered, indicating significant challenges in tracing and recovering stolen pets.
  - Dogs show the highest recovery rate (12%), while other animals like fish and birds have very low recovery rates, likely due to difficulties in identification, lack of tracking systems, and delays in reporting.
  - A lack of widespread microchipping and public awareness of reporting stolen pets promptly contributes to the low recovery rates.

![Recovery](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/recovered.png)

## Recommendations
### 1. Enhance Public Awareness Campaigns:
  - Targeted campaigns should be launched in high-risk boroughs, such as Barking and Dagenham and Croydon, to educate pet owners about theft prevention.
  - Promote microchipping and stress the importance of securing pets in outdoor areas and reporting thefts immediately.
### 2. Improve Recovery Rates:
  - Increase microchipping compliance and ensure that registration laws are enforced more strictly.
  - Collaborate with pet rescue organizations and law enforcement to improve tracking and recovery efforts.
### 3. Prevent Burglary-Related Thefts:
  - Encourage the use of home security systems like cameras, motion-sensitive lighting, and reinforced entry points in theft-prone areas.
  - Strengthen partnerships with community watch programs to keep neighborhoods vigilant about potential thefts.

## Key Questions for Stakeholders
1. Public Awareness Campaigns: Should we prioritize high-theft boroughs, or focus on areas with low recovery rates to maximize the impact of prevention strategies?
2. Recovery Rate Improvement: What resources are available to enhance the recovery of stolen animals? Are there opportunities for better tracking systems, such as databases for stolen pets?
3. Burglary-Related Thefts: Given the distinct patterns of burglary-related thefts, should these be treated as a separate priority within law enforcement efforts?

## Assumptions and Caveats
1. Recovery rates are based on reported cases and may not reflect actual recoveries, as many thefts might go unreported, or animals may not be identifiable.
2. Offense types are categorized based on police data, but there may be nuances or unreported factors influencing the nature of thefts that aren’t captured in the official data.
3. This analysis primarily focuses on quantitative data and does not account for qualitative factors like pet owner behavior, socio-economic conditions, or law enforcement strategies.

## Resources
- See the [original dataset](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/original_stolen_animals.xlsx%20-%20MPS%20Stolen%20animals%20data.csv) 
- See [my cleaning, analysis, and pivot tables](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/clean_stolen_animals.xlsx) 
- See [my Google Sheet dashboard](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/GoogleSheetDashboard.png)
- See [my SQL queries](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimals.sql)
- See [my Tableau dashboard](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/TableauDashboard.png)

