use pzn_belajar_acid;

select * from accounts;

start transaction;

select * from accounts where id in ('yasir', 'budi') for update;

update accounts set balance = balance - 500000
where id = 'yasir';

update accounts set balance = balance + 500000
where id = 'budi';

commit;

select * from accounts;