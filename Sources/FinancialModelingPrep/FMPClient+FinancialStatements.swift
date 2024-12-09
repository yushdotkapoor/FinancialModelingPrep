
//
//  FMPClient+FinancialStatements.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public enum StatementPeriod: String, Codable {
    case annual = "annual"
    case quarter = "quarter"
}

public struct IncomeStatement: Codable {
    public let date: Date
    public let symbol: String
    public let reportedCurrency: String
    public let cik: String
    public let fillingDate: Date
    public let acceptedDate: Date
    public let calendarYear: String
    public let period: String
    public let revenue: Double
    public let costOfRevenue: Double
    public let grossProfit: Double
    public let grossProfitRatio: Double
    public let researchAndDevelopmentExpenses: Double
    public let generalAndAdministrativeExpenses: Double
    public let sellingAndMarketingExpenses: Double
    public let sellingGeneralAndAdministrativeExpenses: Double
    public let otherExpenses: Double
    public let operatingExpenses: Double
    public let costAndExpenses: Double
    public let interestIncome: Double
    public let interestExpense: Double
    public let depreciationAndAmortization: Double
    public let ebitda: Double
    public let ebitdaratio: Double
    public let operatingIncome: Double
    public let operatingIncomeRatio: Double
    public let totalOtherIncomeExpensesNet: Double
    public let incomeBeforeTax: Double
    public let incomeBeforeTaxRatio: Double
    public let incomeTaxExpense: Double
    public let netIncome: Double
    public let netIncomeRatio: Double
    public let eps: Double
    public let epsdiluted: Double
    public let weightedAverageShsOut: Double
    public let weightedAverageShsOutDil: Double
    public let link: URL
    public let finalLink: URL
}

public struct IncomeStatementAsReported: Codable {
    public let date: Date
    public let symbol: String
    public let period: String
    public let revenuefromcontractwithcustomerexcludingassessedtax: Int64
    public let costofgoodsandservicessold: Int64
    public let grossprofit: Int64
    public let researchanddevelopmentexpense: Int64
    public let sellinggeneralandadministrativeexpense: Int64
    public let operatingexpenses: Int64
    public let operatingincomeloss: Int64
    public let nonoperatingincomeexpense: Int64
    public let incomelossfromcontinuingoperationsbeforeincometaxesextraordinaryitemsnoncontrollinginterest: Int64
    public let incometaxexpensebenefit: Int64
    public let netincomeloss: Int64
    public let earningspersharebasic: Double
    public let earningspersharediluted: Double
    public let weightedaveragenumberofsharesoutstandingbasic: Int64
    public let weightedaveragenumberofdilutedsharesoutstanding: Int64
    public let othercomprehensiveincomelossforeigncurrencytransactionandtranslationadjustmentnetoftax: Int64
    public let othercomprehensiveincomelossderivativeinstrumentgainlossbeforereclassificationaftertax: Int64
    public let othercomprehensiveincomelossderivativeinstrumentgainlossreclassificationaftertax: Int64
    public let othercomprehensiveincomelossderivativeinstrumentgainlossafterreclassificationandtax: Int64
    public let othercomprehensiveincomeunrealizedholdinggainlossonsecuritiesarisingduringperiodnetoftax: Int64
    public let othercomprehensiveincomelossreclassificationadjustmentfromaociforsaleofsecuritiesnetoftax: Int64
    public let othercomprehensiveincomelossavailableforsalesecuritiesadjustmentnetoftax: Int64
    public let othercomprehensiveincomelossnetoftaxportionattributabletoparent: Int64
    public let comprehensiveincomenetoftax: Int64
}

public struct BalanceSheetStatement: Codable {
    public let date: Date
    public let symbol: String
    public let reportedCurrency: String
    public let cik: String
    public let fillingDate: Date
    public let acceptedDate: Date
    public let calendarYear: String
    public let period: String
    public let cashAndCashEquivalent: Int64
    public let shortTermInvestments: Int64
    public let cashAndShortTermInvestments: Int64
    public let netReceivables: Int64
    public let inventory: Int64
    public let otherCurrentAssets: Int64
    public let totalCurrentAssets: Int64
    public let propertyPlantEquipmentNet: Int64
    public let goodwill: Int64
    public let intangibleAssets: Int64
    public let goodwillAndIntangibleAssets: Int64
    public let longTermInvestments: Int64
    public let taxAssets: Int64
    public let otherNonCurrentAssets: Int64
    public let totalNonCurrentAssets: Int64
    public let otherAssets: Int64
    public let totalAssets: Int64
    public let accountPayables: Int64
    public let shortTermDebt: Int64
    public let taxPayables: Int64
    public let deferredRevenue: Int64
    public let otherCurrentLiabilities: Int64
    public let totalCurrentLiabilities: Int64
    public let longTermDebt: Int64
    public let deferredRevenueNonCurrent: Int64
    public let deferredTaxLiabilitiesNonCurrent: Int64
    public let otherNonCurrentLiabilities: Int64
    public let totalNonCurrentLiabilities: Int64
    public let otherLiabilities: Int64
    public let capitalLeaseObligations: Int64
    public let totalLiabilities: Int64
    public let preferredStock: Int64
    public let commonStock: Int64
    public let retainedEarnings: Int64
    public let accumulatedOtherComprehensiveIncomeLosses: Int64
    public let othertotalStockholderEquity: Int64
    public let totalStockholderEquity: Int64
    public let totalEquity: Int64
    public let totalLiabilitiesAndStockholderEquity: Int64
    public let minorityInterest: Int64
    public let totalLiabilitiesAndTotalEquity: Int64
    public let totalInvestments: Int64
    public let totalDebt: Int64
    public let netDebt: Int64
    public let link: URL
    public let finalLink: URL
}

public struct BalanceSheetStatementAsReported: Codable {
    public let date: Date
    public let symbol: String
    public let period: String
    public let cashandcashequivalentsatcarryingvalue: Int64
    public let marketablesecuritiescurrent: Int64
    public let accountsreceivablenetcurrent: Int64
    public let inventorynet: Int64
    public let nontradereceivablescurrent: Int64
    public let otherassetscurrent: Int64
    public let assetscurrent: Int64
    public let marketablesecuritiesnoncurrent: Int64
    public let propertyplantandequipmentnet: Int64
    public let otherassetsnoncurrent: Int64
    public let assetsnoncurrent: Int64
    public let assets: Int64
    public let accountspayablecurrent: Int64
    public let otherliabilitiescurrent: Int64
    public let contractwithcustomerliabilitycurrent: Int64
    public let commercialpaper: Int64
    public let longtermdebtcurrent: Int64
    public let liabilitiescurrent: Int64
    public let longtermdebtnoncurrent: Int64
    public let otherliabilitiesnoncurrent: Int64
    public let liabilitiesnoncurrent: Int64
    public let liabilities: Int64
    public let commonstocksincludingadditionalpaidincapital: Int64
    public let retainedearningsaccumulateddeficit: Int64
    public let accumulatedothercomprehensiveincomelossnetoftax: Int64
    public let stockholdersequity: Int64
    public let liabilitiesandstockholdersequity: Int64
    public let commonstockparorstatedvaluepershare: Double
    public let commonstocksharesauthorized: Int64
    public let commonstocksharesissued: Int64
    public let commonstocksharesoutstanding: Int64
}

public struct CashflowStatement: Codable {
    public let date: Date
    public let symbol: String
    public let reportedCurrency: String
    public let cik: String
    public let fillingDate: Date
    public let acceptedDate: Date
    public let calendarYear: String
    public let period: String
    public let netIncome: Int64
    public let depreciationAndAmortization: Int64
    public let deferredIncomeTax: Int64
    public let stockBasedCompensation: Int64
    public let changeInWorkingCapital: Int64
    public let accountsReceivables: Int64
    public let inventory: Int64
    public let accountsPayables: Int64
    public let otherWorkingCapital: Int64
    public let otherNonCashItems: Int64
    public let netCashProvidedByOperatingActivities: Int64
    public let investmentsInPropertyPlantAndEquipment: Int64
    public let acquisitionsNet: Int64
    public let purchasesOfInvestments: Int64
    public let salesMaturitiesOfInvestments: Int64
    public let otherInvestingActivites: Int64
    public let netCashUsedForInvestingActivites: Int64
    public let debtRepayment: Int64
    public let commonStockIssued: Int64
    public let commonStockRepurchased: Int64
    public let dividendsPaid: Int64
    public let otherFinancingActivites: Int64
    public let netCashUsedProvidedByFinancingActivities: Int64
    public let effectOfForexChangesOnCash: Int64
    public let netChangeInCash: Int64
    public let cashAtEndOfPeriod: Int64
    public let cashAtBeginningOfPeriod: Int64
    public let operatingCashFlow: Int64
    public let capitalExpenditure: Int64
    public let freeCashFlow: Int64
    public let link: URL
    public let finalLink: URL
}

public struct CashflowStatementAsReported: Codable {
    public let date: Date
    public let symbol: String
    public let period: String
    public let cashcashequivalentsrestrictedcashandrestrictedcashequivalents: Int64
    public let netincomeloss: Int64
    public let depreciationdepletionandamortization: Int64
    public let sharebasedcompensation: Int64
    public let deferredincometaxexpensebenefit: Int64
    public let othernoncashincomeexpense: Int64
    public let increasedecreaseinaccountsreceivable: Int64
    public let increasedecreaseininventories: Int64
    public let increasedecreaseinotherreceivables: Int64
    public let increasedecreaseinotheroperatingassets: Int64
    public let increasedecreaseinaccountspayable: Int64
    public let increasedecreaseincontractwithcustomerliability: Int64
    public let increasedecreaseinotheroperatingliabilities: Int64
    public let netcashprovidedbyusedinoperatingactivities: Int64
    public let paymentstoacquireavailableforsalesecuritiesdebt: Int64
    public let proceedsfrommaturitiesprepaymentsandcallsofavailableforsalesecurities: Int64
    public let proceedsfromsaleofavailableforsalesecuritiesdebt: Int64
    public let paymentstoacquirepropertyplantandequipment: Int64
    public let paymentstoacquirebusinessesnetofcashacquired: Int64
    public let paymentsforproceedsfromotherinvestingactivities: Int64
    public let netcashprovidedbyusedininvestingactivities: Int64
    public let paymentsrelatedtotaxwithholdingforsharebasedcompensation: Int64
    public let paymentsofdividends: Int64
    public let paymentsforrepurchaseofcommonstock: Int64
    public let proceedsfromissuanceoflongtermdebt: Int64
    public let repaymentsoflongtermdebt: Int64
    public let proceedsfromrepaymentsofcommercialpaper: Int64
    public let proceedsfrompaymentsforotherfinancingactivities: Int64
    public let netcashprovidedbyusedinfinancingactivities: Int64
    public let cashcashequivalentsrestrictedcashandrestrictedcashequivalentsperiodincreasedecreaseincludingexchangerateeffect: Int64
    public let incometaxespaidnet: Int64
    public let interestpaidnet: Int64
}

public struct FullFinancialStatementAsReported: Codable {
    
    public let date: Date
    public let symbol: String
    public let period: String
    public let documenttype: String
    public let documentannualreport: Bool
    public let currentfiscalyearenddate: String
    public let documentperiodenddate: Date
    public let documenttransitionreport: Bool
    public let entityfilenumber: String
    public let entityregistrantname: String
    public let entityincorporationstatecountrycode: String
    public let entitytaxidentificationnumber: String
    public let entityaddressaddressline1: String
    public let entityaddresscityortown: String
    public let entityaddressstateorprovince: String
    public let entityaddresspostalzipcode: Int
    public let cityareacode: Int
    public let localphonenumber: String
    public let security12btitle: String
    public let tradingsymbol: String
    public let notradingsymbolflag: Bool
    public let securityexchangename: String
    public let entitywellknownseasonedissuer: String
    public let entityvoluntaryfilers: String
    public let entitycurrentreportingstatus: String
    public let entityinteractivedatacurrent: String
    public let entityfilercategory: String
    public let entitysmallbusiness: Bool
    public let entityemerginggrowthcompany: Bool
    public let icfrauditorattestationflag: Bool
    public let entityshellcompany: Bool
    public let amendmentflag: Bool
    public let documentfiscalyearfocus: Int
    public let documentfiscalperiodfocus: String
    public let entitycentralindexkey: Int
    public let auditorname: String
    public let auditorlocation: String
    public let auditorfirmid: Int
    public let revenuefromcontractwithcustomerexcludingassessedtax: Int64
    public let costofgoodsandservicessold: Int64
    public let grossprofit: Int64
    public let researchanddevelopmentexpense: Int64
    public let sellinggeneralandadministrativeexpense: Int64
    public let operatingexpenses: Int64
    public let operatingincomeloss: Int64
    public let nonoperatingincomeexpense: Int64
    public let incomelossfromcontinuingoperationsbeforeincometaxesextraordinaryitemsnoncontrollinginterest: Int64
    public let incometaxexpensebenefit: Int64
    public let netincomeloss: Int64
    public let earningspersharebasic: Double
    public let earningspersharediluted: Double
    public let weightedaveragenumberofsharesoutstandingbasic: Int64
    public let weightedaveragenumberofdilutedsharesoutstanding: Int64
    public let othercomprehensiveincomelossforeigncurrencytransactionandtranslationadjustmentnetoftax: Int64
    public let othercomprehensiveincomelossderivativeinstrumentgainlossbeforereclassificationaftertax: Int64
    public let othercomprehensiveincomelossderivativeinstrumentgainlossreclassificationaftertax: Int64
    public let othercomprehensiveincomelossderivativeinstrumentgainlossafterreclassificationandtax: Int64
    public let othercomprehensiveincomeunrealizedholdinggainlossonsecuritiesarisingduringperiodnetoftax: Int64
    public let othercomprehensiveincomelossreclassificationadjustmentfromaociforsaleofsecuritiesnetoftax: Int64
    public let othercomprehensiveincomelossavailableforsalesecuritiesadjustmentnetoftax: Int64
    public let othercomprehensiveincomelossnetoftaxportionattributabletoparent: Int64
    public let comprehensiveincomenetoftax: Int64
    public let cashandcashequivalentsatcarryingvalue: Int64
    public let marketablesecuritiescurrent: Int64
    public let accountsreceivablenetcurrent: Int64
    public let inventorynet: Int64
    public let nontradereceivablescurrent: Int64
    public let otherassetscurrent: Int64
    public let assetscurrent: Int64
    public let marketablesecuritiesnoncurrent: Int64
    public let propertyplantandequipmentnet: Int64
    public let otherassetsnoncurrent: Int64
    public let assetsnoncurrent: Int64
    public let assets: Int64
    public let accountspayablecurrent: Int64
    public let otherliabilitiescurrent: Int64
    public let contractwithcustomerliabilitycurrent: Int64
    public let commercialpaper: Int64
    public let longtermdebtcurrent: Int64
    public let liabilitiescurrent: Int64
    public let longtermdebtnoncurrent: Int64
    public let otherliabilitiesnoncurrent: Int64
    public let liabilitiesnoncurrent: Int64
    public let liabilities: Int64
    public let commonstocksincludingadditionalpaidincapital: Int64
    public let retainedearningsaccumulateddeficit: Int64
    public let accumulatedothercomprehensiveincomelossnetoftax: Int64
    public let stockholdersequity: Int64
    public let liabilitiesandstockholdersequity: Int64
    public let commonstockparorstatedvaluepershare: Double
    public let commonstocksharesauthorized: Int64
    public let commonstocksharesissued: Int64
    public let commonstocksharesoutstanding: Int64
    public let stockissuedduringperiodvaluenewissues: Int64
    public let adjustmentsrelatedtotaxwithholdingforsharebasedcompensation: Int64
    public let adjustmentstoadditionalpaidincapitalsharebasedcompensationrequisiteserviceperiodrecognitionvalue: Int64
    public let dividends: Int64
    public let stockrepurchasedandretiredduringperiodvalue: Int64
    public let commonstockdividendspersharedeclared: Double
    public let cashcashequivalentsrestrictedcashandrestrictedcashequivalents: Int64
    public let depreciationdepletionandamortization: Int64
    public let sharebasedcompensation: Int64
    public let deferredincometaxexpensebenefit: Int64
    public let othernoncashincomeexpense: Int64
    public let increasedecreaseinaccountsreceivable: Int64
    public let increasedecreaseininventories: Int64
    public let increasedecreaseinotherreceivables: Int64
    public let increasedecreaseinotheroperatingassets: Int64
    public let increasedecreaseinaccountspayable: Int64
    public let increasedecreaseincontractwithcustomerliability: Int64
    public let increasedecreaseinotheroperatingliabilities: Int64
    public let netcashprovidedbyusedinoperatingactivities: Int64
    public let paymentstoacquireavailableforsalesecuritiesdebt: Int64
    public let proceedsfrommaturitiesprepaymentsandcallsofavailableforsalesecurities: Int64
    public let proceedsfromsaleofavailableforsalesecuritiesdebt: Int64
    public let paymentstoacquirepropertyplantandequipment: Int64
    public let paymentstoacquirebusinessesnetofcashacquired: Int64
    public let paymentsforproceedsfromotherinvestingactivities: Int64
    public let netcashprovidedbyusedininvestingactivities: Int64
    public let paymentsrelatedtotaxwithholdingforsharebasedcompensation: Int64
    public let paymentsofdividends: Int64
    public let paymentsforrepurchaseofcommonstock: Int64
    public let proceedsfromissuanceoflongtermdebt: Int64
    public let repaymentsoflongtermdebt: Int64
    public let proceedsfromrepaymentsofcommercialpaper: Int64
    public let proceedsfrompaymentsforotherfinancingactivities: Int64
    public let netcashprovidedbyusedinfinancingactivities: Int64
    public let cashcashequivalentsrestrictedcashandrestrictedcashequivalentsperiodincreasedecreaseincludingexchangerateeffect: Int64
    public let incometaxespaidnet: Int64
    public let interestpaidnet: Int64
    public let performanceobligationsinarrangements: Int
    public let propertyplantandequipmentusefullife: String
    public let depreciation: Int64
    public let weightedaveragenumberdilutedsharesoutstandingadjustment: Int64
    public let contractwithcustomerliabilityrevenuerecognized: Int64
    public let contractwithcustomerliability: Int64
    public let revenueremainingperformanceobligationpercentage: Double
    public let revenueremainingperformanceobligationexpectedtimingofsatisfactionperiod1: String
    public let cash: Int64
    public let equitysecuritiesfvnicost: Int64
    public let equitysecuritiesfvniaccumulatedgrossunrealizedlossbeforetax: Int64
    public let equitysecuritiesfvnicurrentandnoncurrent: Int64
    public let availableforsaledebtsecuritiesamortizedcostbasis: Int64
    public let availableforsaledebtsecuritiesaccumulatedgrossunrealizedgainbeforetax: Int64
    public let availableforsaledebtsecuritiesaccumulatedgrossunrealizedlossbeforetax: Int64
    public let availableforsalesecuritiesdebtsecurities: Int64
    public let cashcashequivalentsandmarketablesecuritiescost: Int64
    public let cashequivalentsandmarketablesecuritiesaccumulatedgrossunrealizedgainbeforetax: Int64
    public let cashequivalentsandmarketablesecuritiesaccumulatedgrossunrealizedlossbeforetax: Int64
    public let cashcashequivalentsandmarketablesecurities: Int64
    public let restrictedinvestments: Int64
    public let availableforsalesecuritiesdebtmaturitiesrollingyeartwothroughfivefairvalue: Int64
    public let availableforsalesecuritiesdebtmaturitiesrollingyearsixthroughtenfairvalue: Int64
    public let availableforsalesecuritiesdebtmaturitiesrollingafteryeartenfairvalue: Int64
    public let availableforsalesecuritiesdebtmaturitiessinglematuritydate: Int64
    public let maximumlengthoftimeforeigncurrencycashflowhedge: String
    public let fairvalueconcentrationofriskderivativefinancialinstrumentsassets: Int64
    public let derivativeassetsreductionformasternettingarrangementsincludingtheeffectsofcollateral: Int64
    public let derivativeliabilitiesreductionformasternettingarrangementsincludingtheeffectsofcollateral: Int64
    public let derivativefairvalueofderivativenet: Int64
    public let numberofcustomerswithsignificantaccountsreceivablebalance: Int
    public let concentrationriskpercentage1: Double
    public let numberofsignificantvendors: Int
    public let derivativenotionalamount: Int64
    public let derivativeassetfairvaluegrossassetincludingnotsubjecttomasternettingarrangement: Int64
    public let derivativeliabilityfairvaluegrossliabilityincludingnotsubjecttomasternettingarrangement: Int64
    public let hedgedassetfairvaluehedge: Int64
    public let hedgedliabilityfairvaluehedge: Int64
    public let propertyplantandequipmentgross: Int64
    public let accumulateddepreciationdepletionandamortizationpropertyplantandequipment: Int64
    public let accruedincometaxesnoncurrent: Int64
    public let otheraccruedliabilitiesnoncurrent: Int64
    public let investmentincomeinterestanddividend: Int64
    public let interestexpense: Int64
    public let othernonoperatingincomeexpense: Int64
    public let currentfederaltaxexpensebenefit: Int64
    public let deferredfederalincometaxexpensebenefit: Int64
    public let federalincometaxexpensebenefitcontinuingoperations: Int64
    public let currentstateandlocaltaxexpensebenefit: Int64
    public let deferredstateandlocalincometaxexpensebenefit: Int64
    public let stateandlocalincometaxexpensebenefitcontinuingoperations: Int64
    public let currentforeigntaxexpensebenefit: Int64
    public let deferredforeignincometaxexpensebenefit: Int64
    public let foreignincometaxexpensebenefitcontinuingoperations: Int64
    public let incomelossfromcontinuingoperationsbeforeincometaxesforeign: Int64
    public let effectiveincometaxratereconciliationatfederalstatutoryincometaxrate: Double
    public let deferredtaxassetstaxcreditcarryforwardsforeign: Int64
    public let deferredtaxassetstaxcreditcarryforwardsresearch: Int64
    public let unrecognizedtaxbenefits: Int64
    public let unrecognizedtaxbenefitsthatwouldimpacteffectivetaxrate: Int64
    public let decreaseinunrecognizedtaxbenefitsisreasonablypossible: Int64
    public let losscontingencyestimateofpossibleloss: Int64
    public let incometaxreconciliationincometaxexpensebenefitatfederalstatutoryincometaxrate: Int64
    public let incometaxreconciliationstateandlocalincometaxes: Int64
    public let effectiveincometaxratereconciliationtaxcutsandjobsactof2017amount: Int64
    public let incometaxreconciliationforeignincometaxratedifferential: Int64
    public let effectiveincometaxratereconciliationfdiiamount: Int64
    public let incometaxreconciliationtaxcreditsresearch: Int64
    public let effectiveincometaxratereconciliationsharebasedcompensationexcesstaxbenefitamount: Int64
    public let incometaxreconciliationotheradjustments: Int64
    public let effectiveincometaxratecontinuingoperations: Double
    public let deferredtaxassetsgoodwillandintangibleassets: Int64
    public let deferredtaxassetstaxdeferredexpensereservesandaccruals: Int64
    public let deferredtaxassetsleaseliabilities: Int64
    public let deferredtaxassetsdeferredincome: Int64
    public let deferredtaxassetsothercomprehensiveloss: Int64
    public let deferredtaxassetstaxcreditcarryforwards: Int64
    public let deferredtaxassetsother: Int64
    public let deferredtaxassetsgross: Int64
    public let deferredtaxassetsvaluationallowance: Int64
    public let deferredtaxassetsnet: Int64
    public let deferredtaxliabilitiesminimumtaxonforeignearnings: Int64
    public let deferredtaxliabilitiesleasingarrangements: Int64
    public let deferredtaxliabilitiesothercomprehensiveincome: Int64
    public let deferredtaxliabilitiesother: Int64
    public let deferredincometaxliabilities: Int64
    public let deferredtaxassetsliabilitiesnet: Int64
    public let unrecognizedtaxbenefitsincreasesresultingfrompriorperiodtaxpositions: Int64
    public let unrecognizedtaxbenefitsdecreasesresultingfrompriorperiodtaxpositions: Int64
    public let unrecognizedtaxbenefitsincreasesresultingfromcurrentperiodtaxpositions: Int64
    public let unrecognizedtaxbenefitsdecreasesresultingfromsettlementswithtaxingauthorities: Int64
    public let unrecognizedtaxbenefitsreductionsresultingfromlapseofapplicablestatuteoflimitations: Int64
    public let lesseeoperatingandfinanceleasetermofcontract: String
    public let operatingleasecost: Int64
    public let variableleasecost: Int64
    public let operatingleasepayments: Int64
    public let rightofuseassetsobtainedinexchangeforoperatingandfinanceleaseliabilities: Int64
    public let operatingandfinanceleaseweightedaverageremainingleaseterm: String
    public let operatingandfinanceleaseweightedaveragediscountratepercent: Double
    public let lesseeoperatingandfinanceleaseleasenotyetcommencedpaymentsdue: Int64
    public let lesseeoperatingandfinanceleaseleasenotyetcommencedtermofcontract: String
    public let operatingleaserightofuseasset: Int64
    public let operatingleaserightofuseassetstatementoffinancialpositionextensiblelist: URL
    public let financeleaserightofuseasset: Int64
    public let financeleaserightofuseassetstatementoffinancialpositionextensiblelist: URL
    public let operatingandfinanceleaserightofuseasset: Int64
    public let operatingleaseliabilitycurrent: Int64
    public let operatingleaseliabilitycurrentstatementoffinancialpositionextensiblelist: URL
    public let operatingleaseliabilitynoncurrent: Int64
    public let operatingleaseliabilitynoncurrentstatementoffinancialpositionextensiblelist: URL
    public let financeleaseliabilitycurrent: Int64
    public let financeleaseliabilitycurrentstatementoffinancialpositionextensiblelist: URL
    public let financeleaseliabilitynoncurrent: Int64
    public let financeleaseliabilitynoncurrentstatementoffinancialpositionextensiblelist: URL
    public let operatingandfinanceleaseliability: Int64
    public let lesseeoperatingleaseliabilitypaymentsduenexttwelvemonths: Int64
    public let lesseeoperatingleaseliabilitypaymentsdueyeartwo: Int64
    public let lesseeoperatingleaseliabilitypaymentsdueyearthree: Int64
    public let lesseeoperatingleaseliabilitypaymentsdueyearfour: Int64
    public let lesseeoperatingleaseliabilitypaymentsdueyearfive: Int64
    public let lesseeoperatingleaseliabilitypaymentsdueafteryearfive: Int64
    public let lesseeoperatingleaseliabilitypaymentsdue: Int64
    public let lesseeoperatingleaseliabilityundiscountedexcessamount: Int64
    public let operatingleaseliability: Int64
    public let financeleaseliabilitypaymentsduenexttwelvemonths: Int64
    public let financeleaseliabilitypaymentsdueyeartwo: Int64
    public let financeleaseliabilitypaymentsdueyearthree: Int64
    public let financeleaseliabilitypaymentsdueyearfour: Int64
    public let financeleaseliabilitypaymentsdueyearfive: Int64
    public let financeleaseliabilitypaymentsdueafteryearfive: Int64
    public let financeleaseliabilitypaymentsdue: Int64
    public let financeleaseliabilityundiscountedexcessamount: Int64
    public let financeleaseliability: Int64
    public let lesseeoperatingandfinanceleaseliabilitytobepaidyearone: Int64
    public let lesseeoperatingandfinanceleaseliabilitytobepaidyeartwo: Int64
    public let lesseeoperatingandfinanceleaseliabilitytobepaidyearthree: Int64
    public let lesseeoperatingandfinanceleaseliabilitytobepaidyearfour: Int64
    public let lesseeoperatingandfinanceleaseliabilitytobepaidyearfive: Int64
    public let lesseeoperatingandfinanceleaseliabilitytobepaidafteryearfive: Int64
    public let lesseeoperatingandfinanceleaseliabilitypaymentsdue: Int64
    public let lesseeoperatingandfinanceleaseliabilityundiscountedexcessamount: Int64
    public let debtinstrumentterm: String
    public let shorttermdebtweightedaverageinterestrate: Double
    public let interestcostsincurred: Int64
    public let longtermdebtfairvalue: Int64
    public let proceedsfromrepaymentsofshorttermdebtmaturinginthreemonthsorless: Int64
    public let proceedsfromshorttermdebtmaturinginmorethanthreemonths: Int64
    public let repaymentsofshorttermdebtmaturinginmorethanthreemonths: Int64
    public let proceedsfromrepaymentsofshorttermdebtmaturinginmorethanthreemonths: Int64
    public let debtinstrumentcarryingamount: Int64
    public let debtinstrumentunamortizeddiscountpremiumanddebtissuancecostsnet: Int64
    public let hedgeaccountingadjustmentsrelatedtolongtermdebt: Int64
    public let debtinstrumentmaturityyearrangestart: Int
    public let debtinstrumentmaturityyearrangeend: Int
    public let debtinstrumentinterestratestatedpercentage: Double
    public let debtinstrumentinterestrateeffectivepercentage: Double
    public let longtermdebtmaturitiesrepaymentsofprincipalinnexttwelvemonths: Int64
    public let longtermdebtmaturitiesrepaymentsofprincipalinyeartwo: Int64
    public let longtermdebtmaturitiesrepaymentsofprincipalinyearthree: Int64
    public let longtermdebtmaturitiesrepaymentsofprincipalinyearfour: Int64
    public let longtermdebtmaturitiesrepaymentsofprincipalinyearfive: Int64
    public let longtermdebtmaturitiesrepaymentsofprincipalafteryearfive: Int64
    public let stockrepurchasedandretiredduringperiodshares: Int64
    public let stockissuedduringperiodsharessharebasedpaymentarrangementnetofshareswithheldfortaxes: Int64
    public let sharebasedcompensationarrangementbysharebasedpaymentawardawardvestingperiod1: String
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsnumberofsharesofcommonstockissuedperunituponvesting: Int
    public let factorbywhicheachrsugrantedreducesandeachrsucanceledorsharewithheldfortaxesincreasessharesavailableforgrant: Int
    public let sharebasedcompensationarrangementbysharebasedpaymentawardpurchasepriceofcommonstockpercent: Double
    public let sharebasedcompensationarrangementbysharebasedpaymentawardofferingperiod: String
    public let sharebasedcompensationarrangementbysharebasedpaymentawardmaximumemployeesubscriptionrate: Double
    public let employeestockpurchaseplanmaximumannualpurchasesperemployeeamount: Int64
    public let definedcontributionplanemployermatchingcontributionpercentofmatch: Double
    public let definedcontributionplanemployermatchingcontributionpercent: Double
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsvestedinperiodtotalfairvalue: Int64
    public let sharespaidfortaxwithholdingforsharebasedcompensation: Int64
    public let employeeservicesharebasedcompensationnonvestedawardstotalcompensationcostnotyetrecognized: Int64
    public let employeeservicesharebasedcompensationnonvestedawardstotalcompensationcostnotyetrecognizedperiodforrecognition1: String
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsnonvestednumber: Int64
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsgrantsinperiod: Int64
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsvestedinperiod: Int64
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsforfeitedinperiod: Int64
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsnonvestedweightedaveragegrantdatefairvalue: Double
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsgrantsinperiodweightedaveragegrantdatefairvalue: Double
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsvestedinperiodweightedaveragegrantdatefairvalue: Double
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsforfeituresweightedaveragegrantdatefairvalue: Double
    public let sharebasedcompensationarrangementbysharebasedpaymentawardequityinstrumentsotherthanoptionsaggregateintrinsicvaluenonvested: Int64
    public let allocatedsharebasedcompensationexpense: Int64
    public let employeeservicesharebasedcompensationtaxbenefitfromcompensationexpense: Int64
    public let unrecordedunconditionalpurchaseobligationbalanceonfirstanniversary: Int64
    public let unrecordedunconditionalpurchaseobligationbalanceonsecondanniversary: Int64
    public let unrecordedunconditionalpurchaseobligationbalanceonthirdanniversary: Int64
    public let unrecordedunconditionalpurchaseobligationbalanceonfourthanniversary: Int64
    public let unrecordedunconditionalpurchaseobligationbalanceonfifthanniversary: Int64
    public let unrecordedunconditionalpurchaseobligationdueafterfiveyears: Int64
    public let unrecordedunconditionalpurchaseobligationbalancesheetamount: Int64
    public let othergeneralandadministrativeexpense: Int64
    public let noncurrentassets: Int64
}

public struct FinancialReportDate: Codable {
    public let symbol: String
    public let date: Int
    public let period: String
    public let linkXlsx: URL
    public let linkJson: URL
}

public struct AnnualReportForm10K: Codable {
    public let symbol: String
    public let period: String
    public let year: String
    public let CoverPage: [CoverPageItem]

        public struct CoverPageItem: Codable {
            public let title: String
            public let values: [String]
            
            private enum CodingKeys: String, CodingKey {
                case title
                case values
            }
            
            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: DynamicKey.self)
                guard let key = container.allKeys.first else {
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath,
                                              debugDescription: "No keys found"))
                }
                title = key.stringValue
                values = try container.decode([String].self, forKey: key)
            }
            
            // Encoding with dynamic keys
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: DynamicKey.self)
                guard let key = DynamicKey(stringValue: title) else {
                    throw EncodingError.invalidValue(
                        title,
                        EncodingError.Context(codingPath: encoder.codingPath,
                                              debugDescription: "Invalid key"))
                }
                try container.encode(values, forKey: key)
            }
        }
    
    public struct DynamicKey: CodingKey {
        public let stringValue: String
        public var intValue: Int? { nil }

        public init?(stringValue: String) {
            self.stringValue = stringValue
        }

        public init?(intValue: Int) {
            return nil
        }
    }
}

extension FMPClient {
    
    public func incomeStatement(symbol: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [IncomeStatement] {
        return try await get("income-statement/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func incomeStatement(cik: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [IncomeStatement] {
        return try await get("income-statement/\(cik)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func balanceSheetStatement(symbol: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [BalanceSheetStatement] {
        return try await get("balance-sheet-statement/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func balanceSheetStatement(cik: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [BalanceSheetStatement] {
        return try await get("balance-sheet-statement/\(cik)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func cashflowStatement(symbol: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [CashflowStatement] {
        return try await get("cash-flow-statement/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func cashflowStatement(cik: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [CashflowStatement] {
        return try await get("cash-flow-statement/\(cik)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func incomeStatementAsReported(symbol: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [IncomeStatementAsReported] {
        return try await get("income-statement-as-reported/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func balanceSheetStatementAsReported(symbol: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [BalanceSheetStatementAsReported] {
        return try await get("balance-sheet-statement-as-reported/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func cashflowStatementAsReported(symbol: String, period: StatementPeriod? = nil, dataType: String? = nil, limit: Int? = nil) async throws -> [CashflowStatementAsReported] {
        return try await get("cash-flow-statement-as-reported/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "datatype": dataType,
            "limit": limit.map(String.init),
        ])
    }
    
    public func fullFinancialStatementAsReported(symbol: String, period: StatementPeriod? = nil, limit: Int? = nil) async throws -> [FullFinancialStatementAsReported] {
        return try await get("financial-statement-full-as-reported/\(symbol)", searchParams: [
            "period": period?.rawValue,
            "limit": limit.map(String.init),
        ])
    }
    
    public func financialReportDates(symbol: String) async throws -> [FinancialReportDate] {
        return try await get("financial-report-dates", searchParams: [
            "symbol": symbol
        ])
    }
    
    public func annualReportsOnForm10K(symbol: String, year: Int, period: String) async throws -> [AnnualReportForm10K] {
        return try await get("cash-flow-statement-as-reported/\(symbol)", searchParams: [
            "symbol": symbol,
            "year": String(year),
            "period": period
        ])
    }
    
}
