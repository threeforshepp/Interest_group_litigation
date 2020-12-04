
// original data can be found at www.cigsurvey.eu

// This step creates .dta files from the original .csv files
// It drops all unsused variables
// It transforms all NAs in that dataset to .
// It adds a variable for countryname

clear all
insheet using "BelgianSurveyOnlineFile.csv", delimiter(";") names
gen countryname = "Belgium"
foreach var of varlist _all  {
	replace `var' = "9999" if `var' == "NA"
       }
	   
keep cigid countryname type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01

destring type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01, dpcomma replace

foreach var of varlist type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01 {
     replace `var' = . if `var' == 9999
       }
 
save "BelgianSurveyOnlineFile.dta", replace

clear all
insheet using "DutchSurveyOnlineFile.csv", delimiter(";") names
gen countryname = "Netherlands"
tostring _all, replace
foreach var of varlist _all  {
	replace `var' = "9999" if `var' == "NA"
       }
keep cigid countryname type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_20 q16_21 q16_22 q13_05 q22_01

destring type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_20 q16_21 q16_22 q13_05 q22_01, dpcomma replace

foreach var of varlist type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_20 q16_21 q16_22 q13_05 q22_01 {
     replace `var' = . if `var' == 9999
       }
 
save "DutchSurveyOnlineFile.dta", replace

clear all
insheet using "LTSurveyOnlineFile.csv", delimiter(";") names
gen countryname = "Lithuania"
tostring _all, replace
foreach var of varlist _all  {
	replace `var' = "9999" if `var' == "NA"
       }
keep cigid countryname type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01

destring type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01, dpcomma replace

foreach var of varlist type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01 {
     replace `var' = . if `var' == 9999
       }
 
save "LTSurveyOnlineFile.dta", replace

clear all
insheet using "SLSurveyOnlineFile.csv", delimiter(";") names
gen countryname = "Slovenia"
tostring _all, replace
foreach var of varlist _all  {
	replace `var' = "9999" if `var' == "NA"
       }
keep cigid countryname type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01

destring type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01, dpcomma replace

foreach var of varlist type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33_02 q33_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01 {
     replace `var' = . if `var' == 9999
       }
 
save "SLSurveyOnlineFile.dta", replace

clear all
insheet using "SWESurveyOnlineFile.csv", delimiter(";") names
gen countryname = "Sweden"
tostring _all, replace
foreach var of varlist _all  {
	replace `var' = "9999" if `var' == "NA"
       }

keep cigid countryname type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33sw_01 q33sw_02 q33sw_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_13 q16_14 q16_15 q16_16 q16_17 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01

destring type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33sw_01 q33sw_02 q33sw_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_13 q16_14 q16_15 q16_16 q16_17 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01, dpcomma replace

foreach var of varlist type q36 q09_04 q09_05 q10_06 q21_01 q19_01 q69_03 q33_01 q33sw_01 q33sw_02 q33sw_03 q33_05 q34_01 q34_02 q34_03 q34_04 q34_05 q34_06 q34_07 q34_08 q34_09 q34_10 q34_11 q35_01 q35_02 q35_03 q35_04 q35_05 q40_02 q38_02 q43_02 q16_01 q16_02 q16_03 q16_04 q16_05 q16_06 q16_07 q16_08 q16_09 q16_10 q16_11 q16_13 q16_14 q16_15 q16_16 q16_17 q16_19 q16_20 q16_21 q16_22 q13_05 q22_01 {
     replace `var' = . if `var' == 9999
       }
 
save "SWESurveyOnlineFile.dta", replace



// This step merges the .dta files to create a common dataset 

clear all

use "BelgianSurveyOnlineFile.dta"

append using "DutchSurveyOnlineFile.dta"

append using "LTSurveyOnlineFile.dta"

append using "SLSurveyOnlineFile.dta"

append using "SWESurveyOnlineFile.dta"

encode countryname, gen(country)
drop countryname


// The following steps create variables for analysis

// DeEPENDENT VARIABLE//

//  QID36 During the past three years, did your organization initiate or in 
// other ways contribute to legal proceedings, in order to claim rights and/or 
// promote your organization’s goals? [q36]

// Yes  (1) 
// No (2)
// Do not know (3)

// recoded to 0 = "No", 1= "Yes", 2 = "."


gen litigate = .
replace litigate = 0 if q36 == 2 
replace litigate = 1 if q36 == 1
replace litigate = . if q36 == .
replace litigate = . if q36 == 3


// INDEPENDENT VARIABLES //

// PUBLIC BUDGET

// QID09 Organizations get financial support from different sources. Please indicate the percentage of your organization’s 2015 budget that came from the various sources listed below. (Estimations of percentages are sufficient and very helpful.) (R + W)

// Funding from national governments
// [q09_04] (Numeric)

gen publicbudget = q09_04


// LAWYER ON STAFF

// QID10 Does your organization have any of the following? Please tick all boxes that apply:

// In-house legal experts [q10_06] 
// (0: No; 1: Yes)

gen lawyer = q10_06


// PAID STAFF

// QID21 How many paid staff (full time equivalent), 
// externally paid professionals, interns/trainees or unpaid volunteers work 
// in your organization? Please note the number below:

//Paid staff (full time equivalent) [q21_01] (Numeric)

gen ostaff = .
replace ostaff = 1 if q21_01 == 0
replace ostaff = 2 if q21_01 >= 0.05 & q21_01 <= 1
replace ostaff = 3 if q21_01 >= 1.1 & q21_01 <= 4.9
replace ostaff = 4 if q21_01 >= 5 & q21_01 <= 9.9
replace ostaff = 5 if q21_01 >= 10 & q21_01 <= 20
replace ostaff = 6 if q21_01 >= 21 & q21_01 <= 50
replace ostaff = 7 if q21_01 >= 50 & q21_01 <= 6000


// LOBBYING

// QID19 Looking at the list below: Which activities is your organization involved in? 
// Please tick all boxes that apply  (W):

// Advocacy/lobbying  [q19_01] 
// (0: No; 1: Yes)

gen lobby = q19_01


// LEGAL UNVERTAINTY

// QID69 How important are the following challenges for the maintenance of your organization?:

// Legal uncertainties within your areas of interests [q69_03]

// Not at all important (1)
// Not very important (2)
// Neither important nor unimportant (3)
// Important (4)
// Very important (5)


gen leguncertain = q69_03


// ADVOCACY TACTICS

//  During the last 12 months, how often has your organization actively sought access 
// to the following national level institutions and agencies in order to influence public policies? 
// Please tick one box in every row.

// We did not seek access (1)
// At least once (2)
// At least once every three months (3)
// At least once a month (4)
// At least once a week (5)

// Ministers (including their assistants/cabinets /political appointees) [q33_01]

gen minister = q33_01

gen dminister2 = .
replace dminister2 = 1 if q33_01 >= 2 & q33_01 <= 5
replace dminister2 = 0 if q33_01 == 1 


// Elected members from the majority or governing parties of parliament [q33_02]
// (Swedish data uses parties)

gen majority = q33_02
replace majority = q33sw_02 if q33sw_02 != . // allianspartierna

gen dmajority2 = .
replace dmajority2 = 1 if q33_02 >= 2 & q33_02 <= 5
replace dmajority2 = 0 if q33_02 == 1
replace dmajority2 = 1 if q33sw_02 >= 2 & q33sw_02 <= 5
replace dmajority2 = 0 if q33sw_02 == 1


// Elected members from minority or opposition parties of parliament 

gen opposition = q33_03
replace opposition = q33sw_01 if q33sw_01 != .  // S, MP, V

gen dopposition2 = .
replace dopposition2 = 1 if q33_03 >= 2 & q33_03 <= 5
replace dopposition2 = 0 if q33_03 == 1 
replace dopposition2 = 1 if q33sw_01 >= 2 & q33sw_01 <= 5
replace dopposition2 = 0 if q33sw_01 == 1

// Combined variable for contacting parliament

gen parliament = opposition if opposition >= majority
replace parliament = majority if majority >= opposition

gen dparliament2 = .
replace dparliament2 = 0 if dmajority2 == 0 & dopposition2 == 0
replace dparliament2 = 1 if dmajority2 == 1 | dopposition2 == 1

// National civil servants working in departmental ministries 
// such as agriculture, environment, transport, health, etc. [q33_05]

gen department = q33_05

gen ddepartment2 = .
replace ddepartment2 = 1 if q33_05 >= 2 & q33_05 <= 5
replace ddepartment2 = 0 if q33_05 == 1


// QID34 During the last 12 months, how often has your organization engaged in the following activities 
// to try to affect or influence public policies? Please tick one box in every row. 

// We did not do this (1)
// At least once (2)
// At least once every three months (3)
// At least once a month (4)
// At least once a week (5)

// Organize press conferences or distribute press releases [q34_01]

gen pressrelease = q34_01 

gen dpressrelease2 = .
replace dpressrelease2 = 1 if q34_01 >= 2 & q34_01 <= 5
replace dpressrelease2 = 0 if q34_01 == 1 

// Publish research reports and brochures [q34_02]

gen reports = q34_02

gen dreports2 = .
replace dreports2 = 1 if q34_02 >= 2 & q34_02 <= 5
replace dreports2 = 0 if q34_02 == 1 

// Active involvement in media debates such as giving interviews, editorials, opinion letters [q34_03]

gen media = q34_03

gen dmedia2 = .
replace dmedia2 = 1 if q34_03 >= 2 & q34_03 <= 5
replace dmedia2 = 0 if q34_03 == 1

// Place advertisements in newspapers and magazines [q34_04]

gen adverts = q34_04

gen dadverts2 = .
replace dadverts2 = 1 if q34_04 >= 2 & q34_04 <= 5
replace dadverts2 = 0 if q34_04 == 1

// Contact journalists to increase media attention [q34_05]

gen journalists = q34_05

gen djournalists2 = .
replace djournalists2 = 1 if q34_05 >= 2 & q34_05 <= 5
replace djournalists2 = 0 if q34_05 == 1

// Encourage members and supporters to lobby policymakers, 
// participate in a letter-writing campaign or to sign petitions directed at public officials [q34_06]

gen petition = q34_06

gen dpetition2 = .
replace dpetition2 = 1 if q34_06 >= 2 & q34_06 <= 5
replace dpetition2 = 0 if q34_06 == 1


// Stage protests involving members and supporters 
// (strikes, consumer boycotts, public demonstrations) [q34_07]

gen protest = q34_07

gen dprotest2 = .
replace dprotest2 = 1 if q34_07 >= 2 & q34_07 <= 5
replace dprotest2 = 0 if q34_07 == 1 

// Organize a conference of experts and other stakeholders [q34_10]

gen conference = q34_10

gen dconference2 = .
replace dconference2 = 1 if q34_10 >= 2 & q34_10 <= 5
replace dconference2 = 0 if q34_10 == 1 

// Provide support to parliamentarians in their political activities (electoral campaigns) [q34_11]

gen elections = q34_11

gen delections2 = .
replace delections2 = 1 if q34_11 >= 2 & q34_11 <= 5
replace delections2 = 0 if q34_11 == 1 


// QID35 During the last 12 months, how often has your organization been involved in any of the 
// following activities? Please tick one box in every row. 

// We did not do this (1)
// At least once (2)
// At least once every three months (3)
// At least once a month (4)
// At least once a week (5)

// Responded to open consultations by the government [q35_01] 

gen consultation = q35_01

gen dconsultation2 = .
replace dconsultation2 = 1 if q35_01 >= 2 & q35_01 <= 5
replace dconsultation2 = 0 if q35_01 == 1 

// Served on advisory commissions or boards [q35_03]

gen advisory = q35_03

gen dadvisory2 = .
replace dadvisory2 = 1 if q35_03 >= 2 & q35_03 <= 5
replace dadvisory2 = 0 if q35_03 == 1 

// Presenting research or technical information to policymakers [q35_04]

gen research = q35_04

gen dresearch2 = .
replace dresearch2 = 1 if q35_04 >= 2 & q35_04 <= 5
replace dresearch2 = 0 if q35_04 == 1 


// FRENQUENCY OF BEING CONTACTED

// QID40 Interactions between civil society actors and policymakers can be initiated by either side. 
// On average, how often does your organization initiate contact with policymakers and 
// how often do policymakers initiate contact with your organization? Please tick one box in every row.

// Never (1)
// At least once (2)
// At least once every three months (3)
// At least once a month (4)
// At least once a week (5)

// Policymakers contact your organization [q40_02]

gen contact = q40_02


// CONFLICT

// QID43 In general, how would you characterize the relationship between your organization and //
// European and national authorities? Please tick one box in each row.

// Very co-operative (1)
// Moderately co-operative (2)
// Moderately conflictual (3)
// Very conflictual (4)
// Not applicable (5)

// Recoded 5= .

// National authorities [q43_02]

gen conflict = q43_02
replace conflict = . if q43_02 == 5


// PROFESSIONALISATION

// QID13 Thinking about your organization's decisions on political strategies, 
// how would you rate the influence of the following actors? 

// Very influential (1)
// Somewhat influential (2)
// Not very influential (3)
// Not at all influential (4)
// Not applicable (5)

// Reverse coded, 5 = .

// The board of directors/executive committee [q13_05]

gen texecstrategy = (q13_05-10)
gen execstrategy = .
replace execstrategy = 1 if texecstrategy == -6
replace execstrategy = 2 if texecstrategy == -7
replace execstrategy = 3 if texecstrategy == -8
replace execstrategy = 4 if texecstrategy == -9

// QID22 What are the typical backgrounds of your paid staff members? 
// Please tick all boxes that apply. 

// This is their first job [q22_01]
// (0: No; 1: Yes)
// (Lithuania contains 2, recoded to . )

gen firstjob = .
replace firstjob = 0 if q22_01 == 0
replace firstjob = 1 if q22_01 == 1

// SUBJECT AREAS (non-exclusive)

// QID16 Looking at the list below: Which areas is your organization involved in?
// (0: No; 1: Yes)

// Migration and asylum policy [q16_01] 
gen migration = .
replace migration = 1 if q16_01 == 1
replace migration = 0 if q16_01 == 0

// Economic, fiscal and monetary policy [q16_02] 
gen econ = .
replace econ = 1 if q16_02 == 1
replace econ = 0 if q16_02 == 0

// Health policy [q16_03] 
gen health = .
replace health = 1 if q16_03 == 1
replace health = 0 if q16_03 == 0

// Fight against crime [q16_04] 
gen crime = .
replace crime = 1 if q16_04 == 1
replace crime = 0 if q16_04 == 0

// Energy policy [q16_05] 
gen energy = .
replace energy = 1 if q16_05 == 1
replace energy = 0 if q16_05 == 0

//Education policy  [q16_06] 
gen edu = .
replace edu = 1 if q16_06 == 1
replace edu = 0 if q16_06 == 0

// Gender policy  [q16_07] 
gen gender = .
replace gender = 1 if q16_07 == 1
replace gender = 0 if q16_07 == 0

// Social policy [q16_08] 
gen social = .
replace social = 1 if q16_08 == 1
replace social = 0 if q16_08 == 0

// Environmental policy [q16_09] 
gen environ = .
replace environ = 1 if q16_09 == 1
replace environ = 0 if q16_09 == 0

// Consumer protection [q16_10] 
gen consumer = .
replace consumer = 1 if q16_10 == 1
replace consumer = 0 if q16_10 == 0

// Agricultural policy [q16_11] 
gen agri = .
replace agri = 1 if q16_11 == 1
replace agri = 0 if q16_11 == 0

// Citizens’ rights [q16_12] 
gen citizen = .
replace citizen = 1 if q16_12 == 1
replace citizen = 0 if q16_12 == 0

// Development cooperation policy [q16_13] (
gen develop = .
replace develop = 1 if q16_13 == 1
replace develop = 0 if q16_13 == 0

// Foreign policy [q16_14] 
gen foreign = .
replace foreign = 1 if q16_14 == 1
replace foreign = 0 if q16_14 == 0

// Defense policy [q16_15] 
gen defense = .
replace defense = 1 if q16_15 == 1
replace defense = 0 if q16_15 == 0

// European integration and cooperation [q16_16] 
gen europe = .
replace europe = 1 if q16_16 == 1
replace europe = 0 if q16_16 == 0

// Scientific research policy  [q16_17] 
gen science = .
replace science = 1 if q16_17 == 1
replace science = 0 if q16_17 == 0

// Regional policy of the EU [q16_18] 
gen regional = .
replace regional = 1 if q16_18 == 1
replace regional = 0 if q16_18 == 0

// Human rights [q16_19] 
gen humrights = .
replace humrights = 1 if q16_19 == 1
replace humrights = 0 if q16_19 == 0

// Transport policy [q16_20] 
gen transport = .
replace transport = 1 if q16_20 == 1
replace transport = 0 if q16_20 == 0

// Cultural policy [q16_21] 
gen culture = .
replace culture = 1 if q16_21 == 1
replace culture = 0 if q16_21 == 0

// Employment policy  [q16_22] 
gen employment = .
replace employment = 1 if q16_22 == 1
replace employment = 0 if q16_22 == 0


// Value labels for group type

label define grouptype 1 "Business associations" 2 "Professional associations" ///
3 Unions 4 "Identity groups" 5 "Cause groups" 6 "Leisure groups" 7 "Public institutions" ///
8 Others

label values type grouptype


// Dummy for TRADE UNION

gen union = 0
replace union = 1 if type == 3

// Dummy for CAUSE GROUPS

gen cause = 0
replace cause = 1 if type == 5



// ANALYSIS


// Data for figure 1

tab ddepartment2
tab djournalists2
tab dmedia2
tab dadvisory2
tab dconference2
tab dpressrelease2
tab dparliament2
tab dminister2
tab dconsultation2
tab dresearch2
tab dpetition2
tab delections2
tab dadverts2
tab litigate
tab dprotest2



// PCA 

pca department journalists media advisory conference pressrelease parliament minister consultation    ///
research petition elections adverts litigate protest

fapara, pca reps(10)

// Data for table 3

sort country
by country: tab type litigate, row
tab type litigate, row


// Data for table 4: Summmary statistics based on observations included in model 1
xi: logit litigate ostaff lawyer execstrategy contact protest conflict  publicbudget leguncert lobby union cause i.country
summarize litigate ostaff lawyer execstrategy contact protest conflict  publicbudget leguncert lobby union cause if e(sample)


// Logistic regression

xi: logit litigate ostaff lawyer execstrategy contact protest conflict  publicbudget leguncert lobby union cause  i.country
estimates store m1

xi: logit litigate ostaff lawyer execstrategy contact protest conflict  publicbudget leguncert lobby union cause migration econ health crime energy edu gender social environ consumer agri develop foreign defense europe science transport culture employment i.country
estimates store m2

xi: logit litigate ostaff execstrategy contact protest conflict  publicbudget lobby union cause migration econ health crime energy edu gender social environ consumer agri develop foreign defense europe science transport culture employment i.country
estimates store m3

// display models 

est tab m1 m2 m3, star(0.05 0.01 0.001) stats(N pseudo r2) b(%9.3f) stf(%9.3g)

// Predicted probabilities 

xi: logit litigate ostaff lawyer execstrategy contact conflict protest publicbudget leguncert lobby union cause i.country
margins, at(contact=(1 2 3 4 5)) atmeans
marginsplot

margins, at(protest=(1 2 3 4 5)) atmeans
marginsplot

margins, at(conflict=(1 2 3 4)) atmeans
marginsplot



// APPENDIX

// PCA 

pca department journalists media advisory conference pressrelease minister parliament consultation    //
research petition elections adverts litigate protest if country == 1

fapara, pca reps(10)

pca department journalists media advisory conference pressrelease minister parliament consultation    //
research petition elections adverts litigate protest if country == 2

fapara, pca reps(10)

pca department journalists media advisory conference pressrelease minister parliament consultation    //
research petition elections adverts litigate protest if country == 3

fapara, pca reps(10)

pca department journalists media advisory conference pressrelease minister parliament consultation    //
research petition elections adverts litigate protest if country == 4

fapara, pca reps(10)

pca department journalists media advisory conference pressrelease minister parliament consultation    //
research petition elections adverts litigate protest if country == 5

fapara, pca reps(10)


// Summary statistics based on observations included in model 5
xi: logit litigate ostaff lawyer firstjob advisory protest conflict  publicbudget leguncert lobby union cause  migration econ health crime energy edu gender social environ consumer agri develop foreign defense europe science transport culture employment i.country
summarize litigate ostaff lawyer firstjob advisory protest conflict  publicbudget leguncert lobby union cause  migration econ health crime energy edu gender social environ consumer agri develop foreign defense europe science transport culture employment if e(sample)


// Logistic regression with alternative variables

xi: logit litigate ostaff lawyer firstjob advisory protest conflict  publicbudget leguncert lobby union cause  i.country
estimates store m4

xi: logit litigate ostaff lawyer firstjob advisory protest conflict  publicbudget leguncert lobby union cause  migration econ health crime energy edu gender social environ consumer agri develop foreign defense europe science transport culture employment i.country
estimates store m5

xi: logit litigate ostaff firstjob advisory protest conflict  publicbudget lobby union cause migration econ health crime energy edu gender social environ consumer agri develop foreign defense europe science transport culture employment i.country
estimates store m6


// display models 

est tab m4 m5 m6, star(0.05 0.01 0.001) stats(N pseudo r2) b(%9.3f) stf(%9.3g)

