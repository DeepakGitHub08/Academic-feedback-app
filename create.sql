create table feedback(
   id               varchar(5),
   feedback_id serial primary key,
   course_id    varchar(8),
   sec_id     varchar(8), 
   semester   varchar(6),
   year     numeric(4,0),
    foreign key (course_id,sec_id, semester, year) references section
    on delete cascade,
   foreign key (id) references student(ID)
    on delete cascade   
      
        );


create table feedback_value(
feedback_id int primary key,
que_id1 int ,
que_id2 int ,
que_id3 int ,
que_id4 int ,
que_id5 int ,
view_permission int,
upvote int,
que_id10 varchar(1000),

 foreign key (feedback_id) references tryfeedback2
    on delete cascade

);



create table current(
    sec_id      varchar(8), 
    semester    varchar(6),
    year      numeric(4,0)
    
);

create table superuser(
id int primary key,
password int
);

create table app_feedback(
ftext varchar(1000)
);