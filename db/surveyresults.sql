drop table surveyresults;

CREATE TABLE surveyresults (
id    serial NOT NULL PRIMARY KEY,
responder varchar(40),
collector varchar(40),
country varchar(40),
un_subregion varchar(40),
so_region varchar(40),
age_range varchar(40),
age_midpoint numeric(3,1),
gender varchar(40),
self_identification text,
occupation text,
occupation_group text,
experience_range varchar(40),
experience_midpoint numeric(3,1),
salary_range varchar(40),
salary_midpoint numeric(8,1),
big_mac_index numeric(3,2),
tech_do text,
tech_want text,
aliens varchar(40),
programming_ability numeric(3,1),
employment_status varchar(40),
industry varchar(40),
company_size_range varchar(40),
team_size_range varchar(40),
women_on_team varchar(40),
remote varchar(40),
job_satisfaction varchar(40),
job_discovery text,
dev_environment text,
commit_frequency text,
hobby varchar(40),
dogs_vs_cats varchar(40),
desktop_os varchar(40),
unit_testing varchar(40),
rep_range varchar(40),
visit_frequency text,
why_learn_new_tech text,
education text,
open_to_new_job text,
new_job_value text,
job_search_annoyance text,
interview_likelihood varchar(40),
how_to_improve_interview_process text,
star_wars_vs_star_trek varchar(40),
agree_tech varchar(40),
agree_notice varchar(40),
agree_problemsolving varchar(40),
agree_diversity varchar(40),
agree_adblocker varchar(40),
agree_alcohol varchar(40),
agree_loveboss varchar(40),
agree_nightcode varchar(40),
agree_legacy varchar(40),
agree_mars varchar(40),
important_variety varchar(40),
important_control varchar(40),
important_sameend varchar(40),
important_newtech varchar(40),
important_buildnew varchar(40),
important_buildexisting varchar(40),
important_promotion varchar(40),
important_companymission varchar(40),
important_wfh varchar(40),
important_ownoffice varchar(40),
developer_challenges text,
why_stack_overflow text
);

COPY surveyresults (
  responder,
  collector,
  country,
  un_subregion,
  so_region,
  age_range,
  age_midpoint,
  gender,
  self_identification,
  occupation,
  occupation_group,
  experience_range,
  experience_midpoint,
  salary_range,
  salary_midpoint,
  big_mac_index,
  tech_do,
  tech_want,
  aliens,
  programming_ability,
  employment_status,
  industry,
  company_size_range,
  team_size_range,
  women_on_team,
  remote,
  job_satisfaction,
  job_discovery,
  dev_environment,
  commit_frequency,
  hobby,
  dogs_vs_cats,
  desktop_os,
  unit_testing,
  rep_range,
  visit_frequency,
  why_learn_new_tech,
  education,
  open_to_new_job,
  new_job_value,
  job_search_annoyance,
  interview_likelihood,
  how_to_improve_interview_process,
  star_wars_vs_star_trek,
  agree_tech,
  agree_notice,
  agree_problemsolving,
  agree_diversity,
  agree_adblocker,
  agree_alcohol,
  agree_loveboss,
  agree_nightcode,
  agree_legacy,
  agree_mars,
  important_variety,
  important_control,
  important_sameend,
  important_newtech,
  important_buildnew,
  important_buildexisting,
  important_promotion,
  important_companymission,
  important_wfh,
  important_ownoffice,
  developer_challenges,
  why_stack_overflow
  )
FROM '/home/tobin/Projects/lighthouse/recomendation-engine/react-simple-boilerplate/db/2016 Stack Overflow Survey Responses_cleaned.csv'
WITH (
  FORMAT CSV,
  HEADER true
);
