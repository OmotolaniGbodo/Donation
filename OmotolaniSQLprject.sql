select sum(donation) as total_donation from donation_data;

select sum(donation) as total_donation, gender from donation_data group by gender;

select gender, sum(donation) as total_donation, count(donation) as donationBy_gender from donation_data group by gender;

select sum(donation) as Td_frequency, donation_frequency from donation_data d join donor_data dt on d.id=dt.id group by donation_frequency;

select job_field, sum(donation) as total_donation, count(job_field) as no_of_JF_donation from donation_data group by job_field;

select sum(donation) as som_above_200_dollar_donation, count(donation) as above_200_dollar_donation from donation_data where donation > 200;

select sum(donation) as som_below_200_dollar_donation, count(donation) as below_200_dollar_donation from donation_data where donation < 200;

select state, sum(donation) as donation_by_state from donation_data group by state order by donation_by_state desc limit 5;

select state, sum(donation) as donation_by_state from donation_data group by state order by donation_by_state asc limit 10;

select last_name, first_name, car as car_owned, donation as donated from donation_data tt join donor_data kk on tt.id= kk.id order by donation desc limit 10;