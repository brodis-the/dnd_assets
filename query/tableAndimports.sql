create table spells(
	spell_id serial not null,
	spell_name varchar(100) not null,
	spell_source varchar(30),
	spell_level varchar(30),
	spell_casting_time varchar(50),
	spell_school varchar(50),
	spell_range varchar(30),
	spell_components varchar(100),
	spell_classes varchar(100),
	spell_text varchar(5000),
	spell_at_higher_levels varchar(2000),

	primary key(spell_id)
);

copy spells(spell_name,spell_source,spell_level,spell_casting_time,spell_school,spell_range,spell_components,spell_classes,spell_text,spell_at_higher_levels)
from '/home/pi/Desktop/DnDBrodis/Spells.csv' delimiter ',' csv header;