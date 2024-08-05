//
//  MarketDataModel.swift
//  Crypto Tracker
//
//  Created by Mac on 28/07/2024.
//

import Foundation

/*
 
 URL: https://api.coingecko.com/api/v3/global
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 14940,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 1161,
     "total_market_cap": {
       "btc": 37354432.511537,
       "eth": 776566525.674275,
       "ltc": 35352169922.7686,
       "bch": 6425335718.58129,
       "bnb": 4357203380.21114,
       "eos": 4407173203815.85,
       "xrp": 4185743100884.08,
       "xlm": 24847260634982.8,
       "link": 186074243066.258,
       "dot": 439471141136.469,
       "yfi": 438476474.432611,
       "usd": 2531213770873.31,
       "aed": 9297148180417.65,
       "ars": 2.34924691379265e+15,
       "aud": 3866218944265.98,
       "bdt": 296970874034337,
       "bhd": 952186933899.577,
       "bmd": 2531213770873.31,
       "brl": 14285051726322.2,
       "cad": 3500542084429.24,
       "chf": 2238919329467.94,
       "clp": 2401702231283765,
       "cny": 18352312324339.8,
       "czk": 59082579354216.3,
       "dkk": 17399563460983.1,
       "eur": 2328301550145.02,
       "gbp": 1968972974445.61,
       "gel": 6834277181357.92,
       "hkd": 19760553105765.2,
       "huf": 911831792750546,
       "idr": 41269289002383890,
       "ils": 9247166833298.01,
       "inr": 211919552525582,
       "jpy": 389136149065207,
       "krw": 3505402014869317,
       "kwd": 772926374646.333,
       "lkr": 765824315297725,
       "mmk": 5310486491292206,
       "mxn": 46817332437286.6,
       "myr": 11789128137842.4,
       "ngn": 4195666883114112,
       "nok": 27797625102835.6,
       "nzd": 4298937532038.09,
       "php": 147974777294964,
       "pkr": 703446748666984,
       "pln": 9964682407286.12,
       "rub": 217615674497294,
       "sar": 9496157269511.26,
       "sek": 27373051960978.1,
       "sgd": 3397395123266.15,
       "thb": 90979277349741.8,
       "try": 83486006256778.3,
       "twd": 83056717463666,
       "uah": 103765913804051,
       "vef": 253450434877.544,
       "vnd": 64077676609657640,
       "zar": 46260212286317.2,
       "xdr": 1906239372348.29,
       "xag": 90683947983.0252,
       "xau": 1060401385.03195,
       "bits": 37354432511537,
       "sats": 3735443251153703
     },
     "total_volume": {
       "btc": 1344125.8674726,
       "eth": 27943220.7851032,
       "ltc": 1272078381.85747,
       "bch": 231203082.62944,
       "bnb": 156785403.482492,
       "eos": 158583469414.276,
       "xrp": 150615742181.483,
       "xlm": 894079859063.55,
       "link": 6695516075.59544,
       "dot": 15813505629.5337,
       "yfi": 15777714.5023159,
       "usd": 91080754726.5741,
       "aed": 334539612110.706,
       "ars": 84533034866307,
       "aud": 139118293142.199,
       "bdt": 10685913473647.7,
       "bhd": 34262576151.5331,
       "bmd": 91080754726.5741,
       "brl": 514019521983.194,
       "cad": 125960129749.116,
       "chf": 80563113493.7681,
       "clp": 86420536412596.4,
       "cny": 660371904069.552,
       "czk": 2125970544525.8,
       "dkk": 626089107990.47,
       "eur": 83779357104.6729,
       "gbp": 70849624244.4432,
       "gel": 245918037761.75,
       "hkd": 711044681961.682,
       "huf": 32810475678927.4,
       "idr": 1.48499428717527e+15,
       "ils": 332741131527.876,
       "inr": 7625508760837.86,
       "jpy": 14002299827889.8,
       "krw": 126135004798191,
       "kwd": 27812237101.7973,
       "lkr": 27556683448831.4,
       "mmk": 191087423416353,
       "mxn": 1684629730503.47,
       "myr": 424208615139.019,
       "ngn": 150972829988784,
       "nok": 1000242928158.18,
       "nzd": 154688821404.971,
       "php": 5324581649961.56,
       "pkr": 25312149260486.3,
       "pln": 358559519827.953,
       "rub": 7830472519398.31,
       "sar": 341700563208.819,
       "sek": 984965497764.116,
       "sgd": 122248588994.008,
       "thb": 3273710557695.74,
       "try": 3004079918683.19,
       "twd": 2988632804843.08,
       "uah": 3733812549899.67,
       "vef": 9119915970.77185,
       "vnd": 2.30570930590322e+15,
       "zar": 1664582856388.15,
       "xdr": 68592278819.2998,
       "xag": 3263083710.63802,
       "xau": 38156460.5776036,
       "bits": 1344125867472.6,
       "sats": 134412586747260
     },
     "market_cap_percentage": {
       "btc": 52.824301356755,
       "eth": 15.4899158099318,
       "usdt": 4.5186674060578,
       "bnb": 3.53108397000548,
       "sol": 3.40286522758943,
       "usdc": 1.34871958233766,
       "xrp": 1.33704882868354,
       "steth": 1.26575861085047,
       "doge": 0.755425959293413,
       "ton": 0.652514071591702
     },
     "market_cap_change_percentage_24h_usd": -0.590169077905609,
     "updated_at": 1722166571
   }
 }

 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: {
//            (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        // same as above
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return "\(item.value.asPercentString())"
        }
        return ""
    }
}
