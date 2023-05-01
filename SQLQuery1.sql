use unit_6;

select * from jobs;
select * from company;
select * from details;

-- Comparison of number of jobs across different cities for different level 
select  Location, level,count(jobid) as Num_of_jobs from jobs join details on jobs.detailid = details.detailid
group by level,location order by Num_of_jobs desc;

-- number of jobs distribution across various industry. For instance, what is the total number of jobs in Software Industry as compared to Marketing
select industry, count(jobid) as Num_of_jobs from jobs join company on company.companyid = jobs.companyid
group by industry order by Num_of_jobs desc;

-- number of opening with respect to the current employee count
select No_of_Employees, count(jobid) as Num_of_jobs from jobs join company on company.companyid = jobs.companyid
group by No_of_Employees order by Num_of_jobs desc;

-- relation b/w a company's social media presence and number of openings
select company, No_of_followers, count(jobid) as Num_of_jobs from jobs join company on company.companyid = jobs.companyid
group by company, No_of_followers order by Num_of_jobs desc;

-- Jobs having the most number of openings
select job_title, count(jobid) as num_of_jobs from jobs group by job_title order by num_of_jobs desc;

-- Count the number of jobs across different industry across different locations. For instance, 
-- how many Frontend Engineer jobs are there in Bangalore as compared to Data Analytics jobs in Bangalore
select industry, location, count(jobid) as num_of_jobs from jobs join company on company.companyid = jobs.companyid
group by industry, location order by num_of_jobs desc;

-- number of jobs by city across industries
select location, industry, count(jobid) as num_of_jobs from jobs join company on company.companyid = jobs.companyid
group by location,Industry order by num_of_jobs desc;

