var maxAttachFile = window.cfg.attachment_num['additionattachfile'];
var maxAttachUrl = window.cfg.attachment_num['additionattachlink'];
var maxNum = {};
maxNum = window.cfg.module_num;

var aConfig = {
    'basedetail': {
        'info': {
            'ajax': 'base_detail.php',
            'key': '',
            'type':'1',
            'editclass': 'box mk com',
            'viewclass': 'box mk top_wrap'
        },
        'data': {
            'cname': 'base_name',
            'efirstname': 'base_efirstname',
            'ename': 'base_ename',
            'sex': 'base_sex',
            'workyear': 'base_workyear',
            'mobilephone': 'tele',
            'email': 'email',
            'current_situation': 'base_csituation',
            'area': 'base_area',
            'idtype': 'base_idtype',
            'idcard': 'base_idcard',
            'hukou': 'base_country',
            'marriage': 'base_marriage',
            'politics_status': 'base_politicsstatus',
            'contacttype': 'base_contacttype',
            'othercontacts': 'base_othercontact',
            'stature': 'base_stature',
            'address': 'base_address',
            'zipcode': 'base_zipcode',
            'homepage': 'base_homepage'
        },
        'validate': {
            'name': {
                'id':"base_name",
                'errid':'base_name_warning',
                'checktype':"empty,length",
                'condition':{max: 20},
                'err_1':lang['basic_name_empty'],
                'err_2':lang['basic_name_long'],
                'when':"save"
            },
            'efirstname': {
                'id':"base_efirstname",
                'errid':'base_efirstname_warning',
                'checktype':"empty,length",
                'condition':{max: 20},
                'err_1':lang['basic_efirstname_empty'],
                'err_2':lang['basic_efirstname_long'],
                'when':"save"
            },
            'ename': {
                'id':"base_ename",
                'errid':'base_ename_warning',
                'checktype':"empty,length",
                'condition':{max: 20},
                'err_1':lang['basic_ename_empty'],
                'err_2':lang['basic_ename_long'],
                'when':"save"
            },
            'sex': {
                'id':"base_sex",
                'errid':'base_sex_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['basic_sex_empty'],
                'when':"save"
            },
            'birthday': {
                'id':"base_birthday",
                'errid':'base_birthday_warning',
                'checktype':"empty,dateformat,daterange",
                'condition':{datetype: 'full', mindate: '1946/1/1', maxdate: 'now'},
                'err_1':lang['basic_birthday_empty'],
                'err_2':lang['basic_birthday_format'],
                'err_3':lang['basic_birthday_range'],
                'when':"save"
            },
            'workyear': {
                'id':"base_workyear",
                'errid':'base_workyear_warning',
                'checktype':"empty,dateformat,daterange",
                'condition':{datetype: 'y', mindate: '1946', maxdate: 'now'},
                'err_1':lang['basic_workyear_empty'],
                'err_2':lang['basic_workyear_format'],
                'err_3':lang['basic_workyear_range'],
                'when':"save"
            },
            'mobilephone': {
                'id':"tele",
                'errid':'base_mobile_warning',
                'checktype':"empty,length",
                'condition':{max:20},
                'err_1':lang['basic_mobile_empty'],
                'err_2':lang['basic_mobile_long'],
                'when':"save"
            },
            'email': {
                'id':"email",
                'errid':'base_email_warning',
                'checktype':"empty,length,email",
                'condition':{max:100},
                'err_1':lang['basic_email_empty'],
                'err_2':lang['basic_email_long'],
                'err_3':lang['basic_email_format'],
                'when':"save"
            },
            'idcard': {
                'id':"base_idcard",
                'errid':'base_idcard_warning',
                'checktype':"checkidcard",
                'condition':{},
                'err_1':lang['basic_idcard_verify'],
                'err_2':lang['basic_cardid_verify'],
                'when':"save"
            },
            'othercontact': {
                'id':"base_othercontact",
                'errid':'base_othercontact_warning',
                'checktype':"checkothercontact",
                'condition':{},
                'err_1':lang['basic_homephone_format'],
                'err_2':lang['basic_compphone_format'],
                'err_3':lang['basic_wechat_format'],
                'err_4':lang['basic_qq_format'],
                'when':"save"
            },
            'address': {
                'id':"base_address",
                'errid':'base_address_warning',
                'checktype':"length",
                'condition':{max:100},
                'err_1':lang['basic_address_long'],
                'when':"save"
            },
            'homepage': {
                'id':"base_homepage",
                'errid':'base_homepage_warning',
                'checktype':"length",
                'condition':{max:200},
                'err_1':lang['basic_homepage_long'],
                'when':"save"
            },
            'situation': {
                'id':"base_csituation",
                'errid':'base_csituation_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['basic_csituation_empty'],
                'when':"save"
            },
            'area': {
                'id':"base_area",
                'errid':'base_area_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['basic_area_empty'],
                'when':"save"
            },
            'stature': {
                'id':"base_stature",
                'errid':'base_stature_warning',
                'checktype':"numberint",
                'condition':{},
                'err_1':lang['basic_stature_format'],
                'when':"save"
            },
            'zipcode': {
                'id':"base_zipcode",
                'errid':'base_zipcode_warning',
                'checktype':"numberchar,fixedlength",
                'condition':{flength: 6},
                'err_1':lang['basic_zipcode_format'],
                'err_2':lang['basic_zipcode_format'],
                'when':"save"
            }
        }
    },
    'salary': {
        'info': {
            'ajax': 'salary.php',
            'key': '',
            'type':'1',
            'editclass': 'box b2',
            'viewclass': 'box m1 top_wrap'
        },
        'data': {
            'salary': 'sal_salary',
            'basesalary': 'sal_basesalary',
            'bonus': 'sal_bonus',
            'allowance': 'sal_allowance',
            'stock': 'sal_stock'
        },
        'validate': {
            'salary': {
                'id':"sal_salary",
                'errid':'sal_salary_warning',
                'checktype':'checksalary',
                'condition':{},
                'err_1':lang['sal_salary_format'],
                'when':"save"
            },
            'basesalary': {
                'id':"sal_basesalary",
                'errid':'sal_basesalary_warning',
                'checktype':"checksalary",
                'condition':{},
                'err_1':lang['sal_salary_format'],
                'when':"save"
            },
            'allowance': {
                'id':"sal_allowance",
                'errid':'sal_allowance_warning',
                'checktype':"checksalary",
                'condition':{},
                'err_1':lang['sal_salary_format'],
                'when':"save"
            },
            'bonus': {
                'id':"sal_bonus",
                'errid':'sal_bonus_warning',
                'checktype':"checksalary",
                'condition':{},
                'err_1':lang['sal_salary_format'],
                'when':"save"
            },
            'stock': {
                'id':"sal_stock",
                'errid':'sal_stock_warning',
                'checktype':"checksalary",
                'condition':{},
                'err_1':lang['sal_salary_format'],
                'when':"save"
            }
        }
    },
    'intention': {
        'info': {
            'ajax': 'intention.php',
            'key': '',
            'type':'1',
            'editclass': 'box mk',
            'viewclass': 'box mk top_wrap'
        },
        'data': {
            'seektype': 'int_seektype',
            'expectindustry': 'int_expectindustry',
            'expectfunc': 'int_expectfunc',
            'expectarea': 'int_expectarea',
            'selfintro': 'int_selfintro',
            'entrytime': 'int_entrytime',
            'resumekey': 'int_resumekey',
            'salarytype': 'int_salarytype',
            'expectposition': 'int_position'
        },
        'validate': {
            'inputsalary': {
                'id': 'int_inputsalary',
                'errid': 'int_salary_warning',
                'checktype': 'checkexpecsalary',
                'condition': {},
                'err_1': lang['int_expcsalary_empty'],
                'err_2': lang['int_inputsalary_empty'],
                'err_3': lang['int_salary_compare'],
                'err_4': lang['int_salary_format'],
                'when':"save"
            },
            'expectfunc': {
                'id':"int_expectfunc",
                'errid':'int_expectfunc_warning',
                'checktype':"empty,checkmultiselect",
                'condition':{multitype:"func", maxnum:5},
                'err_1':lang['int_function_empty'],
                'err_2':lang['function_limit'],
                'when':"save"
            },
            'expectposition': {
                'id':"int_position",
                'errid':'int_position_warning',
                'checktype':"empty,length",
                'condition':{max:50},
                'err_1':lang['int_position_empty'],
                'err_2':lang['int_position_limit'],
                'when':"save"
            },
            'expectarea': {
                'id':"int_expectarea",
                'errid':'int_expectarea_warning',
                'checktype':"empty,checkmultiselect",
                'condition':{multitype:"area", maxnum:5},
                'err_1':lang['int_location_empty'],
                'err_2':lang['location_limit'],
                'when':"save"
            },
            'expectind': {
                'id':"int_expectindustry",
                'errid':'int_expectindustry_warning',
                'checktype':"checkmultiselect",
                'condition':{multitype:"ind", maxnum:5},
                'err_1':lang['industry_limit'],
                'when':"save"
            },
            'selfintro': {
                'id':"int_selfintro",
                'errid':'int_selfintro_warning',
                'checktype':"length",
                'condition':{max:2000},
                'err_1':lang['int_selfintro_long'],
                'when':"save"
            },
            'resumekey': {
                'id':"int_resumekey",
                'errid':'int_resumekey_warning',
                'checktype':"checkresumekey",
                'condition':{},
                'err_1': lang['int_keywords_maxnum'],
                'err_2': lang['int_keywords_maxlength'],
                'when':"save"
            }
        }
    },
    'work': {
        'info': {
            'ajax': 'work.php',
            'key': 'workid',
            'type':'work'
        },
        'data': {
            'timefrom': 'work_timefrom',
            'timeto': 'work_timeto',
            'ccompname': 'work_compname',
            'workfunc': 'work_func',
            'workindustry': 'work_industry',
            'cposition': 'work_position',
            'companysize': 'work_companysize',
            'cdepartment': 'work_department',
            'companytype': 'work_companytype',
            'cworkdescribe': 'work_describe',
            'worktype': 'work_type',
            'reportperson': 'work_reportperson',
            'creportboss': 'work_reportboss',
            'cleavereason': 'work_leavereason',
            'cscore': 'work_score'
        },
        'validate': {
            'timefrom': {
                'id':"work_timefrom",
                'errid':'work_timefrom_warning',
                'checktype':"empty,dateformat",
                'condition':{datetype: "ym"},
                'err_1':lang['work_timefrom_empty'],
                'err_2':lang['work_timefrom_format'],
                'when':"save"
            },
            'timeto': {
                'id':"work_timeto",
                'errid':'work_timeto_warning',
                'checktype':"dateformat,daterange,datecompare",
                'condition':{smallid: "work_timefrom", datetype: "ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['work_timeto_format'],
                'err_2':lang['work_timeto_range'],
                'err_3':lang['work_time_compare'],
                'when':"save"
            },
            'compname': {
                'id':"work_compname",
                'errid':'work_compname_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['work_company_empty'],
                'err_2':lang['work_company_long'],
                'when':"save"
            },
            'function': {
                'id':"work_func",
                'errid':'work_func_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['work_function_empty'],
                'when':"save"
            },
            'position': {
                'id':"work_position",
                'errid':'work_position_warning',
                'checktype':"empty,length",
                'condition':{max: 70},
                'err_1':lang['work_position_empty'],
                'err_2':lang['work_position_long'],
                'when':"save"
            },
            'industry': {
                'id':"work_industry",
                'errid':'work_industry_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['work_industry_empty'],
                'when':"save"
            },
            'companytype': {
                'id':"work_companytype",
                'errid':'work_companytype_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['work_companytype_empty'],
                'when':"save"
            },
            'department': {
                'id':"work_department",
                'errid':'work_department_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['work_department_empty'],
                'err_2':lang['work_department_long'],
                'when':"save"
            },
            'describe': {
                'id':"work_describe",
                'errid':'work_describe_warning',
                'checktype':"empty,length",
                'condition':{max: 2000},
                'err_1':lang['work_jobdescribe_empty'],
                'err_2':lang['work_jobdescribe_long'],
                'when':"save"
            },
            'reportboss': {
                'id':"work_reportboss",
                'errid':'work_reportboss_warning',
                'checktype':"length",
                'condition':{max: 50},
                'err_1':lang['work_reportto_long'],
                'when':"save"
            },
            'reportperson': {
                'id':"work_reportperson",
                'errid':'work_reportperson_warning',
                'checktype':"numberint",
                'condition':{},
                'err_1':lang['work_reportperson_format'],
                'when':"save"
            },
            'leavereason': {
                'id':"work_leavereason",
                'errid':'work_leavereason_warning',
                'checktype':"length",
                'condition':{max: 200},
                'err_1':lang['work_leavereason_long'],
                'when':"save"
            },
            'score': {
                'id':"work_score",
                'errid':'work_score_warning',
                'checktype':"length",
                'condition':{max: 2000},
                'err_1':lang['work_score_long'],
                'when':"save"
            }
        }
    },
    'project': {
        'info': {
            'ajax': 'project.php',
            'key': 'projectid',
            'type':'project'
        },
        'data': {
            'starttime': 'pro_starttime',
            'endtime': 'pro_endtime',
            'cprojectname': 'pro_name',
            'cdescribe': 'pro_describe',
            'cfunction': 'pro_function',
            'ccompname': 'pro_compname'
        },
        'validate': {
            'starttime': {
                'id':"pro_starttime",
                'errid':'pro_starttime_warning',
                'checktype':"empty,dateformat",
                'condition':{datetype: "ym"},
                'err_1':lang['pro_timefrom_empty'],
                'err_2':lang['pro_timefrom_format'],
                'when':"save"
            },
            'endtime': {
                'id':"pro_endtime",
                'errid':'pro_endtime_warning',
                'checktype':"dateformat,daterange,datecompare",
                'condition':{smallid: "pro_starttime", datetype: "ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['pro_timeto_format'],
                'err_2':lang['pro_timeto_range'],
                'err_3':lang['pro_time_compare'],
                'when':"save"
            },
            'name': {
                'id':"pro_name",
                'errid':'pro_name_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['pro_name_empty'],
                'err_2':lang['pro_name_long'],
                'when':"save"
            },
            'describe': {
                'id':"pro_describe",
                'errid':'pro_describe_warning',
                'checktype':"empty,length",
                'condition':{max: 2000},
                'err_1':lang['pro_describe_empty'],
                'err_2':lang['pro_describe_long'],
                'when':"save"
            },
            'function': {
                'id':"pro_function",
                'errid':'pro_function_warning',
                'checktype':"length",
                'condition':{max: 2000},
                'err_1':lang['pro_duty_long'],
                'when':"save"
            }
        }
    },
    'education': {
        'info': {
            'ajax': 'education.php',
            'key': 'eduid',
            'type':'education'
        },
        'data': {
            'timefrom': 'edu_timefrom',
            'timeto': 'edu_timeto',
            'cschoolname': 'edu_schoolname',
            'major': 'edu_major',
            'cmajordes': 'edu_majordes',
            'degree': 'edu_degree',
            'cdescribe': 'edu_describe',
            'isoverseas': 'edu_isoverseas',
            'isfulltime': 'edu_isfulltime'
        },
        'validate': {
            'starttime': {
                'id':"edu_timefrom",
                'errid':'edu_timefrom_warning',
                'checktype':"empty,dateformat,daterange",
                'condition':{datetype: "ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['edu_timefrom_empty'],
                'err_2':lang['edu_timefrom_format'],
                'err_3':lang['edu_timefrom_range'],
                'when':"save"
            },
            'endtime': {
                'id':"edu_timeto",
                'errid':'edu_timeto_warning',
                'checktype':"dateformat,datecompare",
                'condition':{smallid: "edu_timefrom",  datetype: "ym"},
                'err_1':lang['edu_timeto_format'],
                'err_2':lang['edu_time_compare'],
                'when':"save"
            },
            'schoolname': {
                'id':"edu_schoolname",
                'errid':'edu_schoolname_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['edu_schoolname_empty'],
                'err_2':lang['edu_schoolname_long'],
                'when':"save"
            },
            'degree': {
                'id':"edu_degree",
                'errid':'edu_degree_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['edu_degree_empty'],
                'when':"save"
            },
            'majordes': {
                'id':"edu_majordes",
                'errid':'edu_majordes_warning',
                'checktype':"checkSelectedMajor,selfdefinemajor,length",
                'condition':{secid:'edu_major',max: 50,degreeid:'edu_degree'},
                'err_1':lang['edu_major_empty'],
                'err_2':lang['edu_majordes_empty'],
                'err_3':lang['edu_major_long'],
                'when':"save"
            },
            'describe': {
                'id':"edu_describe",
                'errid':'edu_describe_warning',
                'checktype':"length",
                'condition':{max: 2000},
                'err_1':lang['edu_majordescribe_long'],
                'when':"save"
            }
        }
    },
    'schoolaward': {
        'info': {
            'ajax': 'schoolaward.php',
            'key': 'bonusid',
            'type':'schoolaward'
        },
        'data': {
            'bonustime': 'bonus_time',
            'cbonusname': 'bonus_name',
            'cbonusclass': 'bonus_class'
        },
        'validate': {
            'bonustime': {
                'id':"bonus_time",
                'errid':'bonus_time_warning',
                'checktype':"empty,dateformat,daterange",
                'condition':{datetype: "ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['saward_time_empty'],
                'err_2':lang['saward_time_format'],
                'err_3':lang['saward_time_range'],
                'when':"save"
            },
            'bonusname': {
                'id':"bonus_name",
                'errid':'bonus_name_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['saward_name_empty'],
                'err_2':lang['saward_name_long'],
                'when':"save"
            },
            'bonusclass': {
                'id':"bonus_class",
                'errid':'bonus_class_warning',
                'checktype':"length",
                'condition':{max: 50},
                'err_1':lang['saward_class_long'],
                'when':"save"
            }
        }
    },
    'schooljob': {
        'info': {
            'ajax': 'schooljob.php',
            'key': 'practiceid',
            'type':'schooljob'
        },
        'data': {
            'starttime': 'prac_starttime',
            'endtime': 'prac_endtime',
            'cname': 'prac_name',
            'cdescribe': 'prac_describe'
        },
        'validate': {
            'starttime': {
                'id':"prac_starttime",
                'errid':'prac_starttime_warning',
                'checktype':"empty,dateformat",
                'condition':{datetype: "ym"},
                'err_1':lang['sjob_timefrom_empty'],
                'err_2':lang['sjob_timefrom_format'],
                'when':"save"
            },
            'endtime': {
                'id':"prac_endtime",
                'errid':'prac_endtime_warning',
                'checktype':"dateformat,daterange,datecompare",
                'condition':{smallid: "prac_starttime", datetype: "ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['sjob_timeto_format'],
                'err_2':lang['sjob_timeto_range'],
                'err_3':lang['sjob_time_compare'],
                'when':"save"
            },
            'pracname': {
                'id':"prac_name",
                'errid':'prac_name_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['sjob_name_empty'],
                'err_2':lang['sjob_name_long'],
                'when':"save"
            },
            'describe': {
                'id':"prac_describe",
                'errid':'prac_describe_warning',
                'checktype':"length",
                'condition':{max: 2000},
                'err_1':lang['sjob_describe_long'],
                'when':"save"
            }
        }
    },
    'skilllanguage': {
        'info': {
            'ajax': 'skilllanguage.php',
            'key': 'itskillid',
            'type':'skilllanguage'
        },
        'data': {
            'ittype': 'skill_type',
            'ability': 'skill_ability',
            'skillsname': 'skill_name'
        },
        'validate': {
            'skilltype': {
                'id':"skill_type",
                'errid':'skill_type_warning',
                'checktype':"emptyboth",
                'condition':{secid: "skill_name"},
                'err_1':lang['skill_name_empty'],
                'err_2':lang['skill_name_repet'],
                'when':"save"
            },
            'skillname': {
                'id':"skill_name",
                'errid':'skill_name_warning',
                'checktype':"length",
                'condition':{max: 50},
                'err_1':lang['skill_inputname_long'],
                'when':"save"
            },
            'skillability': {
                'id':"skill_ability",
                'errid':'skill_ability_warning',
                'checktype':"empty",
                'condition':{},
                'err_1':lang['skill_ability_empty'],
                'when':"save"
            }
        }
    },
    'skillcertification': {
        'info': {
            'ajax': 'skillcertification.php',
            'key': 'certid',
            'type':'skillcertification'
        },
        'data': {
            'certlist': 'cert_nameid',
            'certname': 'cert_name',
            'getdate': 'cert_getdate',
            'score': 'cert_score'
        },
        'validate': {
            'certgetdate': {
                'id':"cert_getdate",
                'errid':'cert_getdate_warning',
                'checktype':"empty,dateformat,daterange",
                'condition':{datetype:"ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['cer_time_empty'],
                'err_2':lang['cer_time_format'],
                'err_3':lang['cer_time_range'],
                'when':"save"
            },
            'certnameid': {
                'id':"cert_nameid",
                'errid':'cert_nameid_warning',
                'checktype':"emptyboth,length",
                'condition':{secid: "cert_name"},
                'err_1':lang['cer_name_empty'],
                'err_2':lang['cer_name_repet'],
                'when':"save"
            },
            'certname': {
                'id':"cert_name",
                'errid':'cert_name_warning',
                'checktype':"length",
                'condition':{max: 50},
                'err_1':lang['cer_inputname_long'],
                'when':"save"
            },
            'certscore': {
                'id':"cert_score",
                'errid':'cert_score_warning',
                'checktype':"length",
                'condition':{max: 20},
                'err_1':lang['cert_score_long'],
                'when':"save"
            }
        }
    },
    'skilltrain': {
        'info': {
            'ajax': 'skilltrain.php',
            'key': 'trainid',
            'type':'skilltrain'
        },
        'data': {
            'timefrom': 'train_timefrom',
            'timeto': 'train_timeto',
            'ctrainname': 'train_name',
            'ctrainplace': 'train_place',
            'ctrainlesson': 'train_lesson',
            'cdescribe': 'train_describe'
        },
        'validate': {
            'starttime': {
                'id':"train_timefrom",
                'errid':'train_timefrom_warning',
                'checktype':"empty,dateformat",
                'condition':{datetype: "ym"},
                'err_1':lang['train_timefrom_empty'],
                'err_2':lang['train_timefrom_format'],
                'when':"save"
            },
            'endtime': {
                'id':"train_timeto",
                'errid':'train_timeto_warning',
                'checktype':"dateformat,daterange,datecompare",
                'condition':{smallid: "train_timefrom", datetype: "ym", mindate:"1946/1", maxdate:"now"},
                'err_1':lang['train_timeto_format'],
                'err_2':lang['train_timeto_range'],
                'err_3':lang['train_time_compare'],
                'when':"save"
            },
            'trainlesson': {
                'id':"train_lesson",
                'errid':'train_lesson_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['train_lesson_empty'],
                'err_2':lang['train_lesson_long'],
                'when':"save"
            },
            'trainname': {
                'id':"train_name",
                'errid':'train_name_warning',
                'checktype':"empty,length",
                'condition':{max: 50},
                'err_1':lang['train_organization_empty'],
                'err_2':lang['train_organization_long'],
                'when':"save"
            },
            'trainplace': {
                'id':"train_place",
                'errid':'train_place_warning',
                'checktype':"length",
                'condition':{max: 20},
                'err_1':lang['train_place_long'],
                'when':"save"
            },
            'traindescribe': {
                'id':"train_describe",
                'errid':'train_describe_warning',
                'checktype':"length",
                'condition':{max: 2000},
                'err_1':lang['train_describe_long'],
                'when':"save"
            }
        }
    },
    'additionquiz': {
        'info': {
            'ajax': 'additionquiz.php',
            'key': '',
            'type':'additionquiz'
        },
        'data': {
        },
        'validate': {
            
        }
    },
    'additionattach': {
        'info': {
            'ajax': 'additionattach.php',
            'key': 'attachid',
            'type':'additionattach'
        },
        'data': {
        },
        'validate': {
            
        }
    },
    'additionother': {
        'info': {
            'ajax': 'additionother.php',
            'key': 'inforid',
            'type':'additionother'
        },
        'data': {
            'inforlist': 'topic_select',
            'inforname': 'topic_input',
            'describe': 'topic_description'
        },
        'validate': {
            'topicselect': {
                'id':"topic_select",
                'errid':'topic_select_warning',
                'checktype':"emptyboth",
                'condition':{secid: "topic_input"},
                'err_1':lang['other_name_empty'],
                'when':"save"
            },
            'topicinput': {
                'id':"topic_input",
                'errid':'topic_input_warning',
                'checktype':"length",
                'condition':{max: 50},
                'err_1':lang['other_name_long'],
                'when':"save"
            },
            'topicdescription': {
                'id':"topic_description",
                'errid':'topic_description_warning',
                'checktype':"empty,length",
                'condition':{max: 2000},
                'err_1':lang['other_content_empty'],
                'err_2':lang['other_content_long'],
                'when':"save"
            }
        }
    }
}

function bindClickEvent(sModule, sEdit, sLang)
{
    bAdd = checkNumofEachModule("checkmodulenum");
    $('input, textarea').placeholder({customClass:'my-placeholder'});
    
    switch(sModule)
    {
        case 'basedetail':
            $("#base_sex_div").switchselection({
                'hidden_id'                 :'base_sex',
                'data'                      :{
                                                "base_sex_0":{
                                                    "k": "0",
                                                    "v": lang['male']
                                                }, 
                                                'base_sex_1':{
                                                    "k": "1",
                                                    "v": lang['female']
                                                }
                                            },
                'afterClick'                :sexSwitchChange
            });
            
            $('#base_birthday_calendar').calendarSelect({
                'id'                                :'base_birthday_calendar',
                'input_id'                          :'base_birthday_input',
                'hidden_id'                         :'base_birthday',
                'div_id'                            :'base_birthday_div',   
                'type'                              :'3',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'future_select'                     :'0',
                'show_pre_yearpage'                 :'1',
                'language'                : sLang
            });
            
            $('#base_workyear_calendar').calendarSelect({
                'id'                                :'base_workyear_calendar',
                'input_id'                          :'base_workyear_input',
                'hidden_id'                         :'base_workyear',
                'div_id'                            :'base_workyear_div',   
                'type'                              :'1',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'1',
                'language'                : sLang
            });
            
            $('#base_csituation_list').selectionlist({
                'id'                      :'base_csituation_list',
                'hidden_id'               :'base_csituation',
                'data'                    :d_jobstatus
            });
            
            $('#base_marriage_list').selectionlist({
                'id'                      :'base_marriage_list',
                'hidden_id'               :'base_marriage',
                'data'                    :d_marriage
            });
            
            $('#base_idtype_list').selectionlist({
                'id'                      :'base_idtype_list',
                'hidden_id'               :'base_idtype',
                'data'                    :d_card,
                'default_selection'       :'0'
            });
            
            $('#base_politicsstatus_list').selectionlist({
                'id'                      :'base_politicsstatus_list',
                'hidden_id'               :'base_politicsstatus',
                'data'                    :d_politics
            });
            
            $('#base_contacttype_list').selectionlist({
                'id'                      :'base_contacttype_list',
                'hidden_id'               :'base_contacttype',
                'data'                    :d_othercontact_type,
                'default_selection'       : '00',
                'afterClick'              :otherContentChange
            });
            
            $('#base_country_click').areaLayer({
                'id'                      : 'base_country_click',
                'text_id'                 : 'base_country_input',
                'code_id'                 : 'base_country',
                'layer_id'                : 'base_country_layer',
                'data_map'                : oCountryM,
                'data_navigation'         : aCountryN,
                'data_parent_click'       : true,
                'special_type'            : '1',
                'language'                : sLang
            });
            
            $('#base_area_click').areaLayer({
                'id'                      : 'base_area_click',
                'text_id'                 : 'base_area_input',
                'code_id'                 : 'base_area',
                'layer_id'                : 'base_area_layer',
                'language'                : sLang
            });
            
            $('#base_area_input').areaAssociation({
                'id'                      : 'base_area_input',
                'text_id'                 : 'base_area_input',
                'code_id'                 : 'base_area',
                'association_id'          : 'base_area_list',
                'float_index_id'          : 'base_area_index',
                'float_on_id'             : 'base_area_div',
                'language'                : sLang
            });
            
            $('#base_country_input').areaAssociation({
                'id'                      : 'base_country_input', 
                'text_id'                 : 'base_country_input',
                'code_id'                 : 'base_country',
                'association_id'          : 'base_country_list',
                'float_index_id'          : 'base_country_index',
                'float_on_id'             : 'base_country_div',
                'data_child_type'         : '2',
                'language'                : sLang
            });
            break;
        case 'salary':
            break;
        case 'intention':
            $("#int_salarytype_list").selectionlist({
                'id'                      :'int_salarytype_list',
                'hidden_id'               :'int_salarytype',
                'data'                    :d_salary_type,
                'default_selection'       :'4',
                'afterClick'              :changeSalaryType
            });
            $("#int_salary_selfdefine").click(function(){
                $("#int_salaryselect_list").find("input").val("");
                $("#int_inputsalary").val("");
                if($(this).text() == lang['int_salaryselfinput'])
                {
                    $("#int_inputsalarydiv_select").hide();
                    $("#int_inputsalarydiv_minmax").show();
                    $("#int_salarymin, #int_salarymax").placeholder({customClass:'my-placeholder'});
                    $(this).text(lang['int_salarycancelselfinput']);
                }
                else
                {
                    $("#int_salarymin").val("");
                    $("#int_salarymax").val("");
                    $("#int_inputsalarydiv_minmax").hide();
                    $("#int_inputsalarydiv_select").show();
                    $(this).text(lang['int_salaryselfinput']);
                }
            });
            switch($("#int_salarytype").val())
            {
                case "4":
                    $('#int_salaryselect_list').selectionlist({
                        'id'                      :'int_salaryselect_list',
                        'hidden_id'               :'int_inputsalary',
                        'data'                    :d_yearsal
                    });
                    break;
                case "1":
                    $('#int_salaryselect_list').selectionlist({
                        'id'                      :'int_salaryselect_list',
                        'hidden_id'               :'int_inputsalary',
                        'data'                    :d_saltype
                    });
                    break;
                default:
                    $("#int_salary_selfdefine").hide();
                    break;
            }
            
            $('#int_resumekey_input').personKeyVendorsAssociation({
                'id'                      : 'int_resumekey_input',
                'text_id'                 : 'int_resumekey_input',
                'under_id'                : 'int_resumekey_under',
                'code_id'                 : 'int_resumekey',
                'append_id'               : 'int_resumekey_add',
                'association_id'          : 'int_resumekey_list',
                'float_index_id'          : 'int_resumekey_index',
                'float_on_id'             : 'int_resumekey_div',
                'language'                : sLang
            });
            
            $('#int_expectarea_click').areaLayer({
                'id'                        : 'int_expectarea_click',
                'code_id'                   : 'int_expectarea',
                'layer_id'                  : 'int_expectarea_multiple_under_layer_id',
                'under_id'                  : 'int_expectarea_under',
                'data_multiple'             : true,
                'save_type'                 : '2',
                'data_map'                  : {},
                'language'                  : sLang
            });
            
            $('#int_expectarea_input').areaAssociation({
                'id'                        : 'int_expectarea_input',
                'text_id'                   : 'int_expectarea_input',
                'code_id'                   : 'int_expectarea',
                'under_id'                  : 'int_expectarea_under',
                'association_id'            : 'int_expectarea_list',
                'float_index_id'            : 'int_expectarea_index',
                'float_on_id'               : 'int_expectarea_div',
                'save_type'                 : '2',
                'data_multiple'             : true,
                'data_child_type'           : '3',
                'language'                  : sLang
            });
            
            $('#int_expectindustry_click').indtypeLayer({
                'id'                        : 'int_expectindustry_click',
                'code_id'                   : 'int_expectindustry',
                'layer_id'                  : 'int_expectindustry_multiple_under_layer_id',
                'under_id'                  : 'int_expectindustry_under',
                'save_type'                 : '2',
                'data_multiple'             : true,
                'language'                  : sLang
            });
            
            $('#int_expectindustry_input').indtypeAssociation({
                'id'                      : 'int_expectindustry_input',
                'text_id'                 : 'int_expectindustry_input',
                'code_id'                 : 'int_expectindustry',
                'under_id'                : 'int_expectindustry_under',
                'association_id'          : 'int_expectindustry_list',
                'float_index_id'          : 'int_expectindustry_index',
                'float_on_id'             : 'int_expectindustry_div',
                'save_type'               : '2',
                'data_multiple'           : true,
                'language'                : sLang
            });
            
            $('#int_expectfunc_click').funtypeLayer({
                'id'                        : 'int_expectfunc_click',
                'code_id'                   : 'int_expectfunc',
                'under_id'                  : 'int_expectfunc_under',
                'layer_id'                  : 'int_expectfunc_layer',
                'save_type'                 : '2',
                'data_multiple'             : true,
                'language'                  : sLang
            });
            
            $('#int_expectfunc_input').funtypeAssociation({
                'id'                      : 'int_expectfunc_input',
                'text_id'                 : 'int_expectfunc_input',
                'code_id'                 : 'int_expectfunc',
                'under_id'                : 'int_expectfunc_under',
                'association_id'          : 'int_expectfunc_list',
                'float_index_id'          : 'int_expectfunc_index',
                'float_on_id'             : 'int_expectfunc_div',
                'data_length'             : '1',
                'data_parent_click'       : true,
                'save_type'               : '2',
                'data_multiple'           : true,
                'language'                : sLang
            });
            
            $("#int_entrytime_list").selectionlist({
                'id'                        :'int_entrytime_list',
                'hidden_id'                 :'int_entrytime',
                'data'                      :d_entrytime
            });
            
            $("#int_seektype_list").selectionlist({
                'id'                        :'int_seektype_list',
                'hidden_id'                 :'int_seektype',
                'data'                      :d_jobterm
            });
            
            $("#int_expectarea_under>span.ttag").click(function(){
                var key = $(this).attr("data-value");
                $("#int_expectarea").val($("#int_expectarea").val().replace(key + ",", ""));
                $("#int_expectarea").val($("#int_expectarea").val().replace("," + key, ""));
                $("#int_expectarea").val($("#int_expectarea").val().replace(key, ""));
                $(this).remove();
            });
            $("#int_expectindustry_under>span.ttag").click(function(){
                var key = $(this).attr("data-value");
                $("#int_expectindustry").val($("#int_expectindustry").val().replace(key + ",", ""));
                $("#int_expectindustry").val($("#int_expectindustry").val().replace("," + key, ""));
                $("#int_expectindustry").val($("#int_expectindustry").val().replace(key, ""));
                $(this).remove();
            });
            $("#int_expectfunc_under>span.ttag").click(function(){
                var key = $(this).attr("data-value");
                $("#int_expectfunc").val($("#int_expectfunc").val().replace(key + ",", ""));
                $("#int_expectfunc").val($("#int_expectfunc").val().replace("," + key, ""));
                $("#int_expectfunc").val($("#int_expectfunc").val().replace(key, ""));
                $(this).remove();
            });
            $("#int_resumekey_under>span.ttag").click(function(){
                var key = $(this).attr("data-value");
                $("#int_resumekey").val($("#int_resumekey").val().replace(key + " ", ""));
                $("#int_resumekey").val($("#int_resumekey").val().replace(" " + key, ""));
                $("#int_resumekey").val($("#int_resumekey").val().replace(key, ""));
                $(this).remove();
            });
            if(sLang == "c")
            {
                $('#int_position').jobVendorsAssociation({
                    'id'                      : 'int_position',
                    'text_id'                 : 'int_position',
                    'code_id'                 : 'int_position',
                    'association_id'          : 'int_position_list',
                    'float_index_id'          : 'int_position_index',
                    'float_on_id'             : 'int_position_div',
                    'save_type'               : '1',
                    'language'                : sLang
                });
            }
            break;
        case 'work':
            $('#work_timefrom_calendar').calendarSelect({
                'id'                                :'work_timefrom_calendar',
                'input_id'                          :'work_timefrom_input',
                'hidden_id'                         :'work_timefrom',
                'div_id'                            :'work_timefrom_div',   
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                : sLang
            });
            
            $('#work_timeto_calendar').calendarSelect({
                'id'                                :'work_timeto_calendar',
                'input_id'                          :'work_timeto_input',
                'hidden_id'                         :'work_timeto',
                'div_id'                            :'work_timeto_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'1',
                'noworkexp_show'                    :'0',
                'language'                : sLang
            });
            
            var copyFuncName = function(sStr)
            {
                if($("#work_position").val() == "")
                {
                    $("#work_position").val($("#work_func_input").val());
                }
            }
            
            if(sLang == "c")
            {
                $("#work_compname").companyVendorsAssociation({
                    'id'                        : 'work_compname',
                    'text_id'                   : 'work_compname',
                    'code_id'                   : 'work_compname',
                    'association_id'            : 'work_compname_list',
                    'save_type'                 : '1',
                    'float_index_id'          : 'work_compname_index',
                    'float_on_id'             : 'work_compname_div',
                    'language'                  : sLang
                });
            }
            
            $('#work_func_click').funtypeLayer({
                'id'                        : 'work_func_click',
                'code_id'                   : 'work_func',
                'text_id'                   : 'work_func_input',
                'layer_id'                  : 'work_func_layer',
                'layer_after_close'         : copyFuncName,
                'data_parent_click'         : false,
                'language'                  : sLang
            });
            
            $('#work_func_input').funtypeAssociation({
                'id'                      : 'work_func_input',
                'text_id'                 : 'work_func_input',
                'code_id'                 : 'work_func',
                'association_id'          : 'work_func_list',
                'float_index_id'          : 'work_func_index',
                'float_on_id'             : 'work_func_div',
                'after_close'             : copyFuncName,
                'data_parent_click'       : false,
                'language'                : sLang
            });
            
            $('#work_industry_click').indtypeLayer({
                'id'                        : 'work_industry_click',
                'code_id'                   : 'work_industry',
                'text_id'                   : 'work_industry_input',
                'layer_id'                  : 'work_industry_layer',
                'language'                  : sLang
            });
            
            $('#work_industry_input').indtypeAssociation({
                'id'                      : 'work_industry_input',
                'text_id'                 : 'work_industry_input',
                'code_id'                 : 'work_industry',
                'association_id'          : 'work_industry_list',
                'float_index_id'          : 'work_industry_index',
                'float_on_id'             : 'work_industry_div',
                'language'                : sLang
            });
            
            if(sLang == "c")
            {
                $('#work_position').jobVendorsAssociation({
                    'id'                      : 'work_position',
                    'text_id'                 : 'work_position',
                    'code_id'                 : 'work_position',
                    'association_id'          : 'work_position_list',
                    'float_index_id'          : 'work_position_index',
                    'float_on_id'             : 'work_position_div',
                    'save_type'      : '1',
                    'language'                : sLang
                });
            }
            
            $("#work_companysize_list").selectionlist({
                'id'                        :'work_companysize_list',
                'hidden_id'                 :'work_companysize',
                'data'                      :d_companysize
            });
            
            $("#work_companytype_list").selectionlist({
                'id'                        :'work_companytype_list',
                'hidden_id'                 :'work_companytype',
                'data'                      :d_cotype
            });
            
            $("#work_type_div").switchselection({
                'hidden_id'                 :'work_type',
                'data'                      :{
                                                "work_type_0":{
                                                    "k": "0",
                                                    "v": lang['fulltime']
                                                },
                                                'work_type_1':{
                                                    "k": "1",
                                                    "v": lang['parttime']
                                                }
                                            }
            });
            
            $("#work_isoverseas_div").switchselection({
                'hidden_id'                 :'work_isoverseas',
                'default_selection'         :'0',
                'data'                      :{
                                                "work_isoverseas_1":{
                                                    "k": "1",
                                                    "v": lang['yes']
                                                }, 
                                                'work_isoverseas_0':{
                                                    "k": "0",
                                                    "v": lang['no']
                                                }
                                            }
            });
            break;
        case 'project':
            if(typeof aCompanyInfo != "undefined")
            {
                $("#pro_compname_list").selectionlist({
                    'id'                        :'pro_compname_list',
                    'hidden_id'                 :'pro_compname',
                    'showHiddenValue'           :'0',
                    'pleaseselect'              :'1',
                    'pleaseselect_txt'          :lang["int_nocompany"],
                    'data'                      :aCompanyInfo
                });
            }
            
            $('#pro_starttime_calendar').calendarSelect({
                'id'                                :'pro_starttime_calendar',
                'input_id'                          :'pro_starttime_input',
                'hidden_id'                         :'pro_starttime',
                'div_id'                            :'pro_starttime_div',
                'type'                              :'2',
                'title_show'                        :'1', 
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                : sLang
            });
            
            $('#pro_endtime_calendar').calendarSelect({
                'id'                                :'pro_endtime_calendar',
                'input_id'                          :'pro_endtime_input',
                'hidden_id'                         :'pro_endtime',
                'div_id'                            :'pro_endtime_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'1',
                'noworkexp_show'                    :'0',
                'language'                : sLang
            });
            break;
        case 'education':
            $('#edu_timefrom_calendar').calendarSelect({
                'id'                                :'edu_timefrom_calendar',
                'input_id'                          :'edu_timefrom_input',
                'hidden_id'                         :'edu_timefrom',
                'div_id'                            :'edu_timefrom_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                : sLang
            });
            
            $('#edu_timeto_calendar').calendarSelect({
                'id'                                :'edu_timeto_calendar',
                'input_id'                          :'edu_timeto_input',
                'hidden_id'                         :'edu_timeto',
                'div_id'                            :'edu_timeto_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'1',
                'noworkexp_show'                    :'0',
                'last_year_click'                   :5,
                'language'                          : sLang
            });
            
            if(sLang == "c")
            {
                $('#edu_schoolname').schoolVendorsAssociation({
                    'id'                      : 'edu_schoolname',
                    'text_id'                 : 'edu_schoolname',
                    'code_id'                 : 'edu_schoolname',
                    'association_id'          : 'edu_schoolname_list',
                    'float_index_id'          : 'edu_schoolname_index',
                    'float_on_id'             : 'edu_schoolname_div',
                    'language'                : sLang
                });
            }
            
            $("#edu_degree_list").selectionlist({
                'id'                        :'edu_degree_list',
                'hidden_id'                 :'edu_degree',
                'data'                      :d_degree
            });
            
            $('#edu_major_click').majorLayer({
                'id'                        : 'edu_major_click',
                'code_id'                   : 'edu_major',
                'text_id'                   : 'edu_major_input',
                'layer_id'                  : 'edu_major_layer',
                'layer_after_close'         : copyMajorName,
                'data_parent_click'         : false,
                'self_define_text_id'       : 'edu_majordes',
                'self_define'               : '1',
                'language'                  : sLang
            });
            
            $('#edu_major_input').majorAssociation({
                'id'                      : 'edu_major_input',
                'text_id'                 : 'edu_major_input',
                'code_id'                 : 'edu_major',
                'association_id'          : 'edu_major_list',
                'float_index_id'          : 'edu_major_index',
                'float_on_id'             : 'edu_major_div',
                'data_parent_click'       : false,
                'after_close'             : copyMajorName,
                'self_define_text_id'     : 'edu_majordes',
                'self_define'             : '1',
                'language'                : sLang
            });
            
            $("#edu_isoverseas_div").switchselection({
                'hidden_id'                 :'edu_isoverseas',
                'default_selection'         :'0',
                'data'                      :{
                                                "edu_isoverseas_1":{
                                                    "k": "1",
                                                    "v": lang['yes']
                                                }, 
                                                'edu_isoverseas_0':{
                                                    "k": "0",
                                                    "v": lang['no']
                                                }
                                            }
            });
            
            questionMarkSet("#education_question");
            break;
        case 'schoolaward':
            $('#bonus_time_calendar').calendarSelect({
                'id'                                :'bonus_time_calendar',
                'input_id'                          :'bonus_time_input',
                'hidden_id'                         :'bonus_time',
                'div_id'                            :'bonus_time_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                         :sLang
            });
            break;
        case 'schooljob':
            $("#prac_starttime_calendar").calendarSelect({
                'id'                                :'prac_starttime_calendar',
                'input_id'                          :'prac_starttime_input',
                'hidden_id'                         :'prac_starttime',
                'div_id'                            :'prac_starttime_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                         :sLang
            });
            
            $('#prac_endtime_calendar').calendarSelect({
                'id'                                :'prac_endtime_calendar',
                'input_id'                          :'prac_endtime_input',
                'hidden_id'                         :'prac_endtime',
                'div_id'                            :'prac_endtime_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'1',
                'noworkexp_show'                    :'0',
                'language'                         :sLang
            });
            
            break;
        case 'skilllanguage':
            $('#skill_type_click').itskillLayer({
                'id'                        : 'skill_type_click',
                'code_id'                   : 'skill_type',
                'text_id'                   : 'skill_type_input',
                'layer_id'                  : 'skill_type_layer',
                'self_define'               : '1',
                'self_define_text_id'       : 'skill_name',
                'language'                  : sLang
            });
            
            $("#skill_ability_list").selectionlist({
                'id'                        :'skill_ability_list',
                'hidden_id'                 :'skill_ability',
                'data'                      :d_itability
            });
            
            $('#skill_type_input').itskillAssociation({
                'id'                      : 'skill_type_input',
                'text_id'                 : 'skill_type_input',
                'code_id'                 : 'skill_type',
                'association_id'          : 'skill_type_list',
                'float_index_id'          : 'skill_type_index',
                'float_on_id'             : 'skill_type_div',
                'data_parent_click'       : false,
                'self_define'             : '1',
                'self_define_text_id'     : 'skill_name',
                'language'                : sLang
            });
            break;
        case 'skillcertification':
            $("#cert_getdate_calendar").calendarSelect({
                'id'                                :'cert_getdate_calendar',
                'input_id'                          :'cert_getdate_input',
                'hidden_id'                         :'cert_getdate',
                'div_id'                            :'cert_getdate_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                         :sLang
            });
            
            $('#cert_nameid_click').certLayer({
                'id'                        : 'cert_nameid_click',
                'code_id'                   : 'cert_nameid',
                'text_id'                   : 'cert_nameid_input',
                'layer_id'                  : 'cert_nameid_layer',
                'self_define'               : '1',
                'self_define_text_id'       : 'cert_name',
                'language'                  : sLang
            });
            
            $('#cert_nameid_input').certAssociation({
                'id'                      : 'cert_nameid_input',
                'text_id'                 : 'cert_nameid_input',
                'code_id'                 : 'cert_nameid',
                'association_id'          : 'cert_nameid_list',
                'float_index_id'          : 'cert_nameid_index',
                'float_on_id'             : 'cert_nameid_div',
                'self_define'             : '1',
                'self_define_text_id'     : 'cert_name',
                'data_parent_click'       : false,
                'language'                : sLang
            });
            
            break;
        case 'skilltrain':
            $("#train_timefrom_calendar").calendarSelect({
                'id'                                :'train_timefrom_calendar',
                'input_id'                          :'train_timefrom_input',
                'hidden_id'                         :'train_timefrom',
                'div_id'                            :'train_timefrom_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'0',
                'noworkexp_show'                    :'0',
                'language'                         :sLang
            });
            
            $('#train_timeto_calendar').calendarSelect({
                'id'                                :'train_timeto_calendar',
                'input_id'                          :'train_timeto_input',
                'hidden_id'                         :'train_timeto',
                'div_id'                            :'train_timeto_div',
                'type'                              :'2',
                'title_show'                        :'1',
                'sofar_show'                        :'1',
                'noworkexp_show'                    :'0',
                'language'                         :sLang
            });
            break;
        case 'additionquiz':
            break;
        case 'additionattach':
            $("#atta_uploadtype_list").selectionlist({
                'id'                        :'atta_uploadtype_list',
                'hidden_id'                 :'atta_uploadtype',
                'data'                      :[
                                                {k:"1", v:lang['attachment_upload']},
                                                {k:"2", v:lang['attachment_link']}
                                            ],
                'afterClick'                :uploadTypeChange
            });
            if($("#additionattach_modify_").length > 0)
            {
                if(!checkAttachNum("1"))
                {
                    $("#atta_uploadtype_selection_2").click();
                }
            }
            showFileName();
            if($("#passcheck").val() == "0")
            {
                checkNumofEachModule("hide", "additionattach");
            }
            break;
        case 'additionother':
            $("#topic_select_list").selectionlist({
                'id'                        :'topic_select_list',
                'hidden_id'                 :'topic_select',
                'data'                      :d_otherlist
            });
            break;
    }
    
    setRedBox("standard");
    
    if(sEdit == "edit")
    {
        $('body').css('zoom','');
        $('body').css('zoom','1');
    }
    else
    {
        $('body').css('zoom','');
        $('body').css('zoom','1');
    }
}

function newButtonClick(p_oObject)
{
    var sType = p_oObject.id.split('_')[0];
    if(!checkNumofEachModule("hide", sType, "new"))
    {
        return;
    }
    var sUserid = $("#resumeid").val();
    var bIsEnglish = $("#isenglish").val();
    aTypeInfo = getTypeInfo(sType);
    
    var oDataparams = {
        isenglish:bIsEnglish,
        userid:sUserid
        };
        
    $.ajax({
        url:window.cfg.root_ajax + "/" + aTypeInfo['ajax'] + "?action=new",
        type:"POST",
        data:oDataparams,
        datatype:"text",
        async:false,
        success:function(data){
            if(data){
                if($("#" + sType + "_empty").length > 0)
                {
                    $("#" + sType + "_empty").remove();
                }
                $("#" + sType).prepend(data);
            }
        }
    });
    bindClickEvent(sType, "edit", bIsEnglish);
}

function editButtonClick(p_oObject)
{
	alert('ff');
    var sType = p_oObject.id.split('_')[0];
    if(!checkNumofEachModule("hide", sType))
    {
        return;
    }
    var sUserid = $("#resumeid").val();
    var bIsEnglish = $("#isenglish").val();
    aTypeInfo = getTypeInfo(sType);
    
    var oDataparams = {
        isenglish:bIsEnglish,
        userid:sUserid
        };
    if(aTypeInfo['type'] != "1")
    {
        var sId = p_oObject.id.split('_')[2];
        oDataparams[aTypeInfo['key']] = sId;
    }
    $.ajax({
        url:window.cfg.root_ajax + "/" + aTypeInfo['ajax'] + "?action=modify",
        type:"POST",
        data:oDataparams,
        datatype:"text",
        async:false,
        success:function(data){
            if(data){
                if(aTypeInfo['type'] == "1")
                {
                    $("#" + sType).empty();
                    $("#" + sType).attr("class", aTypeInfo['editclass']);
                    $("#" + sType).append(data);
                }
                else
                {
                    $("#" + sType + "_view_" + sId).replaceWith(data);
                }
            }
           
        }
    })
    bindClickEvent(sType, "edit", bIsEnglish);
}
function saveBaseClick(p_oObject)
{
    closeAllFloatDiv();
    $(".placeholder").val("");
    var sStr = lang['basicdetail_update_advice_0'] + "<br>" + lang['basicdetail_update_advice_1'];

    if(!checkInput("basedetail", "save"))
    {
        return;
    }
    
    sCode = '<div class="panel_lnp panel_py" ><h2><p>' + lang['advice'] + '</p><a href="javascript:void(0);" class="basedetail_save_x"><i></i></a></h2><div class="pannel_con"><div class="gp2"><p class="wd center">' + sStr + '</p></div></div>		<div class="but_box b2"><span class="p_but" id="basedetail_confirm_" onclick="saveButtonClick(this, oLayerSettings)">' + lang['resume_confirm'] + '</span><span class="p_but gray basedetail_save_x">' + lang['resume_cancel'] +'</span></div></div>';
    var oLayerParams = {'layer_close_class':'basedetail_save_x'};
    oLayerSettings = jQuery.FLayer.init(oLayerParams);
    jQuery.FLayer.setContent(oLayerSettings, sCode);
    jQuery.FLayer.open(oLayerSettings);
}

function saveButtonClick(p_oObject)
{
    closeAllFloatDiv();
    var sType = p_oObject.id.split('_')[0];
    if(sType == "basedetail")
    {
        var oLayerSettings = arguments[1] || "";
        jQuery.FLayer.close(oLayerSettings);
    }
    if(!checkInput(sType, "save"))
    {
        return;
    }
    if(!checkNumofEachModule("show", sType))
    {
        return;
    }
    var sUserid = $("#resumeid").val();
    var bIsEnglish = $("#isenglish").val();
    aTypeInfo = getTypeInfo(sType);
    
    var oDataparams = {
        isenglish:bIsEnglish,
        userid:sUserid
    };
    if(aTypeInfo['type'] != "1")
    {
        var sId = p_oObject.id.split('_')[2];
        oDataparams[aTypeInfo['key']] = sId;
    }
    oDataparams = getInputData(sType, oDataparams);
    $.ajax({
        url:window.cfg.root_ajax + "/" + aTypeInfo['ajax'] + "?action=save",
        type:"POST",
        data:oDataparams,
        datatype:"text",
        async:false,
        success:function(data){
            if(data){
                if(aTypeInfo['type'] == "1")
                {
                    $("#" + sType).empty();
                    $("#" + sType).append(data);
                    if($("#" + sType + "_save").length == 0)
                    {
                        $("#" + sType).attr("class", aTypeInfo['viewclass']);
                    }
                    else
                    {
                        var bReEdit = checkNumofEachModule("hide", sType);
                    }
                }
                else
                {
                    $("#" + sType + "_modify_" + sId).replaceWith(data);
                    if(sId == "" && $("#" + sType + "_modify_" + sId).length == 0)
                    {
                        updateTypeNum(sType, 1);
                    }
                }
                updateResumeComplete();
                
            }
           
        }
    });
    bindClickEvent(sType, "view", bIsEnglish);
}

function deleteButtonClick(p_oObject)
{
    if(existEditDiv)
    {
        return;
    }
    var sType = p_oObject.id.split('_')[0];
    var sId = p_oObject.id.split('_')[2];
    var sStr = lang['all_delete_advice'];
    if((sType == "education" && $("#education_verify_" + sId).val() == "1") || (sType == "skillcertification" && $("#skillcertification_verify_" + sId).val() == "1"))
    {
        sStr = '<br>' + lang['verify_cantdelete_advice'];
    }
    if((sType == "education" && $("#education_verify_" + sId).val() == "3") || (sType == "skillcertification" && $("#skillcertification_verify_" + sId).val() == "3"))
    {
        sStr += '<br>' + lang['verify_delete_advice'];
    }
    sCode = '<div class="panel_lnp panel_py" ><h2><p>' + lang['advice'] + '</p><a href="javascript:void(0);" class="' + sType + '_delete_x"><i></i></a></h2><div class="pannel_con"><div class="gp2"><p class="wd center">' + sStr + '</p></div></div><div class="but_box b2">' + (((sType == "education" && $("#education_verify_" + sId).val() == "1") || (sType == "skillcertification" && $("#skillcertification_verify_" + sId).val() == "1")) ? '' : ('<span class="p_but" onclick="deleteButtonConfirmClick(\'' + p_oObject.id + '\',oLayerSettings)">' + lang['resume_confirm'] + '</span><span class="p_but gray ' + sType + '_delete_x">' + lang['resume_cancel'] + '</span>')) + '</div></div>';
    var oLayerParams = {'layer_close_class': sType + '_delete_x'};
    oLayerSettings = jQuery.FLayer.init(oLayerParams);
    jQuery.FLayer.setContent(oLayerSettings, sCode);
    jQuery.FLayer.open(oLayerSettings);
}

function deleteButtonConfirmClick(p_sId, oLayerSettings)
{   
    jQuery.FLayer.close(oLayerSettings);
    var sType = p_sId.split('_')[0];
    var sId = p_sId.split('_')[2];
    var sUserid = $("#resumeid").val();
    var bIsEnglish = $("#isenglish").val();
    aTypeInfo = getTypeInfo(sType);
    
    var oDataparams = {
        isenglish:bIsEnglish,
        userid:sUserid
        };
    oDataparams[aTypeInfo['key']] = sId;
    
    $.ajax({
        url:window.cfg.root_ajax + "/" + aTypeInfo['ajax'] + "?action=delete",
        type:"POST",
        data:oDataparams,
        datatype:"text",
        async:false,
        success:function(data){
            $("#" + sType + "_view_" + sId).remove();
            updateTypeNum(sType, -1);
            if($("#" + sType + "_num").val() == "0")
            {
                $("#" + sType).append(getEmptyModuleCode(sType));
            }
            updateResumeComplete();
        }
    });
    bindClickEvent(sType, "edit", bIsEnglish);
}

function cancelButtonClick(p_oObject)
{
    var sType = p_oObject.id.split('_')[0];
    if(!checkNumofEachModule("show", sType))
    {
        return;
    }
    var sUserid = $("#resumeid").val();
    var bIsEnglish = $("#isenglish").val();
    var oDataparams = {
        isenglish:bIsEnglish,
        userid:sUserid
    };
    if(aTypeInfo['type'] != "1")
    {
        var sId = p_oObject.id.split('_')[2];
        oDataparams[aTypeInfo['key']] = sId;
        
        if(sId == "")
        {
            $("#" + sType + "_modify_" + sId).remove();
            if($("#" + sType + "_num").val() == "0")
            {
                $("#" + sType).append(getEmptyModuleCode(sType));
            }
            bindClickEvent(sType, "view", bIsEnglish);
            return;
        }
    }
    $.ajax({
        url:window.cfg.root_ajax + "/" + aTypeInfo['ajax'] + "?action=cancel",
        type:"POST",
        data:oDataparams,
        datatype:"text",
        async:false,
        success:function(data){
            if(aTypeInfo['type'] == "1")
            {
                $("#" + sType).empty();
                $("#" + sType).append(data);
                if($("#" + sType + "_cancel").length == 0)
                {
                    $("#" + sType).attr("class", aTypeInfo['viewclass']);
                }
            }
            else
            {
                $("#" + sType + "_modify_" + sId).replaceWith(data);
            }
        }
    });
    bindClickEvent(sType, "view", bIsEnglish);
}

function editResumeName()
{
    var sUserid = $("#resumeid").val();
    var switchLang = $("#isenglish").val() == "c" ? "e" : "c";
    var bIsEnglish = $("#isenglish").val();
    var sRsmname = $("#resume_nameview").text();
    var openess = $("#resume_openess").text();
    $.ajax({
        url:window.cfg.root_ajax + "/resume_complete.php",
        type:"GET",
        data:{userid:sUserid, isenglish:bIsEnglish, action:"get"},
        datatype:"json",
        async:false,
        success:function(data){
            if(data)
            {
                data = eval("(" + data + ")");
                var star = data.star_lights == "1" ? "star s" : "hstar s";
                var bstar = data.star_lights == "1" ? "n_star" : "hn_star";
                star += data.star_complete.toString().replace(".", "_");

                $("#resume").html(getEmptyModuleCode("editresume"));
                $("#resume").attr("class", "com Fm");
                $("#resume_nameinput").val(sRsmname);
                $("#resume_lastupdate").text(data.lastupdate.substr(0, 10));
                $("#resume_openess").text(openess);
                $("#resume_star").attr("class", star);
                $("#resume_bstar").attr("class", bstar);
                $("#resume_switchto").attr("href", window.cfg.standard_resume_url + "?resumeid=" + sUserid + "&lang=" + switchLang);
                questionMarkSet("#star_question,#openess_question");
                //ÌØÊâÂñµã£¬ÓÉÓÚ±à¼­Ö®ºó£¬¸Ã°´Å¥ÏûÊ§£¬ËùÒÔÐèÒªÔÚ±à¼­·½·¨ÖÐÊÖ¶¯×·×ÙÂñµã
                manualTrack("manualTrackbuttonClick", {'eventType': '1'});
            }
        }
    });
}

function saveResumeName()
{
    var sUserid = $("#resumeid").val();
    var switchLang = $("#isenglish").val() == "c" ? "e" : "c";
    var bIsEnglish = $("#isenglish").val();
    var rsmname = $("#resume_nameinput").val();
    $("#resume_name_warning").hide();
    if(!checkEmpty(rsmname))
    {
        showErrorBox("resume_name_warning", lang['resume_name_empty']);
        return;
    }
    if(!checkLength(rsmname, "", 50))
    {
        showErrorBox("resume_name_warning", lang['resume_name_long']);
        return;
    }
    $.ajax({
        url:window.cfg.root_ajax + "/resume_complete.php",
        type:"GET",
        data:{userid:sUserid, rsmname:rsmname,isenglish:bIsEnglish, action:"save"},
        dataType:"json",
        async:false,
        success:function(data){
            if(data)
            {
                if(data.status == "-1")
                {
                    showErrorBox("resume_name_warning", lang['resume_name_repeat']);
                    return;
                }
                var star = data.star_lights == "1" ? "star s" : "hstar s";
                var bstar = data.star_lights == "1" ? "n_star" : "hn_star";
                star += data.star_complete.toString().replace(".", "_");
                
                $("#resume").html(getEmptyModuleCode("viewresume"));
                $("#resume").attr("class", "top_wrap");
                $("#resume_nameview").text(data.rsmname);
                $("#resume_lastupdate").text(data.lastupdate.substr(0, 10));
                $("#resume_openess").text(data.openstatus_dict);
                $("#resume_star").attr("class", star);
                $("#resume_bstar").attr("class", bstar);
                $("#resume_switchto").attr("href", window.cfg.standard_resume_url + "?resumeid=" + sUserid + "&lang=" + switchLang);
                questionMarkSet("#star_question,#openess_question");
                //ÖØÐÂÂñµã
                bindTrack("reBindTrackbuttonClick");
                bindTrack("reBindTrackbuttonClickNew");
            }
        }
    });
}

function cancelResumeName()
{
    var sUserid = $("#resumeid").val();
    var switchLang = $("#isenglish").val() == "c" ? "e" : "c";
    var bIsEnglish = $("#isenglish").val();
    var starclass = $("#resume_star").attr("class");
    var bstarclass = $("#resume_bstar").attr("class");
    var lastupdate = $("#resume_lastupdate").text();
    $.ajax({
        url:window.cfg.root_ajax + "/resume_complete.php",
        type:"GET",
        data:{userid:sUserid, isenglish:bIsEnglish, action:"cancel"},
        datatype:"json",
        async:false,
        success:function(data){
            if(data)
            {
                data = eval("(" + data + ")");
                $("#resume").html(getEmptyModuleCode("viewresume"));
                $("#resume").attr("class", "top_wrap");
                $("#resume_nameview").text(data.rsmname);
                $("#resume_lastupdate").text(lastupdate);
                $("#resume_openess").text(data.openstatus_dict);
                $("#resume_star").attr("class", starclass);
                $("#resume_bstar").attr("class", bstarclass);
                $("#resume_switchto").attr("href", window.cfg.standard_resume_url + "?resumeid=" + sUserid + "&lang=" + switchLang);
                questionMarkSet("#star_question,#openess_question");
                //ÖØÐÂÂñµã
                bindTrack("reBindTrackbuttonClick");
                bindTrack("reBindTrackbuttonClickNew");
            }
        }
    });
}

function refreshResume()
{
    Refreshresume($("#resumeid").val(), $("#isenglish").val(), window.cfg.root);
}

function updateTypeNum(sType, iUpdatenum)
{
    $("#" + sType + "_num").val(Number($("#" + sType + "_num").val()) + iUpdatenum);
}

function getEmptyModuleCode(sType)
{
    var aResult = new Array();
    aResult['work'] = '<div class="none icons" id="work_empty">' + lang['work_empty'] + '</div>';
    aResult['project'] = '<div class="none icons" id="project_empty">' + lang['project_empty'] + '</div>';
    aResult['education'] = '<div class="none icons" id="education_empty">' + lang['edu_empty'] + '</div>';
    aResult['schoolaward'] = '<div class="none icons" id="schoolaward_empty">' + lang['saward_empty'] + '</div>';
    aResult['schooljob'] = '<div class="none icons" id="schooljob_empty">' + lang['sjob_empty'] + '</div>';
    aResult['skilllanguage'] = '<div class="none icons" id="skilllanguage_empty">' + lang['skill_empty'] + '</div>';
    aResult['skillcertification'] = '<div class="none icons" id="skillcertification_empty">' + lang['cer_empty'] + '</div>';
    aResult['skilltrain'] = '<div class="none icons" id="skilltrain_empty">' + lang['train_empty'] + '</div>';
    aResult['additionquiz'] = '';
    aResult['additionattach'] = '<div class="none icons" id="additionattach_empty">' + lang['att_empty'] + '</div>';
    aResult['additionother'] = '<div class="none icons" id="additionother_empty">' + lang['other_empty'] + '</div>';
    
    aResult['editresume'] = '<div class="nav_top">'
        +'<div class="txt">'
        +'<input class="ef" maxlength="50" id="resume_nameinput" type="text" value="">'
        +'</div>'
        +'<div class="err" id="resume_name_warning" style="display:none"><em class="icons"></em></div>'
        +'</div>'
        +'<div class="btnbox">'
        +'<span class="p_but" onclick="saveResumeName()">' + lang['resume_save'] + '</span><span class="p_but gray" onclick="cancelResumeName()">' + lang['resume_cancel'] + '</span></div>'
        +'<div class="cupBox">'
        +'<div class="cup">' + lang['resume_update'] + '£º<span id="resume_lastupdate">2015</span></div>'
        +'<div class="cup dt">' + lang['resume_openess'] + '£º<span id="resume_openess"></span>'
        +'<div class="hpBox h_open">'
        +'<div class="h_head">'
        +'<em id="openess_question" class="hp"></em>'
        +'<div class="h_arr"></div>'
        +'</div><div class="h_body">'
        +'<div class="h_top"></div>'
        +'<div class="h_box"><div class="h_con">'
        +lang['resumename_advice1'] + '<br/>'
        +'<span class="bold">' + lang['resumename_advice2']  + '</span>'
        +lang['resumename_advice3']+ '<br/>'
        +'<span class="bold">' + lang['resumename_advice4']  + '</span>'
        +lang['resumename_advice5'] + '<br/>'
        +'<span class="bold">' + lang['resumename_advice6'] + '</span>'
        +lang['resumename_advice7']
        +'<div class="org">' + lang['resumename_advice8'] + '</div></div>'
        +'</div><div class="h_btm"></div>'
        +'</div></div></div>'
        +'<div class="cup dt">'
        +'<span class="hn_star" id="resume_bstar"></span>'
        +'<span class="hstar s3_5" id="resume_star"></span>'
        +'<div class="hpBox h_star"><div class="h_head">'
        +'<em id="star_question" class="hp"></em><div class="h_arr"></div>'
        +'</div><div class="h_body"><div class="h_top"></div>'
        +'<div class="h_box"><div class="h_con">' + lang['resumename_advice9']
        +'<div class="org">' + lang['resumename_advice10'] + '</div></div>'
        +'</div><div class="h_btm"></div></div></div>'
        +'</div>'
        +'<div class="cup"><a id="resume_switchto">' + lang['resume_switchto'] + '></a></div>'
        +'</div>';
    aResult['viewresume'] = '<div class="nav_top">'
        +'<p class="nkt">'
		+'<span  class="name" id="resume_nameview"></span>'
		+'<span class="ed_icon_blue icons" onclick="editResumeName()" event-type="1"></span>'
		+'<span class="ed_icon_yellow icons"></span>'
		+'</p>'
		+'</div>'
        +'<div class="cupBox">'
		+'<div class="cup">' + lang['resume_update'] + '£º<span id="resume_lastupdate">2015</span></div>'
		+'<div class="cup dt">' + lang['resume_openess'] + '£º<span id="resume_openess"></span>'
        +'<div class="hpBox h_open">'
        +'<div class="h_head">'
        +'<em id="openess_question" class="hp" track-type="reBindTrackButtonClick" event-type="2"></em>'
        +'<div class="h_arr"></div>'
        +'</div><div class="h_body">'
        +'<div class="h_top"></div>'
        +'<div class="h_box"><div class="h_con">'
        +lang['resumename_advice1'] + '<br/>'
        +'<span class="bold">' + lang['resumename_advice2']  + '</span>'
        +lang['resumename_advice3']+ '<br/>'
        +'<span class="bold">' + lang['resumename_advice4']  + '</span>'
        +lang['resumename_advice5'] + '<br/>'
        +'<span class="bold">' + lang['resumename_advice6'] + '</span>'
        +lang['resumename_advice7']
        +'<div class="org">' + lang['resumename_advice8'] + '</div></div>'
        +'</div><div class="h_btm"></div>'
        +'</div></div></div>'
		+'<div class="cup dt">'
		+'<span class="n_star" id="resume_bstar"></span>'
		+'<span class="star s1" id="resume_star"></span>'
		+'<div class="hpBox h_star"><div class="h_head">'
        +'<em id="star_question" class="hp" track-type="reBindTrackButtonClick" event-type="3"></em><div class="h_arr"></div>'
        +'</div><div class="h_body"><div class="h_top"></div>'
        +'<div class="h_box"><div class="h_con">' + lang['resumename_advice9']
        +'<div class="org">' + lang['resumename_advice10'] + '</div></div>'
        +'</div><div class="h_btm"></div>'
        +'</div></div></div>'
		+'<div class="cup"><a id="resume_switchto" track-type="reBindTrackButtonClick" event-type="4">' + lang['resume_switchto'] 
        +'></a></div></div></div>'
		+'<div class="btnbox">'
		+'<span class="p_but" onclick="refreshResume()" track-type="reBindTrackButtonClickNew" track-resumeid="' + $("#resumeid").val() + '" event-type="5">' + lang['resume_refresh'] + '</span><span class="p_but geige" onclick="javascript:window.open(\'' + window.cfg.root + '/resume_preview.php?lang=' + $("#isenglish").val() + '&resumeid=' + $("#resumeid").val() + '\')" track-type="reBindTrackButtonClick" event-type="6">' + lang['resume_preview'] + '</span>'
		+'</div>';
    
    
    return aResult[sType];
}

function showMoreClickEvent(p_oObject)
{
    if($('.main').hasClass('eng')){
        if(($(p_oObject).hasClass('on'))){
            $(p_oObject).removeClass('on').children('span').html('More').next().css('display','none').parent().next().css('display','none');
        }else{
            $(p_oObject).addClass('on').children('span').html('Hide').next().css('display','block').parent().next().css('display','block');
        }
    }else{
        if( ($(p_oObject).hasClass('on')) && (!$(p_oObject).parent().parent().hasClass('m1')) ){
            $(p_oObject).removeClass('on').children('span').html('¸ü¶àÕ¹¿ª').next().css('display','none').parent().next().css('display','none');
        }else if( (!$(p_oObject).hasClass('on')) && (!$(p_oObject).parent().parent().hasClass('m1')) ){
            $(p_oObject).addClass('on').children('span').html('¸ü¶àÊÕÆð').next().css('display','block').parent().next().css('display','block');
        }else if( ($(p_oObject).hasClass('on')) && ($(p_oObject).parent().parent().hasClass('m1')) ){
            $(p_oObject).removeClass('on').children('em').css('display','none').parent().next().css('display','none');
        }else{
            $(p_oObject).addClass('on').children('em').css('display','block').parent().next().css('display','block');
        }
    }
}

function checkOtherContact(p_sStr, p_sType)
{
    var result = "";
    switch(p_sType)
    {
        case '00':
            result = p_sStr.match(/^[0-9]{3,4}-[0-9]{7,8}$/) ? "0" : "1";
            break;
        case '01':
            result = p_sStr.match(/^[0-9]{3,4}-[0-9]{7,8}(-[0-9]{1,4})??$/) ? "0" : "2";
            break;
        case '02':
            result = checkLength(p_sStr, "", 20) ? "0" : "3";
            break;
        case '03':
            result = checkNumber(p_sStr, "int") && checkLength(p_sStr, "", 20) ? "0" : "4";
            break;
    }
    return result;
}

function checkAttachNum(p_sType)
{
    if(p_sType == "1" && $("input[id^='additionattach_1_']").length >= maxAttachFile || p_sType == "2" && $("input[id^='additionattach_2_']").length >= maxAttachUrl)
    {
        return false;
    }
    return true;
}

function checkUploadFile(p_attachid)
{
    var bResult = true;
    $("div[id$='_warning']").hide();
    if(!checkAttachNum($("#atta_uploadtype").val()))
    {
        showErrorBox("atta_uploadtype_warning", ($("#atta_uploadtype").val() == "1" ? lang['att_uploadfile_max'] : lang['att_uploadurl_max']));
        bResult = false;
    }
    if(!checkEmpty($("#atta_name").val()))
    {
        showErrorBox("atta_name_warning", lang['att_name_empty']);
        bResult = false;
    }
    else
    {
        if(!checkLength($("#atta_name").val(), "", 50))
        {
            showErrorBox("atta_name_warning", lang['att_name_long']);
            bResult = false;
        }
    }
    if(!checkLength($("#atta_describe").val(), "" , 2000))
    {
        showErrorBox("atta_describe_warning", lang['att_describe_long']);
        bResult = false;
    }

    if($("#atta_uploadtype").val() == "2")
    {
        if(!checkEmpty($("#atta_uploadurl").val()))
        {
            showErrorBox("atta_uploadurl_warning", lang['att_url_empty']);
            bResult = false;
        }
        else
        {
            if(!checkLength($("#atta_uploadurl").val(), "", 200))
            {
                showErrorBox("atta_uploadurl_warning", lang['att_url_long']);
                bResult = false;
            }
            if(!checkUrl($("#atta_uploadurl").val()))
            {
                showErrorBox("atta_uploadurl_warning", lang['att_url_format']);
                bResult = false;
            }
        }
    }
    else
    {
        if($("#atta_uploadfile").val() == "" && p_attachid == "")
        {
            showErrorBox("atta_uploadfile_warning", lang['att_file_empty']);
            bResult = false;
        }
    }
    return bResult;
}

function uploadAttachment(p_attachid)
{
    closeAllFloatDiv();
    $(".placeholder").val("").removeClass("placeholder");

    if(!checkUploadFile(p_attachid))
    {
        return;
    }
    if(!checkNumofEachModule("show", "additionattach"))
    {
        return;
    }
    $("#attachment_form").attr('action', window.cfg.root_ajax + '/additionattach.php?action=save');
    var attach = 'additionattach_modify_' + p_attachid;
    if ($('#atta_uploadurl').val() == '') 
    {
        $('#atta_uploadurl').removeClass('placeholder').placeholder({customClass:'my-placeholder'});
    }
    $("#attachment_form").ajaxSubmit({
        success : function showResponse(responseText,statusText){
            $("#" + attach).replaceWith(responseText);
            if(p_attachid == "" && $("#" + attach).length == 0)
            {
                updateTypeNum("additionattach", 1);
            }
            updateResumeComplete();
            bindClickEvent("additionattach", "view", "c");
            if($("#" + attach).length != 0)
            {
                $('body').css('zoom','');
                $('body').css('zoom','1');
            }
        }
    });
    
    return false;
}

function deleteQuizClick(p_sQuizName, p_sReportid, p_sOrderid)
{
    if(existEditDiv)
    {
        return;
    }
    var sStr = lang['all_delete_advice'];
    
    sCode = '<div class="panel_lnp panel_py" ><h2><p>' + lang['advice'] + '</p><a href="javascript:void(0);" class="' + 'quiz_delete_x"><i></i></a></h2><div class="pannel_con"><div class="gp2"><p class="wd center">' + sStr + '</p></div></div><div class="but_box b2">' + '<span class="p_but" onclick="deleteQuizConfirm(\'' + p_sQuizName + '\',\'' + p_sReportid + '\',\'' + p_sOrderid + '\', oLayerSettings)">' + lang['resume_confirm'] + '</span><span class="p_but gray ' + 'quiz_delete_x">' + lang['resume_cancel'] + '</span>' + '</div></div>';
    var oLayerParams = {'layer_close_class': 'quiz_delete_x'};
    oLayerSettings = jQuery.FLayer.init(oLayerParams);
    jQuery.FLayer.setContent(oLayerSettings, sCode);
    jQuery.FLayer.open(oLayerSettings);
}

function deleteQuizConfirm(p_sQuizName, p_sReportid, p_sOrderid, oLayerSettings)
{
    jQuery.FLayer.close(oLayerSettings);
    var sUserid = $("#resumeid").val();
    var bIsEnglish = $("#isenglish").val();
    
    var oDataparams = {
        type:'additionquiz',
        isenglish:bIsEnglish,
        userid:sUserid
        };
    oDataparams["quizname"] = p_sQuizName;
    oDataparams["orderid"] = p_sOrderid;
    oDataparams["reportid"] = p_sReportid;
    
    $.ajax({
        url:window.cfg.root_ajax + "/additionquiz.php?action=delete",
        type:"POST",
        data:oDataparams,
        datatype:"text",
        async:false,
        success:function(data){
            if(data == "1")
            {
                if($("#" + p_sQuizName + "_view").parent().find("strong").length < 2)
                {
                    $("#" + p_sQuizName + "_view").parent().parent().remove();
                    $("#additionquiz_title").remove();
                }
                else
                {
                    $("#" + p_sQuizName + "_view").remove();
                }
            }
        }
    });
}

function removeRedPoint(sModule)
{
    if($("#" + sModule + "_index").hasClass("pt"))
    {
        var isenglish = $("#isenglish").val();
        var sUserid = $("#resumeid").val();
        $.ajax({
            url:window.cfg.root_ajax + "/resume_complete.php",
            type:"GET",
            data:{userid:sUserid, action:"dot", module:sModule, userid:sUserid, isenglish:isenglish},
            datatype:"text",
            async:false,
            success:function(data){
                if(data){
                    $("#" + sModule + "_index").removeClass("pt");
                }
            }
        });
    }
}

function sexSwitchChange(sOption)
{
    var manUrl = window.cfg.root_img + '/resume/man.png'; 
    var womanUrl = window.cfg.root_img + '/resume/woman.png';
    if($("#base_avatar").attr("src").indexOf("image.php") == "-1")
    {
        $("#base_avatar").attr("src", sOption == "1" ? womanUrl : manUrl); 
    }
    
}

function updateResumeComplete()
{
    var isenglish = $("#isenglish").val();
    var sUserid = $("#resumeid").val();
    var yClass = "right y";
    var nClass = "right n";
    $.ajax({
        url:window.cfg.root_ajax + "/resume_complete.php",
        type:"GET",
        data:{userid:sUserid, isenglish:isenglish, action:"get", random:Math.random()},
        datatype:"json",
        async:false,
        success:function(data){
            if(data){
                data = eval("(" + data + ")");
                var star = data.star_lights == "1" ? "star s" : "hstar s";
                star += data.star_complete.toString().replace(".", "_");
                $("#resume_bstar").attr("class", (data.star_lights == "1" ? "n_star" : "hn_star"));
                $("#resume_star").attr("class", star);
                
                $("#base_complete").attr("class", (data.base_star == "2" ? yClass : nClass));
                $("#work_complete").attr("class", (data.work_exp_star == "2" ? yClass : nClass));
                $("#education_complete").attr("class", (data.edu_exp_star == "2" ? yClass : nClass));
                $("#intention_complete").attr("class", (data.desire_star == "2" ? yClass : nClass));
                $("#project_complete").attr("class", (data.project_exp_star == "2" ? yClass : nClass));
                $("#school_complete").attr("class", ((data.student_bonus_star == "2" || data.student_project_star == "2") ? yClass : nClass));
                
                $("#skill_complete").attr("class", (data.itskills_star == "2" || data.cert_star == "2" || data.train_exp_star == "2") ? yClass : nClass);
                $("#addition_complete").attr("class", ((data.attachment_star == "2" || data.otherinfo_star == "2") ? yClass : nClass));
            }
        }
    });
}

function otherContentChange(type)
{
    $("#base_othercontact").val("");
    if(type == "00")
    {
        
        $("#base_othercontact").attr("placeholder", lang['basic_othercontactshome_remind']).placeholder({customClass:'my-placeholder'});
        return;
    }
    if(type == "01")
    {
        $("#base_othercontact").attr("placeholder", lang['basic_othercontactscomp_remind']).placeholder({customClass:'my-placeholder'});
        return;
    }
    $("#base_othercontact").attr("placeholder", "");
}

function changeSalaryType(type)
{
    $('#int_salary_selfdefine').text(lang['int_salaryselfinput']);
    $("#int_salary_selfdefine").show();
    $("div[id^='int_inputsalarydiv_']").hide();
    $("#int_inputsalary").val("");
    $("#int_salarymin").val("");
    $("#int_salarymax").val("");
    unsetControler("int_salaryselect_list");
    switch(type){
        case '4':
            $("#int_salaryselect_list").find("input").val("");
            $("#int_salary_unit").text(lang['int_salaryyearunit']);
            $("#int_inputsalarydiv_select").show();
            $('#int_salaryselect_list').selectionlist({
                'id'                      :'int_salaryselect_list',
                'hidden_id'               :'int_inputsalary',
                'data'                    :d_yearsal
            });
            break;
        case '1':
            $("#int_salaryselect_list").find("input").val("");      
            $("#int_salary_unit").text(lang['int_salarymonthunit']);
            $("#int_inputsalarydiv_select").show();
            $('#int_salaryselect_list').selectionlist({
                'id'                      :'int_salaryselect_list',
                'hidden_id'               :'int_inputsalary',
                'data'                    :d_saltype
            });
            break;
        case '3':
            $("#int_salary_unit").text(lang['int_salarydayunit']);
            $("#int_salary_selfdefine").hide();
            $("#int_inputsalarydiv_one").show();
            break;
        case '2':
            $("#int_salary_unit").text(lang['int_salaryhourunit']);
            $("#int_salary_selfdefine").hide();
            $("#int_inputsalarydiv_one").show();
            break;
    }
}

function uploadTypeChange(sType)
{
    if(sType == "1")
    {
        $("#atta_uploadurl").val("");
        $("#atta_uploadurl_div").hide();
        $("#atta_uploadfile_div").show();
    }
    else
    {
        var file = $("#atta_uploadfile");
        file.after(file.clone().val(""));
        file.remove(); 
        $("#atta_uploadfile_div").find(".word").html("Ñ¡ÔñÎÄ¼þ");
        showFileName();
        $("#atta_uploadfile_div").hide();
        $("#atta_uploadurl_div").show();
        $("#atta_uploadurl").placeholder({customClass:'my-placeholder'});
    }
}

function showFileName()
{
    $('.chose input[type="file"]').change(function(){
        var filePath=$(this).val();
        var arr=filePath.split("\\");
        var fileName=arr[arr.length-1].split('.');
        var lastName=fileName.pop();
        var firstName=fileName.join(".");
        var t='';
        if($('.main').hasClass('eng')){
            t='Select File';
        }else{
            t='Ñ¡ÔñÎÄ¼þ';
        }
        $('.word').html(t+'<em>(<em class="at">'+firstName+'</em>.'+lastName+')</em>');
    });
}

function checkNumofEachModule(sType)
{
    var sModule = arguments[1] || "";
    var sAction = arguments[2] || "";
    
    if(sType == "checkmodulenum")
    {
        $.each(maxNum, function(key){
            if(sModule = "all")
            {
                $("#" + key + "_num").val($("div[id^='" + key + "_view_']").length);
            }
            if(maxNum[key] != "undefined" && Number($("#" + key + "_num").val()) >= maxNum[key])
            {
                $("#" + key + "_new").attr("class", "unadd icons");
            }
            if(existEditDiv == false && maxNum[key] != "undefined" && Number($("#" + key + "_num").val()) < maxNum[key])
            {
                $("#" + key + "_new").attr("class", "add icons");
            }
        });
        return true;
    }
    if(sType == "hide")
    {
        if(maxNum[sModule] != "undefined" && sAction == "new" && $("div[id^='" + sModule + "_view_']").length >= maxNum[sModule])
        {
            return false;
        }
        if(existEditDiv)
        {
            return false;
        }
        $("#maincontent").find("span.ed_icon_blue.icons").attr("class", "ed_icon_undel icons");
        $("#maincontent").find("em.edi.icons").attr("class", "unedi icons");
        $("#maincontent").find("em.del.icons").attr("class", "undel icons");
        $("#maincontent").find(".add.icons").attr("class", "unadd icons");
        existEditDiv = true;
    }
    if(sType == "show")
    {
        if(existEditDiv)
        {
            $("#maincontent").find("span.ed_icon_undel.icons").attr("class", "ed_icon_blue icons");
            $("#maincontent").find("em.unedi.icons").attr("class", "edi icons");
            $("#maincontent").find("em.undel.icons").attr("class", "del icons");
            $("#maincontent").find(".unadd.icons").attr("class", "add icons");
            existEditDiv = false;
        }
    }
    return true;
}

function cancelRedPoint()
{
    $("#basedetail").mouseenter(function(){
        removeRedPoint("base");
    });
    $("#project_div").mouseenter(function(){
        removeRedPoint("project");
    });
    $("#skill_div").mouseenter(function(){
        removeRedPoint("skill");
    });
    $("#base_index").click(function(){
        removeRedPoint("base");
    });
    $("#project_index").click(function(){
        removeRedPoint("project");
    });
    $("#skill_index").click(function(){
        removeRedPoint("skill");
    });
}

$("html").click(function(){
    closeAllFloatDiv(null, null);
});

$(window).load(function(){
    cancelRedPoint();
    setPageAction();
    setUpToTop();
    setNum = checkNumofEachModule('checkmodulenum', "all");
    
    if($("#showguide").val() == "1")
    {
        var oLayerParams = {'layer_close_class': 'pic_avatar_close'};
        oLayerSettings = jQuery.FLayer.init(oLayerParams);
        jQuery.FLayer.setContent(oLayerSettings,'<div class="guide"><div class="in"><a href="#" class="pic_avatar_close"></a><span class="close pic_avatar_close"></span></div></div>');
        jQuery.FLayer.open(oLayerSettings);
    }
});