# London Stolen Animals Project

## Project Background
#### As a Data Analyst focusing on crime trends in London, I analyzed Metropolitan Police Service (MPS) data to identify patterns in stolen animal incidents from 2010 to 2023. The dataset includes details on the date of the crime, the borough in which the theft occurred, the type of animal stolen, the associated offense type, the recovery status of the animal, and the number of animals involved in each theft. The objective of this analysis was to transform  data into actionable insights that can help improve public awareness, assist law enforcement in refining recovery strategies, and support community-based prevention initiatives. 

## Executive Summary
This analysis sheds light on trends in animal thefts across London, including hotspots, commonly stolen animals, offense types, and recovery rates. 

From over 13 years of data, significant trends emerged:
  - A steady increase in thefts, with a sharp rise in 2022 due to a major incident involving the theft of 1,206 fish in Barking and Dagenham.
  - Dogs are the most commonly stolen animal, particularly in boroughs like Croydon and Lambeth.
  - Recovery rates remain low (6.15%), highlighting the need for improved strategies. 

These findings provide a basis for public awareness initiatives, enhanced law enforcement focus, and community education to reduce animal thefts and increase recovery rates.

![Tableau Dashboard - London Stolen Animals](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/TableauDashboard.png)

## Insights Deep-Dive
### Trends in Stolen Animal Incidents
  - Since 2013, stolen animal cases dropped from 799 to 427 in 2016, fluctuated between 628 and 612 (2017–2020), then surged to 1,027 in 2021 and 1,713 in 2022 before falling to 654 in 2023.
  - Thefts spiked from 612 in 2020 to 1,713 in 2022, with April 2022 seeing the highest jump due to the theft of 1,206 fish in Barking and Dagenham.
  - Seasonal patterns show thefts peaking in March (4 times) and October (2 times), indicating higher risks in these months.

![Trend Over Time](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/trend.png)

### Theft Hotspots
Boroughs with the highest theft rates:
- - Barking and Dagenham, Hillingdon, Croydon, Bromley, Enfield

Animal thefts are higher in outer London than in central London, where more pet owners live in houses with gardens, leaving pets unsupervised outdoors and more vulnerable to theft.

![Boroughs](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/borough.png)

### Commonly Stolen Animal Types
  - Dogs are the most common stolen animal
  - Dogs, Fish, Bird and Cats accumulate 92% of stolen animals

![Animal Tyoe](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/animalType.png)

### Offence Types
  - Theft and handling and Burglary accumulate to 95% of the offence type.
  - For dogs, the most common offence types are Theft and Handling
  - Burglary is the primary offence for the theft of fish and birds

![Offence Type](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/offenceType.png)

###  Recovery Rates
  - Only 6.15% of stolen animals are recovered.
  - Dogs show the highest recovery rate (12%), while other animals like fish and birds have very low recovery rates.

![Recovery](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/recovered.png)

## Recommendations
#### 1. Enhance Public Awareness Campaigns: Targeted awareness campaigns in high-risk boroughs like Barking and Dagenham and Croydon should educate pet owners on theft prevention, promote microchipping, emphasise outdoor pet security, and encourage immediate theft reporting.

#### 2. Improve Recovery Rates: Enforcing microchipping laws, increasing compliance, and strengthening collaboration between pet rescue organisations and law enforcement for better tracking and recovery.

#### 3. Prevent Burglary-Related Thefts: Promoting home security measures like cameras and motion-sensitive lighting while strengthening partnerships with community watch programs to enhance neighbourhood vigilance.

![Recovery](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimalDashboards/detective.png)

## Key Questions for Stakeholders
#####   - Should we prioritize high-theft boroughs, or focus on areas with low recovery rates to maximize the impact of prevention strategies?
#####   - What resources are available to enhance the recovery of stolen animals? Are there opportunities for better tracking systems, such as databases for stolen pets?
#####   - Given the distinct patterns of burglary-related thefts, should these be treated as a separate priority within law enforcement efforts?

## Assumptions and Caveats
##### 1. Recovery rates are based on reported cases and may not reflect actual recoveries, as many thefts might go unreported, or animals may not be identifiable.
##### 2. Offence types are categorized based on police data, but there may be nuances or unreported factors influencing the nature of thefts that aren’t captured in the official data.
##### 3. This analysis primarily focuses on quantitative data and does not account for qualitative factors like pet owner behavior, socio-economic conditions, or law enforcement strategies.

## Resources
- See the [original dataset](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/original_stolen_animals.xlsx%20-%20MPS%20Stolen%20animals%20data.csv) 
- See [my cleaning, analysis, and pivot tables](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/clean_stolen_animals.xlsx) 
- See [my Google Sheet dashboard](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/GoogleSheetDashboard.png)
- See [my SQL queries](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/StolenAnimals.sql)
- See [my Tableau dashboard](https://github.com/Mazedaa/London-Stolen-Animals-Project/blob/main/TableauDashboard.png)

