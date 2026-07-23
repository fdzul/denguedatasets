#' Climatic Influence on Dengue Mortality
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
