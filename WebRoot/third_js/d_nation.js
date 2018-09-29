/**
 * Created by linton.cao on 2017/5/11.
 */

var d_nation = {
    'CN':{'c':'中国大陆','e':"China",'code':'86'},
    'HK':{'c':'中国香港','e':"Hong Kong",'code':'852'},
    'MO':{'c':'中国澳门','e':"Macao",'code':'853'},
    'TW':{'c':'中国台湾','e':"Taiwan",'code':'886'},
    'GB':{'c':'英国','e':"Britain",'code':'44'},
    'US':{'c':'美国','e':"United States",'code':'1'},
    'AU':{'c':'澳大利亚','e':"Australia",'code':'61'},
    'JP':{'c':'日本','e':"Japan",'code':'81'},
    'KR':{'c':'韩国','e':"Korea",'code':'82'},
    'SG':{'c':'新加坡','e':"Singapore",'code':'65'},
    'DE':{'c':'德国','e':"Germany",'code':'49'},
    'CA':{'c':'加拿大','e':"Canada",'code':'1'},
    'MY':{'c':'马来西亚','e':"Malaysia",'code':'60'},
    'NZ':{'c':'新西兰','e':"New Zealand",'code':'64'},
    'AL':{'c':'阿尔巴尼亚','e':"Albania",'code':'355'},
    'DZ':{'c':'阿尔及利亚','e':"Algeria",'code':'213'},
    'AF':{'c':'阿富汗','e':"Afghanistan",'code':'93'},
    'AR':{'c':'阿根廷','e':"Argentina",'code':'54'},
    'AK':{'c':'阿拉斯加','e':"Alaska",'code':'1907'},
    'AE':{'c':'阿联酋','e':"The United Arab Emirates",'code':'971'},
    'AW':{'c':'阿鲁巴岛','e':"Aruba",'code':'297'},
    'OM':{'c':'阿曼','e':"Oman",'code':'968'},
    'AZ':{'c':'阿塞拜疆','e':"Azerbaijan",'code':'994'},
    'AC':{'c':'阿森松岛','e':"Ascension",'code':'247'},
    'EG':{'c':'埃及','e':"Egypt",'code':'20'},
    'ET':{'c':'埃塞俄比亚','e':"Ethiopia",'code':'251'},
    'IE':{'c':'爱尔兰','e':"Ireland",'code':'353'},
    'EE':{'c':'爱沙尼亚','e':"Estonia",'code':'372'},
    'AD':{'c':'安道尔共和国','e':"Andorra",'code':'376'},
    'AO':{'c':'安哥拉','e':"Angola",'code':'244'},
    'AT':{'c':'奥地利','e':"Austria",'code':'43'},
    'PK':{'c':'巴基斯坦','e':"Pakistan",'code':'92'},
    'PY':{'c':'巴拉圭','e':"Paraguay",'code':'595'},
    'BL':{'c':'巴勒斯坦','e':"Palestine",'code':'970'},
    'BH':{'c':'巴林','e':"Bahrain",'code':'973'},
    'PA':{'c':'巴拿马','e':"Panama",'code':'507'},
    'BR':{'c':'巴西','e':"Brazil",'code':'55'},
    'BM':{'c':'百慕大群岛','e':"Bermuda",'code':'441'},
    'BG':{'c':'保加利亚','e':"Bulgaria",'code':'359'},
    'BJ':{'c':'贝宁','e':"Benin",'code':'229'},
    'BE':{'c':'比利时','e':"Belgium",'code':'32'},
    'IS':{'c':'冰岛','e':"Iceland",'code':'354'},
    'BA':{'c':'波黑','e':"Bosnia and Herzegovina",'code':'387'},
    'PL':{'c':'波兰','e':"poland",'code':'48'},
    'BO':{'c':'玻利维亚','e':"bolivia",'code':'591'},
    'BZ':{'c':'伯利兹','e':"Belize",'code':'501'},
    'BW':{'c':'博茨瓦纳','e':"botswana",'code':'267'},
    'BT':{'c':'不丹','e':"Bhutan",'code':'975'},
    'BF':{'c':'布基拉法索','e':"Burkina Faso",'code':'226'},
    'BI':{'c':'布隆迪','e':"burundi",'code':'257'},
    'KP':{'c':'朝鲜','e':"North Korea",'code':'850'},
    'GQ':{'c':'赤道几内亚','e':"Equatorial Guinea",'code':'240'},
    'DK':{'c':'丹麦','e':"Denmark",'code':'45'},
    'TL':{'c':'东帝汶','e':"Timor-Leste",'code':'670'},
    'AS':{'c':'东萨摩亚','e':"Eastern Samoa",'code':'684'},
    'TG':{'c':'多哥','e':"Togo",'code':'228'},
    'BY':{'c':'俄罗斯','e':"Russia",'code':'7'},
    'EC':{'c':'厄瓜多尔','e':"Ecuador",'code':'593'},
    'ER':{'c':'厄立特里亚','e':"Eritrea",'code':'291'},
    'FR':{'c':'法国','e':"France",'code':'33'},
    'FO':{'c':'法罗群岛','e':"Faroe Islands",'code':'298'},
    'GF':{'c':'法属圭亚那','e':"French Guiana",'code':'594'},
    'VA':{'c':'梵蒂冈','e':"Vatican",'code':'396'},
    'PH':{'c':'菲律宾','e':"The Philippines",'code':'63'},
    'FJ':{'c':'斐济','e':"Fiji",'code':'679'},
    'FI':{'c':'芬兰','e':"Finland",'code':'358'},
    'CV':{'c':'佛得角','e':"Cape Verde",'code':'238'},
    'FK':{'c':'福克兰群岛','e':"Falkland Islands",'code':'500'},
    'GM':{'c':'冈比亚','e':"Gambia",'code':'220'},
    'CG':{'c':'刚果','e':"Congo",'code':'242'},
    'CO':{'c':'哥伦比亚','e':"Columbia",'code':'57'},
    'CR':{'c':'哥斯达黎加','e':"Costa Rica",'code':'506'},
    'GL':{'c':'格陵兰岛','e':"Greenland",'code':'299'},
    'CU':{'c':'古巴','e':"Cuba",'code':'53'},
    'GP':{'c':'瓜德罗普','e':"Gua de Ropp",'code':'590'},
    'GU':{'c':'关岛','e':"Guam",'code':'671'},
    'GY':{'c':'圭亚那','e':"Guyana",'code':'592'},
    'KZ':{'c':'哈萨克斯坦','e':"Kazakhstan",'code':'7'},
    'HT':{'c':'海地','e':"Haiti",'code':'509'},
    'NL':{'c':'荷兰','e':"Netherlands",'code':'31'},
    'HN':{'c':'洪都拉斯','e':"Honduras",'code':'504'},
    'KI':{'c':'基里巴斯','e':"Kiribati",'code':'686'},
    'DJ':{'c':'吉布提','e':"Djibouti",'code':'253'},
    'KG':{'c':'吉尔吉斯斯坦','e':"Kyrgyzstan",'code':'996'},
    'GN':{'c':'几内亚','e':"Guinea",'code':'224'},
    'GW':{'c':'几内亚比绍','e':"Guinea-Bissau",'code':'245'},
    'GH':{'c':'加纳','e':"Ghana",'code':'233'},
    'GA':{'c':'加蓬','e':"Gabon",'code':'241'},
    'KH':{'c':'柬埔寨','e':"Cambodia",'code':'855'},
    'CZ':{'c':'捷克','e':"Czech",'code':'420'},
    'ZW':{'c':'津巴布韦','e':"zimbabwe",'code':'263'},
    'CM':{'c':'喀麦隆','e':"Cameroon",'code':'237'},
    'QA':{'c':'卡塔尔','e':"Qatar",'code':'974'},
    'CK':{'c':'科克群岛','e':"Cook Islands",'code':'682'},
    'KM':{'c':'科摩罗','e':"Comoros",'code':'269'},
    'KT':{'c':'科特迪瓦','e':"Cote d'Ivoire",'code':'225'},
    'KW':{'c':'科威特','e':"Kuwait",'code':'965'},
    'HR':{'c':'克罗地亚','e':"Croatia",'code':'385'},
    'KE':{'c':'肯尼亚','e':"Kenya",'code':'254'},
    'LV':{'c':'拉脱维亚','e':"Latvia",'code':'371'},
    'LS':{'c':'莱索托','e':"Lesotho",'code':'266'},
    'LA':{'c':'老挝','e':"Laos",'code':'856'},
    'LB':{'c':'黎巴嫩','e':"Lebanon",'code':'961'},
    'LT':{'c':'立陶宛','e':"Lithuania",'code':'370'},
    'LR':{'c':'利比里亚','e':"Liberia",'code':'231'},
    'LY':{'c':'利比亚','e':"Libya",'code':'218'},
    'LI':{'c':'列支敦士登','e':"Liechtenstein",'code':'423'},
    'RE':{'c':'留尼汪岛','e':"Reunion Island",'code':'262'},
    'LU':{'c':'卢森堡','e':"Luxembourg",'code':'352'},
    'RW':{'c':'卢旺达','e':"Rwanda",'code':'250'},
    'RO':{'c':'罗马尼亚','e':"Romania",'code':'40'},
    'MG':{'c':'马达加斯加','e':"Madagascar",'code':'261'},
    'MV':{'c':'马尔代夫','e':"Maldives",'code':'960'},
    'MT':{'c':'马耳他','e':"Malta",'code':'356'},
    'MW':{'c':'马拉维','e':"Malawi",'code':'265'},
    'ML':{'c':'马里','e':"Mali",'code':'223'},
    'MKD':{'c':'马其顿','e':"Macedonia",'code':'389'},
    'MTQ':{'c':'马提尼克','e':"Martinique",'code':'596'},
    'MU':{'c':'毛里求斯','e':"Mauritius",'code':'230'},
    'MR':{'c':'毛里塔尼亚','e':"Mauritania",'code':'222'},
    'MN':{'c':'蒙古','e':"Mongolia",'code':'976'},
    'BD':{'c':'孟加拉国','e':"The People's Republic of Bangladesh",'code':'880'},
    'PE':{'c':'秘鲁','e':"Peru",'code':'51'},
    'MM':{'c':'缅甸','e':"Myanmar",'code':'95'},
    'MD':{'c':'摩尔多瓦','e':"Moldova",'code':'373'},
    'MA':{'c':'摩洛哥','e':"Morocco",'code':'212'},
    'MC':{'c':'摩纳哥','e':"Monaco",'code':'377'},
    'MZ':{'c':'莫桑比克','e':"Mozambique",'code':'258'},
    'MX':{'c':'墨西哥','e':"Mexico",'code':'52'},
    'NA':{'c':'纳米比亚','e':"Namibia",'code':'264'},
    'ZA':{'c':'南非','e':"South Africa",'code':'27'},
    'YU':{'c':'南斯拉夫','e':"Yugoslavia",'code':'381'},
    'NR':{'c':'瑙鲁','e':"Nauru",'code':'674'},
    'NP':{'c':'尼泊尔','e':"Nepal",'code':'977'},
    'NI':{'c':'尼加拉瓜','e':"Nicaragua",'code':'505'},
    'NE':{'c':'尼日尔','e':"Niger",'code':'227'},
    'NG':{'c':'尼日利亚','e':"Nigeria",'code':'234'},
    'NU':{'c':'纽埃岛','e':"Niue",'code':'683'},
    'NO':{'c':'挪威','e':"Norway",'code':'47'},
    'NF':{'c':'诺福克岛','e':"Norfolk Island",'code':'6723'},
    'PT':{'c':'葡萄牙','e':"Portugal",'code':'351'},
    'ST':{'c':'圣多美和普林西比','e':"Sao Tome and Principe",'code':'239'},
    'GE':{'c':'乔治亚','e':"Georgia",'code':'995'},
    'SE':{'c':'瑞典','e':"Sweden",'code':'46'},
    'CH':{'c':'瑞士','e':"Switzerland",'code':'41'},
    'SV':{'c':'萨尔瓦多','e':"Salvatore",'code':'503'},
    'SL':{'c':'塞拉利昂','e':"sierra leone",'code':'232'},
    'SN':{'c':'塞内加尔','e':"Senegal",'code':'221'},
    'CY':{'c':'塞浦路斯','e':"Cyprus",'code':'357'},
    'SC':{'c':'塞舌尔','e':"Seychelles",'code':'248'},
    'SA':{'c':'沙特阿拉伯','e':"Saudi Arabia",'code':'966'},
    'PM':{'c':'圣彼埃尔','e':"San Pierre",'code':'508'},
    'SH':{'c':'圣赫勒拿','e':"Helena",'code':'290'},
    'SM':{'c':'圣马力诺','e':"San Marino",'code':'223'},
    'LK':{'c':'斯里兰卡','e':"Sri Lanka",'code':'94'},
    'SK':{'c':'斯洛伐克','e':"Slovakia",'code':'421'},
    'SI':{'c':'斯洛文尼亚','e':"Slovenia",'code':'386'},
    'SZ':{'c':'斯威士兰','e':"Swaziland",'code':'268'},
    'SD':{'c':'苏丹','e':"Sultan",'code':'249'},
    'SR':{'c':'苏里南','e':"Suriname",'code':'597'},
    'SB':{'c':'所罗门群岛','e':"Solomon Islands",'code':'677'},
    'SO':{'c':'索马里','e':"Somalia",'code':'252'},
    'TJ':{'c':'塔吉克斯坦','e':"Tajikistan",'code':'7'},
    'TH':{'c':'泰国','e':"Thailand",'code':'66'},
    'TZ':{'c':'坦桑尼亚','e':"Tanzania",'code':'255'},
    'TO':{'c':'汤加','e':"Tonga",'code':'676'},
    'TN':{'c':'突尼斯','e':"Tunisia",'code':'216'},
    'TV':{'c':'图瓦卢','e':"Tuvalu",'code':'688'},
    'TR':{'c':'土耳其','e':"Turkey",'code':'90'},
    'TM':{'c':'土库曼斯坦','e':"Turkmenistan",'code':'993'},
    'VU':{'c':'瓦努阿图','e':"Vanuatu",'code':'678'},
    'GT':{'c':'危地马拉','e':"Guatemala",'code':'502'},
    'VE':{'c':'委内瑞拉','e':"Venezuela",'code':'58'},
    'BN':{'c':'文莱','e':"Brunei",'code':'673'},
    'UG':{'c':'乌干达','e':"Uganda",'code':'256'},
    'UA':{'c':'乌克兰','e':"Ukraine",'code':'380'},
    'UY':{'c':'乌拉圭','e':"Uruguay",'code':'598'},
    'UZ':{'c':'乌兹别克斯坦','e':"Uzbekistan",'code':'998'},
    'ES':{'c':'西班牙','e':"Spain",'code':'34'},
    'WS':{'c':'西萨摩亚','e':"Western Samoa",'code':'685'},
    'GR':{'c':'希腊','e':"Greece",'code':'30'},
    'HU':{'c':'匈牙利','e':"Hungary",'code':'36'},
    'SY':{'c':'叙利亚','e':"Syria",'code':'963'},
    'AM':{'c':'亚美尼亚','e':"Armenia",'code':'374'},
    'YE':{'c':'也门','e':"Yemen",'code':'967'},
    'IQ':{'c':'伊拉克','e':"Iraq",'code':'964'},
    'IR':{'c':'伊朗','e':"Iran",'code':'98'},
    'IL':{'c':'以色列','e':"Israel",'code':'972'},
    'IT':{'c':'意大利','e':"Italy",'code':'39'},
    'IN':{'c':'印度','e':"India",'code':'91'},
    'ID':{'c':'印度尼西亚','e':"Indonesia",'code':'62'},
    'JO':{'c':'约旦','e':"Jordan",'code':'962'},
    'VN':{'c':'越南','e':"Vietnam",'code':'84'},
    'ZM':{'c':'赞比亚','e':"Zambia",'code':'260'},
    'ZR':{'c':'扎伊尔','e':"zaire",'code':'243'},
    'TD':{'c':'乍得','e':"Chad",'code':'235'},
    'GI':{'c':'直布罗陀','e':"Gibraltar",'code':'350'},
    'CL':{'c':'智利','e':"Chile",'code':'56'},
    'CF':{'c':'中非','e':"Central African",'code':'236'}
};

var d_specialNation = [
    'CN','HK','MO','TW','GB','US','AU','JP','KR','SG','DE','CA'
];

var d_sortNation = {
    'hot' : ['CN','HK','MO','TW','GB','US','AU','JP','KR','SG','DE','CA'],
    'A'   : ['AL','DZ','AF','AR','AK','AE','AW','OM','AZ','AC','EG','ET','IE','EE','AD','AO','AT'],
    'B'   : ['PK','PY','BL','BH','PA','BR','BM','BG','BJ','BE','IS','BA','PL','BO','BZ','BW','BT','BF','BI'],
    'C'   : ['KP','GQ'],
    'D'   : ['DK','TL','AS','TG'],
    'E'   : ['BY','EC','ER'],
    'F'   : ['FR','FO','GF','VA','PH','FJ','FI','CV','FK'],
    'G'   : ['GM','CG','CO','CR','GL','CU','GP','GU','GY'],
    'H'   : ['KZ','HT','NL','HN'],
    'I'   : [],
    'J'   : ['KI','DJ','KG','GN','GW','GH','GA','KH','CZ','ZW'],
    'K'   : ['CM','QA','CK','KM','KT','KW','HR','KE'],
    'L'   : ['LV','LS','LA','LB','LT','LR','LY','LI','RE','LU','RW','RO'],
    'M'   : ['MG','MV','MT','MW','MY','ML','MKD','MTQ','MU','MR','MN','BD','PE','MM','MD','MA','MC','MZ','MX'],
    'N'   : ['NA','ZA','YU','NR','NP','NI','NE','NG','NU','NO','NF'],
    'O'   : [],
    'P'   : ['PT'],
    'Q'   : ['GE'],
    'R'   : ['SE','CH'],
    'S'   : ['ST','SV','SL','SN','CY','SC','SA','PM','SH','SM','LK','SK','SI','SZ','SD','SR','SB','SO'],
    'T'   : ['TJ','TH','TZ','TO','TN','TV','TR','TM'],
    'U'   : [],
    'V'   : [],
    'W'   : ['VU','GT','VE','BN','UG','UA','UY','UZ'],
    'X'   : ['ES','WS','GR','NZ','HU','SY'],
    'Y'   : ['AM','YE','IQ','IR','IL','IT','IN','ID','JO','VN'],
    'Z'   : ['ZM','ZR','TD','GI','CL','CF']
};