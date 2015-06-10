create table Question (
	Id serial primary key,
	Title text not null,
	CreationDate integer not null,
	Owner integer not null
)
create table Answer (
	Id serial primary key,
	Owner integer not null,
	Question integer references Question(id),
	CreationDate integer not null,
	Score integer not null
)
create index answer_question on Answer(Question);
create index answer_owner on Answer(Owner);

