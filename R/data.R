#' Climatic Influence on Dengue Mortality
#'
#' This dataset explores the spatio-temporal interaction between climate variability and dengue outbreaks across six divisions of Bangladesh from 2000 to 2024. It connects meteorological parameters with epidemiological indicators (cases, deaths, and case-fatality rate) to uncover how changing weather patterns influence dengue mortality
#'
#' @format A dataframe object with 150 rows and 15 variables:
#' \describe{
#'   \item{division}{Divisions: Chittagong, Rajshahi, Khulna, Sylhet, Barishal, Rangpur}
#'   \item{year}{year covered: 2000-2024}
#'   \item{max_temp}{Highest daily temperature influencing mosquito activity and virus transmission}
#'   \item{min_temp}{Lowest daily temperature affecting mosquito survival and breeding.}
#'   \item{max_wind_speed}{Measures airflow strength, which impacts mosquito movement and dispersion}
#'   \item{min_wind_speed}{Measures airflow strength, which impacts mosquito movement and dispersion}
#'   \item{precipitation_corrected_sum}{Total rainfall contributing to water accumulation for mosquito breeding sites}
#'   \item{all_sky_surface_total_par}{}
#'   \item{root_zone_soil_wetness}{}
#'   \item{surface_soil_wetness}{Moisture level in the soil reflecting wet conditions favorable for breeding habitats.}
#'   \item{humidity}{Atmospheric moisture level that increases mosquito lifespan and biting frequency}
#'   \item{earth_skin_temp}{Land surface temperature indicating environmental heat that accelerates mosquito development}
#'   \item{dengue_national_cases}{Number of reported dengue infections in a given period.}
#'   \item{dengue_national_deaths}{Total number of dengue-related fatalities}
#'   \item{dengue_national_cfr_pct}{Case Fatality Rate showing the percentage of infected individuals who died}
#'   ...
#' }
#' #' @source \url{https://www.kaggle.com/datasets/gazijahin/climatic-influence-on-dengue-mortality-2000-2024, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_bangladesh dataset has also been published in the denguedataset package in Python. You can find the Zenodo page https://zenodo.org/records/21499199, GitHub repository https://github.com/fdzul/denguedatasets-py, GitHub Pages https://fdzul.github.io/denguedatasets-py/, and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_bangladesh_mortality"

#' Dengue Dataset of Bangladesh: Unraveling Dengue
#'
#' This dataset presents real-world data collected through surveys conducted in the Dhaka region of Bangladesh. It focuses on understanding the prevalence and characteristics of the Dengue fever phenomenon, a significant public health concern in the area. The dataset is updated monthly to reflect the evolving nature of the Dengue outbreak.
#'
#' @format A dataframe object with 1000 rows and 19 variables:
#' \describe{
#'   \item{gender}{Gender of the survey respondent}
#'   \item{age}{Age of the survey respondent}
#'   \item{ns1}{Non-Structural Protein 1  test's data positive as 1 negative as 0}
#'   \item{ig_g}{IgG data positive as 1 negative as 0}
#'   \item{ig_m}{IgM data positive as 1 negative as 0}
#'   \item{area}{The area within the Dhaka region where the respondent resides.}
#'   \item{area_type}{Classification of the area as "Developed" or "Undeveloped}
#'   \item{house_type}{The type of housing in the area, e.g., "Building," "Tin-Shed," or "Others."}
#'   \item{district}{The specific district within Dhaka}
#'   \item{fever_duration}{ Acute Dengue febrile phase typically lasts 2–7 days}
#'   \item{body_temperature}{Biphasic, high fever is the primary clinical entry criterion}
#'   \item{platelet_count}{Thrombocytopenia (platelets < 150,000) is a critical indicator.}
#'   \item{wbc_count}{Leukopenia (low WBC count) is highly characteristic of acute Dengue}
#'   \item{joint_pain}{Arthralgia is so severe it gave Dengue the name "breakbone fever"}
#'   \item{headache}{Frontal headache is common in acute viral syndromes.}
#'   \item{retro_orbital_pain}{Extremely specific indicator for Dengue vs. other febrile illnesses}
#'   \item{myalgia}{Generalized muscle pain is characteristic.}
#'   \item{rash}{Transient maculopapular rash occurs during convalescence.}
#'   \item{outcome}{Outcome variable indicating the presence (1) or absence (0) of Dengue cases reported}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/kawsarahmad/dengue-dataset-bangladesh, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_bangladesh dataset has also been published in the denguedataset package in Python. You can find the Zenodo page https://zenodo.org/records/21499199, GitHub repository https://github.com/fdzul/denguedatasets-py, GitHub Pages https://fdzul.github.io/denguedatasets-py/, and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_bangladesh"


#' Brazil Dengue Dataset 2000-2019 labels
#'
#' Data dictionary/variable-label reference table accompanying the Brazil Dengue Dataset 2000-2019, documenting field names, codes, and descriptions used across microregion, mesoregion, state, region, biome, and ecozone identifiers, as well as climatic and demographic variables in the main dataset.
#'
#' @format A dataframe object with 26 rows and 4 variables:
#' \describe{
#'   \item{variable}{variable name}
#'   \item{long_name}{long variable name}
#'   \item{description}{variable description}
#'   \item{source}{source}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/raomuhammadsaeedali/brazil-dengue-dataset-2000-2019/data?select=data_desc.csv, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_brazil_labels dataset has also been published in the denguedataset package in Python
"dengue_brazil_labels"

#' Brazil Dengue Dataset 2000-2019
#'
#' The dataset supplied comprises a comprehensive collection of information pertaining to numerous geographical and environmental characteristics across microregions in Brazil from 2000 to 2019. Microregion codes and names, mesoregion codes and names, state codes and names, region codes and names, biome codes and names, ecozone codes and names, climate regimes, months, years, times, dengue cases, population estimates, population density, maximum and minimum temperatures, Palmer's drought severity index, urban population percentages, access to water network percentages, and reported water shortage frequency are all included in the dataset. This information is linked to individual microregions and provides insights into population dynamics, climatic patterns, urbanization trends, water resources, and disease occurrences.
#'
#' @format A dataframe object with 26 rows and 4 variables:
#' \describe{
#'   \item{micro_code}{Unique ID number given by IBGE to each microregion (5 digits)}
#'   \item{micro_name}{Name of each microregion}
#'   \item{micro_name_ibge}{Name of each microregion from IBGE sources}
#'   \item{meso_code}{Unique ID number given by IBGE to each mesoregion: 4 digits}
#'   \item{meso_name}{Name of each mesoregion}
#'   \item{state_code}{Unique ID number given by IBGE to each state}
#'   \item{state_name}{Name of state}
#'   \item{region_code}{Region code}
#'   \item{region_name}{Region name}
#'   \item{biome_code}{Biome code}
#'   \item{biome_name}{Biome name}
#'   \item{ecozone_code}{Ecozone code: same as biome apart from Atlantic Rainforest, biome code 6, which has been separated}
#'   \item{ecozone_name}{Ecozone name: same as biome apart from Atlantic Rainforest, which has been separated into NE..}
#'   \item{main_climate}{Most prevalent climate regime in the microregion. Based on Koppen Geiger climate regimes}
#'   \item{month}{Calendar month index, 1 = January, to, 12 = December}
#'   \item{year}{Year: 2000-2019}
#'   \item{time}{Time index starting at 1 for January 2000}
#'   \item{dengue_cases}{Number of notified dengue cases registered in the notifiable diseases system in Brazil by SINAN}
#'   \item{population}{Estimated population, based on projections calculated using the 2000 and 2010 censuses, and counts}
#'   \item{pop_density}{Population density: number of people per km2}
#'   \item{tmax}{Monthly average daily maximum temperature; gridded values at a 0.5° resolution averaged across eac}
#'   \item{tmin}{Monthly average daily minimum temperature; gridded values at a 0.5° resolution averaged across eac}
#'   \item{pdsi}{Self-calibrated Palmer drought severity index for each microregion}
#'   \item{urban}{Percentage of inhabitants living in urban areas according to the 2010 census}
#'   \item{water_network}{Percentage of inhabitants with access to the piped water network according to the 2010 census}
#'   \item{water_shortage}{Frequency of reported water shortages per microregion between 2000 - 2016}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/raomuhammadsaeedali/brazil-dengue-dataset-2000-2019, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_brazil dataset has also been published in the denguedataset package in Python
"dengue_brazil"


#' Dengue Tabular Data and Satellite Images
#'
#' Dataset with weekly Dengue cases, temperature and precipitation in Medellin using the epidemiological week.
#'
#' @format A dataframe object with 624 rows and 10 variables:
#' \describe{
#'   \item{cases_medellin}{dengue cases}
#'   \item{data}{year-week}
#'   \item{year}{year}
#'   \item{year_week}{yearweek:}
#'   \item{last_day_week}{Last day week}
#'   \item{month}{month}
#'   \item{precipitation_medellin}{precipitation}
#'   \item{precipitation_medellin_rural}{precipitation rural}
#'   \item{precipitation_medellin_urbano}{precipitation urban}
#'   \item{temperature}{temperature}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/davidrestrepo/dengue, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_colombia_medellin dataset has also been published in the denguedataset package in Python
"dengue_colombia_medellin"


#' Dengue Tabular Data and Satellite Images
#'
#' Dataset with sociodemographic, socioeconomic data, dengue cases, temperature and precipitation for all municipalities
#'
#' @format A dataframe object with 1121 rows and 1017 variables:
#' \describe{
#'   \item{municipality_code}{Unique identifier of the municipality}
#'   \item{municipality}{name of the municipality}
#'   \item{population}{population:2007-2019}
#'   \item{cases}{dengue cases: 2007-2019}
#'   \item{age0_4_percent}{Age0-4 percent }
#'   \item{age5_14_percent}{Age5-14 percent}
#'   \item{age15_29_percent}{Age 15 to 29 percent}
#'   \item{age_30_percent}{Age >30 percent}
#'   \item{afrocolombian_population_percent}{Percentage of Afro-Colombian population}
#'   \item{indian_population_percent}{Percentage of Indian population}
#'   \item{peoplewith_disabilities_percent}{Percentage of people with disabilities}
#'   \item{peoplewhocannotreadorwrite_percent}{Percentage of people who cannot read or write}
#'   \item{secondary_higher_education_percent}{Percentage of people who have a secondary/higher education level}
#'   \item{employedpopulation_percent}{Percentage of employed population}
#'   \item{unemployedpopulation_percent}{Percentage of unemployed population}
#'   \item{peopledoinghousework_percent}{Percentage of people who do domestic work}
#'   \item{retiredpeople_percent}{Percentage of retired people}
#'   \item{men_percent}{Gender or population percentage of men }
#'   \item{women_percent}{Gender or population percentage of women}
#'   \item{householdswithoutwateraccess_percent}{Households without access to water}
#'   \item{householdswithoutinternetaccess_percent}{Households without internet access}
#'   \item{buildingstratification1_percent}{Housing stratification between 1}
#'   \item{buildingstratification2_percent}{Housing stratification between 2}
#'   \item{buildingstratification3_percent}{Housing stratification between 3}
#'   \item{buildingstratification4_percent}{Housing stratification between 4}
#'   \item{buildingstratification5_percent}{Housing stratification between 5}
#'   \item{buildingstratification6_percent}{Housing stratification between 6}
#'   \item{numberofhospitalsper_km2}{Number of hospitals per km2}
#'   \item{numberofhousesper_km2}{Number of houses per km2}
#'   \item{temperature}{temperature: ene-dec 2007-2018}
#'   \item{precipitation}{precipitation: ene-dec 2007-2018}
#'   \item{x2007}{ Year/epiweek: year 2007-2019, week 1 to 52}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/davidrestrepo/dengue, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_colombia dataset has also been published in the denguedataset package in Python
"dengue_colombia"
