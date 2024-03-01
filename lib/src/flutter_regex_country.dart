class RegexCountryPattern {
  /*
  *
  * Here's a table with the currency codes and symbols: Total 110 plus country support
   Reference:- https://www.eurochange.co.uk/travel/tips/world-currency-abbreviations-symbols-and-codes-travel-money
| Country and Currency                            | Currency Code | Symbol |
|-------------------------------------------------|---------------|--------|
| Albania Lek                                     | ALL           | Lek    |
| Afghanistan Afghani                            | AFN           | ؋      |
| Argentina Peso                                 | ARS           | $      |
| Aruba Guilder                                  | AWG           | ƒ      |
| Australia Dollar                               | AUD           | $      |
| Azerbaijan Manat                               | AZN           | ₼      |
| Bahamas Dollar                                 | BSD           | $      |
| Barbados Dollar                                | BBD           | $      |
| Belarus Ruble                                  | BYN           | Br     |
| Belize Dollar                                  | BZD           | BZ$    |
| Bermuda Dollar                                 | BMD           | $      |
| Bolivia Bolíviano                              | BOB           | $b     |
| Bosnia and Herzegovina Convertible Mark        | BAM           | KM     |
| Botswana Pula                                  | BWP           | P      |
| Bulgaria Lev                                   | BGN           | лв     |
| Brazil Real                                    | BRL           | R$     |
| Brunei Darussalam Dollar                       | BND           | $      |
| Cambodia Riel                                  | KHR           | ៛      |
| Canada Dollar                                  | CAD           | $      |
| Cayman Islands Dollar                          | KYD           | $      |
| Chile Peso                                     | CLP           | $      |
| China Yuan Renminbi                            | CNY           | ¥      |
| Colombia Peso                                  | COP           | $      |
| Costa Rica Colon                               | CRC           | ₡      |
| Cuba Peso                                      | CUP           | ₱      |
| Czech Republic Koruna                          | CZK           | Kč      |
| Denmark Krone                                  | DKK           | kr      |
| Dominican Republic Peso                        | DOP           | RD$    |
| East Caribbean Dollar                          | XCD           | $      |
| Egypt Pound                                    | EGP           | £      |
| El Salvador Colon                              | SVC           | $      |
| Euro Member Countries                         | EUR           | €      |
| Falkland Islands (Malvinas) Pound             | FKP           | £      |
| Fiji Dollar                                    | FJD           | $      |
| Ghana Cedi                                     | GHS           | ¢      |
| Gibraltar Pound                                | GIP           | £      |
| Guatemala Quetzal                              | GTQ           | Q      |
| Guernsey Pound                                 | GGP           | £      |
| Guyana Dollar                                  | GYD           | $      |
| Honduras Lempira                               | HNL           | L      |
| Hong Kong Dollar                               | HKD           | $      |
| Hungary Forint                                 | HUF           | Ft     |
| Iceland Krona                                  | ISK           | kr     |
| India Rupee                                    | INR           | ₹      |
| Indonesia Rupiah                               | IDR           | Rp     |
| Iran Rial                                      | IRR           | ﷼      |
| Isle of Man Pound                              | IMP           | £      |
| Israel Shekel                                  | ILS           | ₪      |
| Jamaica Dollar                                 | JMD           | J$     |
| Japan Yen                                      | JPY           | ¥      |
| Jersey Pound                                   | JEP           | £      |
| Kazakhstan Tenge                               | KZT           | лв     |
| Korea (North) Won                              | KPW           | ₩      |
| Korea (South) Won                              | KRW           | ₩      |
| Kyrgyzstan Som                                 | KGS           | лв     |
| Laos Kip                                       | LAK           | ₭      |
| Lebanon Pound                                  | LBP           | £      |
| Liberia Dollar                                 | LRD           | $      |
| Macedonia Denar                                | MKD           | ден    |
| Malaysia Ringgit                               | MYR           | RM     |
| Mauritius Rupee                                | MUR           | ₨      |
| Mexico Peso                                    | MXN           | $      |
| Mongolia Tughrik                               | MNT           | ₮      |
| Moroccan-dirham                                | MNT           |  د.إ  |
| Mozambique Metical                             | MZN           | MT     |
| Namibia Dollar                                 | NAD           | $      |
| Nepal Rupee                                    | NPR           | ₨      |
| Netherlands Antilles Guilder                   | ANG           | ƒ      |
| New Zealand Dollar                             | NZD           | $      |
| Nicaragua Cordoba                              | NIO           | C$     |
| Nigeria Naira                                  | NGN           | ₦      |
| Norway Krone                                   | NOK           | kr     |
| Oman Rial                                      | OMR           | ﷼      |
| Pakistan Rupee                                 | PKR           | ₨      |
| Panama Balboa                                  | PAB           | B/.    |
| Paraguay Guarani                               | PYG           | Gs     |
| Peru Sol                                       | PEN           | S/.    |
| Philippines Peso                               | PHP           | ₱      |
| Poland Zloty                                   | PLN           | zł     |
| Qatar Riyal                                    | QAR           | ﷼      |
| Romania Leu                                    | RON           | lei    |
| Russia Ruble                                   | RUB           | ₽      |
| Saint Helena Pound                             | SHP           | £      |
| Saudi Arabia Riyal                             | SAR           | ﷼      |
| Serbia Dinar                                   | RSD           | Дин.   |
| Seychelles Rupee                               | SCR           | ₨      |
| Singapore Dollar                               | SGD           | $      |
| Solomon Islands Dollar                         | SBD           | $      |
| Somalia Shilling                               | SOS           | S      |
| South Korean Won                               | KRW           | ₩      |
| South Africa Rand                              | ZAR           | R      |
| Sri Lanka Rupee                                | LKR           | ₨      |
| Sweden Krona                                   | SEK           | kr     |
| Switzerland Franc                              | CHF           | CHF    |
| Suriname Dollar                                | SRD           | $      |
| Syria Pound                                    | SYP           | £      |
| Taiwan New Dollar                              | TWD           | NT$    |
| Thailand Baht                                  | THB           | ฿      |
| Trinidad and Tobago Dollar                     | TTD           | TT$    |
| Turkey Lira                                    | TRY           | ₺      |
| Tuvalu Dollar                                  | TVD           | $      |
| Ukraine Hryvnia                                | UAH           | ₴      |
| UAE-Dirham                                     | AED           |  د.إ  |
| United Kingdom Pound                          | GBP           | £      |
| United States Dollar                           | USD           | $      |
| Uruguay Peso                                   | UYU           | $U     |
| Uzbekistan Som                                 | UZS           | лв     |
| Venezuela Bolívar                              | VEF           | Bs     |
| Viet Nam Dong                                  | VND           | ₫      |
| Yemen Rial                                     | YER           | ﷼      |
| Zimbabwe Dollar                                | ZWD           | Z$     |
  *
  * */
  static String currencySymbolRegex =
      r'^(?:Lek|؋|\$|ƒ|₼|BZ\$|KM|P|лв|R\$|\$|₹|₼|\₡|₱|Kč|kr|RD\$|៛|\$|\$|¥|\$|₨|₱|Kč|kr|RD\$|\$|£|\$|€|£|\$|¢|£|Q|£|GYD|\$|L|\$|Ft|kr|₹|Rp|﷼|£|₪|J\$|¥|лв|₩|₩|лв|₭|£|\$|ден|RM|₨|\$|₮| د.إ|MT|\$|₨|ƒ|\$|C\$|₦|kr|﷼|₨|B/\.|Gs|S/\.|₱|zł|﷼|lei|₽|£|﷼|Дин\.|₨|\$|\$|S|₩|R|₨|kr|CHF|\$|£|NT\$|฿|TT\$|₺|\$|₴| د.إ|£|\$|kr|﷼|Bs|₫|﷼|Z\$)$';
  static String currencyCodePattern =
      r'^(?:ALL|AFN|ARS|AWG|AUD|AZN|BSD|BBD|BYN|BZD|BMD|BOB|BAM|BWP|BGN|BRL|BND|KHR|CAD|KYD|CLP|CNY|COP|CRC|CUP|CZK|DKK|DOP|XCD|EGP|SVC|EUR|FKP|FJD|GHS|GIP|GTQ|GGP|GYD|HNL|HKD|HUF|ISK|INR|IDR|IRR|IMP|ILS|JMD|JPY|JEP|KZT|KPW|KRW|KGS|LAK|LBP|LRD|MKD|MYR|MUR|MXN|MNT|MZN|NAD|NPR|ANG|NZD|NIO|NGN|NOK|OMR|PKR|PAB|PYG|PEN|PHP|PLN|QAR|RON|RUB|SHP|SAR|RSD|SCR|SGD|SBD|SOS|KRW|ZAR|LKR|SEK|CHF|SRD|SYP|TWD|THB|TTD|TRY|TVD|UAH|AED|GBP|USD|UYU|UZS|VEF|VND|YER|ZWD)$';
}
