SELECT * FROM `project-8c39964e-96ed-4e1f-916.1.HousingData` LIMIT 1000;

create table if not exists `project-8c39964e-96ed-4e1f-916.1.TestData` as
select * from `project-8c39964e-96ed-4e1f-916.1.HousingData`;

select * from `project-8c39964e-96ed-4e1f-916.1.TestData` limit 1000;

select sales_type, avg(purchase_price) from `project-8c39964e-96ed-4e1f-916.1.TestData`
group by sales_type order by sales_type;

update `project-8c39964e-96ed-4e1f-916.1.TestData`
set sqm=100 where no_rooms=3;

CREATE OR REPLACE TABLE `project-8c39964e-96ed-4e1f-916.1.HousingData` AS
SELECT
  * EXCEPT(date),
  FORMAT_DATE('%d-%m-%Y', PARSE_DATE('%m/%d/%Y', REPLACE(TRIM(date), '-', '/'))) AS date
FROM `project-8c39964e-96ed-4e1f-916.1.HousingData`;

create table if not exists `project-8c39964e-96ed-4e1f-916.1.Housing` as
select * from `project-8c39964e-96ed-4e1f-916.1.HousingData`;

SELECT * FROM `project-8c39964e-96ed-4e1f-916.1.Housing` LIMIT 1000;


