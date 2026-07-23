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
#' @details Dengue Challenge 2 - Make Health LATAM 2022. This challenge will provide a dataset for each municipality in Colombia, composed of weekly dengue cases between 2007 and 2019, along with other social and climatological variables. You will also find a special dataset we have prepared for the municipality of Medellín, with preprocessed climatological variables and a compressed version of satellite images for inclusion in the models. The dengue_colombia_medellin dataset has also been published in the denguedataset package in Python
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
#' @details Dengue Challenge 2 - Make Health LATAM 2022. This challenge will provide a dataset for each municipality in Colombia, composed of weekly dengue cases between 2007 and 2019, along with other social and climatological variables. You will also find a special dataset we have prepared for the municipality of Medellín, with preprocessed climatological variables and a compressed version of satellite images for inclusion in the models. The dengue_colombia dataset has also been published in the denguedataset package in Python
"dengue_colombia"

#' Dengue cases and deaths in India
#'
#' This data contains dengue cases and deaths happening in each state of India over the years
#'
#' @format A dataframe object with 36 rows and 10 variables:
#' \describe{
#'   \item{num}{numeric id}
#'   \item{states}{state of India}
#'   \item{x2019_cases}{dengue cases of 2019}
#'   \item{x2019_cases}{deaths cases of 2019}
#'   \item{x2020_deaths}{dengue cases of 2020}
#'   \item{x2020_cases}{deaths cases of 2020}
#'   \item{x2021_deaths}{dengue cases of 2021}
#'   \item{x2021_cases}{deaths cases of 2021}
#'   \item{x2022_deaths}{dengue cases of 2022}
#'   \item{x2022_cases}{deaths cases of 2022}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/jadhavpranav/dengue-cases-in-india, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details This data is scrapped from the National Center for Vector Borne Diseases Control. It's a website managed by the Ministry of Health & Family Welfare, Government of India. This data contains dengue cases and deaths happening in each state of India over the years. The dengue_india dataset has also been published in the denguedataset package in Python
"dengue_india"

#' Jakarta Dengue Cases and Weather Data from 2021 to 2024.
#'
#' This data contains dengue cases hospitalized of Jakarta
#'
#' @format A dataframe object with 2922 rows and 14 variables:
#' \describe{
#'   \item{id}{numeric id}
#'   \item{reg}{Region of Regency or City}
#'   \item{date}{Date of observation}
#'   \item{tn}{Minimum temperature in Celsius}
#'   \item{tx}{Maximum temperature in Celsius}
#'   \item{tavg}{mean temperature in Celsius}
#'   \item{rh_avg}{Average relative humidity in percent}
#'   \item{rr}{Rainfall in mm}
#'   \item{ss}{Sunshine duration in hours}
#'   \item{ff_x}{Maximum wind speed in meters by seconds)}
#'   \item{ddd_x}{Wind direction at maximum wind speed}
#'   \item{ff_avg}{Average wind speed in meters by second)}
#'   \item{ddd_car}{Most frequent wind direction}
#'   \item{cases}{Number of hospitalized patients}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/yutakatarokusumah/jakarta-dengue-weather-2021-2024, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_jakarta dataset has also been published in the denguedataset package in Python. jupyter notebook related https://www.kaggle.com/code/yutakatarokusumah/jakarta-dengue-risk-prediction
"dengue_jakarta"

#' Dengue surveillance data of Pakistan.
#'
#' This dataset contains monthly dengue fever surveillance data from Pakistan covering the period from 2016 to 2020.
#'
#' @format A dataframe object with 420 rows and 5 variables:
#' \describe{
#'   \item{month}{Month name: January through December}
#'   \item{year}{Year of observation from 2016 to 2020}
#'   \item{region}{Province or territory name}
#'   \item{dengue_cases}{Total number of confirmed dengue fever cases reported}
#'   \item{dengue_deaths}{Total number of deaths attributed to dengue fever}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/aamir28/pakistan-dengue-surveillance-data-2016-2020, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details This dataset contains monthly dengue fever surveillance data from Pakistan covering the period 2016-2020. It provides comprehensive information on dengue cases and deaths across all provinces and territories, making it valuable for epidemiological research, public health policy development, and disease outbreak analysis. Time Period: January 2016 to December 2020 (5 years). Geographic Coverage: All provinces and territories of Pakistan. Frequency: Monthly aggregated data. Total Records: 420 monthly observations. Geographic Regions Included Punjab: Most populous province, Sindh: Second largest province including Karachi, KPK (Khyber Pakhtunkhwa): Northwestern province, Balochistan: Largest province by area, ICT (Islamabad Capital Territory): Federal capital territory, AJK (Azad Jammu & Kashmir): Administered territory, GB (Gilgit-Baltistan): Northern territory.The dengue_pakistan dataset has also been published in the denguedataset package in Python. jupyter notebook related https://www.kaggle.com/code/yutakatarokusumah/jakarta-dengue-risk-prediction
"dengue_pakistan"

#' Dengue data in Peru from 2019 to 2022.
#'
#' This dataset contains yearly dengue cases from 2019 to 2022.
#'
#' @format A dataframe object with 171281 rows and 8 variables:
#' \describe{
#'   \item{departament}{name state}
#'   \item{province}{name of province}
#'   \item{district}{name of distric}
#'   \item{dengue_type}{dengue type}
#'   \item{year}{year}
#'   \item{week}{week}
#'   \item{age}{age}
#'   \item{sex}sex}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/fazzzzzzzzzz/datos-dengue-en-el-per-2019-2022-en-csv, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details The dengue_peru dataset has also been published in the denguedataset package in Python. You can find the Zenodo page https://zenodo.org/records/21499199, GitHub repository https://github.com/fdzul/denguedatasets-py, GitHub Pages https://fdzul.github.io/denguedatasets-py/, and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_peru"

#' Philippines Dengue Cases from 2016 to 2020
#'
#' This dataset contains monthly and regional cases of dengue from 2016 to 2020
#'
#' @format A dataframe object with 1020 rows and 5 variables:
#' \describe{
#'   \item{month}{Month of the year in text format}
#'   \item{year}{Ranges from 2016 to 2020 in numerical format}
#'   \item{region}{Region in the Philippines}
#'   \item{dengue_cases}{Number of Monthly Cases per region}
#'   \item{dengue_deaths}{Number of Monthly Deaths per region due to dengue}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/vincentgupo/dengue-cases-in-the-philippines, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/.}
#' @details Data set contains the recorded number of dengue cases per region of the Philippines from year 2016 to 2020. It can be used to find trends about the disease as well as spatiotemporal analysis that can result into data-driven solution about the trends of the desease for the past 5 years. The dengue_philippines dataset has also been published in the denguedataset package in Python. You can find the Zenodo page https://zenodo.org/records/21499199, GitHub repository https://github.com/fdzul/denguedatasets-py, GitHub Pages https://fdzul.github.io/denguedatasets-py/, and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_philippines"

#' The Sierra Leone Freetown DengueAI Dataset from 2015 to 2024
#'
#' The dataset captures monthly variations in temperature, humidity, and precipitation, as well as confirmed dengue cases in Freetown, Sierra Leone.
#'
#' @format A dataframe object with 120 rows and 5 variables:
#' \describe{
#'   \item{date}{date}
#'   \item{temperature_c}{Temperature in celsius}
#'   \item{humidity_percent}{Humidity}
#'   \item{precipitation_mm}{Precipitation}
#'   \item{dengue_cases}{dengue cases}
#'   ...
#' }
#' @author Michael Marko Sesay. 2025. Sierra Leone Freetown DengueAI Dataset (2015–2024) [Data set]. Kaggle. https://doi.org/10.34740/KAGGLE/DSV/13257213
#' @source \url{ - https://www.kaggle.com/datasets/michaalmarkosesay/sierra-leone-freetown-dengueai-dataset-20152024 - https://zenodo.org/records/21499199, - https://fdzul.github.io/denguedatasets-py/ - https://fdzul.github.io/denguedatasets-py/  - https://pypi.org/project/denguedatasets/.}
#' @details The Sierra Leone Freetown DengueAI Dataset from 2015 to 2024 offers an integrated collection of epidemiological and climatic variables, specifically designed for AI-based dengue outbreak prediction and time-series modeling. The dataset captures monthly variations in temperature, humidity, and precipitation, as well as confirmed dengue cases in Freetown, Sierra Leone. Data sources include OpenDengue and NOAA GSOD.The dengue_sierra_leone dataset has also been published in the denguedataset package in Python. You can find the [Zenodo page](https://zenodo.org/records/21499199), [GitHub repository](https://github.com/fdzul/denguedatasets-py), [GitHub Pages](https://fdzul.github.io/denguedatasets-py/), and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_sierra_leone"

#' Sri Lanka Dengue Data of 2019
#'
#' District & Provincial Trends: Monthly Dengue Insights from 2019
#'
#' @format A dataframe object with 26 rows and 14 variables:
#' \describe{
#'   \item{Province}{The province in Sri Lanka where data was recorded.}
#'   \item{District}{Specific district within the province}
#'   \item{jan}{dengue cases of january}
#'   \item{feb}{dengue cases of febrary}
#'   \item{mar}{dengue cases of march}
#'   \item{apr}{dengue cases of april}
#'   \item{may}{dengue cases of may}
#'   \item{june}{dengue cases of june}
#'   \item{july}{dengue cases of july}
#'   \item{aug}{dengue cases of august}
#'   \item{sept}{dengue cases of september}
#'   \item{oct}{dengue cases of octuber}
#'   \item{nov}{dengue cases of november}
#'   \item{dec}{dengue cases of december}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/kanchana1990/sri-lanka-dengue-data-2019-2021-insights, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/}
#' @details A comprehensive record of dengue cases across all districts and provinces in Sri Lanka, detailing monthly occurrences from January to December for the years 2019-2021. Data serves as a critical resource for understanding the epidemiological trends of dengue, facilitating public health responses and preventive strategies. Though compact, this dataset offers rich opportunities for data science applications including trend analysis, hotspot detection, and predictive modeling for future outbreaks. Data was meticulously compiled and made available by the National Dengue Control Unit (NDCU) of Sri Lanka. For more details, visit the NDCU Dengue Information Portal. The dengue_sri_lanka_2019 dataset has also been published in the denguedataset package in Python. You can find the [Zenodo page](https://zenodo.org/records/21499199), [GitHub repository](https://github.com/fdzul/denguedatasets-py), [GitHub Pages](https://fdzul.github.io/denguedatasets-py/), and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_sri_lanka_2019"

#' Sri Lanka Dengue Data of 2020
#'
#' District & Provincial Trends: Monthly Dengue Insights from 2020
#'
#' @format A dataframe object with 26 rows and 14 variables:
#' \describe{
#'   \item{Province}{The province in Sri Lanka where data was recorded.}
#'   \item{District}{Specific district within the province}
#'   \item{jan}{dengue cases of january}
#'   \item{feb}{dengue cases of febrary}
#'   \item{mar}{dengue cases of march}
#'   \item{apr}{dengue cases of april}
#'   \item{may}{dengue cases of may}
#'   \item{june}{dengue cases of june}
#'   \item{july}{dengue cases of july}
#'   \item{aug}{dengue cases of august}
#'   \item{sept}{dengue cases of september}
#'   \item{oct}{dengue cases of octuber}
#'   \item{nov}{dengue cases of november}
#'   \item{dec}{dengue cases of december}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/kanchana1990/sri-lanka-dengue-data-2019-2021-insights, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/}
#' @details A comprehensive record of dengue cases across all districts and provinces in Sri Lanka, detailing monthly occurrences from January to December for the years 2019-2021. Data serves as a critical resource for understanding the epidemiological trends of dengue, facilitating public health responses and preventive strategies. Though compact, this dataset offers rich opportunities for data science applications including trend analysis, hotspot detection, and predictive modeling for future outbreaks. Data was meticulously compiled and made available by the National Dengue Control Unit (NDCU) of Sri Lanka. For more details, visit the NDCU Dengue Information Portal. The dengue_sri_lanka_2020 dataset has also been published in the denguedataset package in Python. You can find the [Zenodo page](https://zenodo.org/records/21499199), [GitHub repository](https://github.com/fdzul/denguedatasets-py), [GitHub Pages](https://fdzul.github.io/denguedatasets-py/), and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_sri_lanka_2020"

#' Sri Lanka Dengue Data of 2021
#'
#' District & Provincial Trends: Monthly Dengue Insights from 2021
#'
#' @format A dataframe object with 26 rows and 14 variables:
#' \describe{
#'   \item{Province}{The province in Sri Lanka where data was recorded.}
#'   \item{District}{Specific district within the province}
#'   \item{jan}{dengue cases of january}
#'   \item{feb}{dengue cases of febrary}
#'   \item{mar}{dengue cases of march}
#'   \item{apr}{dengue cases of april}
#'   \item{may}{dengue cases of may}
#'   \item{june}{dengue cases of june}
#'   \item{july}{dengue cases of july}
#'   \item{aug}{dengue cases of august}
#'   \item{sept}{dengue cases of september}
#'   \item{oct}{dengue cases of octuber}
#'   \item{nov}{dengue cases of november}
#'   \item{dec}{dengue cases of december}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/kanchana1990/sri-lanka-dengue-data-2019-2021-insights, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/}
#' @details A comprehensive record of dengue cases across all districts and provinces in Sri Lanka, detailing monthly occurrences from January to December for the years 2019-2021. Data serves as a critical resource for understanding the epidemiological trends of dengue, facilitating public health responses and preventive strategies. Though compact, this dataset offers rich opportunities for data science applications including trend analysis, hotspot detection, and predictive modeling for future outbreaks. Data was meticulously compiled and made available by the National Dengue Control Unit (NDCU) of Sri Lanka. For more details, visit the NDCU Dengue Information Portal. The dengue_sri_lanka_2021 dataset has also been published in the denguedataset package in Python. You can find the [Zenodo page](https://zenodo.org/records/21499199), [GitHub repository](https://github.com/fdzul/denguedatasets-py), [GitHub Pages](https://fdzul.github.io/denguedatasets-py/), and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_sri_lanka_2021"

#' Taiwan Dengue Cases from 1998 to 2024
#'
#' Daily and Regional Confirmed Cases of Dengue from 1998 to 2024
#'
#' @format A dataframe object with 26 rows and 14 variables:
#' \describe{
#'   \item{date_onset}{Date when symptoms first appeared}
#'   \item{date_confirmation}{ Date when the case was confirmed}
#'   \item{date_notification}{Date when the case was reported}
#'   \item{sex}{Gender of the affected individual}
#'   \item{age_group}{Age category of the affected individual}
#'   \item{county_living}{County where the individual resides}
#'   \item{township_living}{Township where the individual resides}
#'   \item{village_living}{Village where the individual resides}
#'   \item{village_living_code}{ Code for the village of residence}
#'   \item{enumeration_unit}{Statistical unit for enumeration}
#'   \item{enumeration_unit_long}{Longitude of the enumeration unit}
#'   \item{enumeration_unit_lat}{Latitude of the enumeration unit}
#'   \item{first_level_dissemination_unit}{Highest administrative unit for dissemination}
#'   \item{second_level_dissemination_unit}{Secondary administrative unit for dissemination}
#'   \item{county_infected}{County where the individual was infected}
#'   \item{township_infected}{Township where the individual was infected}
#'   \item{village_infected}{where the individual was infected}
#'   \item{village_infected_code}{Code for the infected village}
#'   \item{imported}{Indicates if the case was imported from another country}
#'   \item{country_infected}{Country where the infection was acquired.}
#'   \item{number_of_confirmed_cases}{Number of confirmed dengue cases}
#'   \item{serotype}{Serotype of the dengue virus}
#'   \item{moi_county_living_code}{}
#'   \item{moi_township_living_code}{Code for the township of residence from the Ministry of Interior}
#'   \item{moi_county_living}{County code of Ministry of Interior}
#'   \item{moi_township_living}{Township code (Ministry of Interior}
#'   \item{moi_county_infected_code}{Code for the infected county of Ministry of Interior}
#'   \item{moi_township_infected_code}{Code for the infected township of Ministry of Interior}
#'   \item{moi_county_infected}{ Infected county code of Ministry of Interior}
#'   \item{moi_township_infected}{Infected township code of Ministry of Interio)}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/datasets/taweilo/taiwan-dengue-daily-confirmed-cases-1998-2024, https://zenodo.org/records/21499199, https://fdzul.github.io/denguedatasets-py/, https://fdzul.github.io/denguedatasets-py/, https://pypi.org/project/denguedatasets/}
#' @detailsThe dataset contains detailed information on dengue fever cases since 1998, encompassing various aspects such as dates, geographical locations, and serotype details. This data can be leveraged to analyze temporal trends, spatial distribution, and the serotype of dengue cases. It is valuable for understanding the disease's progression, its impact across different regions, and the effectiveness of intervention measures over time. The dengue_taiwan dataset has also been published in the denguedataset package in Python. You can find the [Zenodo page](https://zenodo.org/records/21499199), [GitHub repository](https://github.com/fdzul/denguedatasets-py), [GitHub Pages](https://fdzul.github.io/denguedatasets-py/), and PyPI index at the following links https://pypi.org/project/denguedatasets/.
"dengue_taiwan"
