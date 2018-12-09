-- fix description for George Fox
UPDATE "entity_description" SET text='George Edward Fox (born December 17, 1945) is a researcher at the University of Houston.' WHERE entity = 326;
-- fix description for James R Brown
UPDATE "entity_description" SET text='James R Brown is a Canadian molecular biologist whose PhD at Simon Fraser University was on the molecular evolution and population genetics of sturgeon.' WHERE entity = 116;
UPDATE "entity_description" SET text='The Carl R. Woese Institute for Genomic Biology (IGB) is an interdisciplinary facility for genomics research at the University of Illinois at Urbana-Champaign. The construction of the IGB, which was completed in 2006, represented a strategy to centralize biotechnology research at the University of Illinois.', source = 1 WHERE entity = 371;
UPDATE "entity_description" SET text='The J. Craig Venter Institute (JCVI) is a non-profit genomics research institute founded by J. Craig Venter, Ph.D. in October 2006. The Institute was the result of consolidating four organizations: the Center for the Advancement of Genomics, The Institute for Genomic Research (TIGR), the Institute for Biological Energy Alternatives, and the J. Craig Venter Science Foundation Joint Technology Center. It has facilities in Rockville, Maryland and La Jolla, California.', source = 1 WHERE entity = 373;
-- fix description for Eric Lyons.
UPDATE "entity_description" SET text="Eric Lyons is on the staff of Apologetics Press", source=NULL WHERE entity=303;
-- fix description for Larry Gold.
UPDATE "entity_description" SET text="Larry Gold is a molecular biologist at the University of Colorado Boulder and a biotech entrepreneur.", source=NULL, source_wildcard="Larry Gold" WHERE entity=14;
--  fix description for Bernadette Pace.
UPDATE "entity_description" SET text="Bernadette Pace is a molecular biologist, trapeze artist, and was married to collaborator Norman Pace", source=NULL WHERE entity=115;
-- Remove false occurrances of entity 166 (Norman R. Pace) from occurrence.
DELETE FROM occurrence WHERE start = 1026705 and length = 6;
DELETE FROM occurrence WHERE start = 1116384 and length = 7;
--  move IGB occurrences from TIGR to IGB
UPDATE "occurrence" SET entity=371 where start=234539 AND length=9;
UPDATE "occurrence" SET entity=371 where start=784116 AND length=9;
UPDATE "occurrence" SET entity=371 where start=785905 AND length=9;
UPDATE "occurrence" SET entity=371 where start=822135 AND length=9;
UPDATE "occurrence" SET entity=371 where start=894576 AND length=9;
UPDATE "occurrence" SET entity=371 where start=896315 AND length=9;
UPDATE "occurrence" SET entity=371 where start=917471 AND length=9;
UPDATE "occurrence" SET entity=371 where start=926644 AND length=9;
UPDATE "occurrence" SET entity=371 where start=961251 AND length=9;
UPDATE "occurrence" SET entity=371 where start=1023397 AND length=9;
UPDATE "occurrence" SET entity=371 where start=1228664 AND length=9;
UPDATE "occurrence" SET entity=371 where start=1318484 AND length=9;
UPDATE "entity" SET count=20 where id=371;
--  Fix mixups between Norman, Bernadette, and Norman Pace.
--  move Bernadette occurrences in John to Bernadette
UPDATE "occurrence" SET entity=115 where start=1160575 AND length=5;
UPDATE "occurrence" SET entity=115 where start=1372250 AND length=5;
UPDATE "entity" SET count=13 where id=61;
UPDATE "entity" SET count=9 where id=115;
-- move Norman occurrances in John to Norman
UPDATE "entity" SET count=63 where id=166;
UPDATE "occurrence" SET entity=166 where start=749856 AND length=5;
UPDATE "occurrence" SET entity=166 where start=750151 AND length=4;
UPDATE "occurrence" SET entity=166 where start=750449 AND length=4;
UPDATE "occurrence" SET entity=166 where start=750993 AND length=4;
UPDATE "occurrence" SET entity=166 where start=751189 AND length=4;
UPDATE "occurrence" SET entity=166 where start=751387 AND length=4;
UPDATE "occurrence" SET entity=166 where start=751778 AND length=4;
UPDATE "occurrence" SET entity=166 where start=752657 AND length=4;
UPDATE "occurrence" SET entity=166 where start=753111 AND length=4;
UPDATE "occurrence" SET entity=166 where start=754517 AND length=4;
UPDATE "occurrence" SET entity=166 where start=754874 AND length=8;
UPDATE "occurrence" SET entity=166 where start=755329 AND length=4;
UPDATE "occurrence" SET entity=166 where start=755907 AND length=4;
UPDATE "occurrence" SET entity=166 where start=756808 AND length=4;
UPDATE "occurrence" SET entity=166 where start=756885 AND length=4;
UPDATE "occurrence" SET entity=166 where start=757277 AND length=4;
UPDATE "occurrence" SET entity=166 where start=758188 AND length=4;
UPDATE "occurrence" SET entity=166 where start=758255 AND length=4;
UPDATE "occurrence" SET entity=166 where start=758759 AND length=4;
UPDATE "occurrence" SET entity=166 where start=759071 AND length=5;
UPDATE "occurrence" SET entity=166 where start=759095 AND length=4;
UPDATE "occurrence" SET entity=166 where start=759687 AND length=4;
UPDATE "occurrence" SET entity=166 where start=759930 AND length=4;
UPDATE "occurrence" SET entity=166 where start=760059 AND length=4;
UPDATE "occurrence" SET entity=166 where start=761257 AND length=8;
UPDATE "occurrence" SET entity=166 where start=761816 AND length=5;
UPDATE "occurrence" SET entity=166 where start=769948 AND length=4;
UPDATE "occurrence" SET entity=166 where start=867076 AND length=4;
UPDATE "occurrence" SET entity=166 where start=867181 AND length=4;
UPDATE "occurrence" SET entity=166 where start=870520 AND length=5;
UPDATE "occurrence" SET entity=166 where start=877989 AND length=4;
UPDATE "occurrence" SET entity=166 where start=892750 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1141001 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1141330 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1142001 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1142219 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1142535 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1160587 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1372634 AND length=5;
UPDATE "occurrence" SET entity=166 where start=1464361 AND length=8;
-- remove incorrect references to Alexander Humboldt
UPDATE "entity" SET count=6 where id=138;
UPDATE occurrence SET length = 19 where start = 1449717 and entity = 138;
DELETE FROM occurrence WHERE start = 1031746 and entity = 138;
DELETE FROM occurrence WHERE start = 1038108 and entity = 138;
DELETE FROM occurrence WHERE start = 1045851 and entity = 138;
DELETE FROM occurrence WHERE start = 1049936 and entity = 138;
DELETE FROM occurrence WHERE start = 1095054 and entity = 138;
DELETE FROM occurrence WHERE start = 1178823 and entity = 138;
DELETE FROM occurrence WHERE start = 1198151 and entity = 138;
DELETE FROM occurrence WHERE start = 1198273 and entity = 138;
DELETE FROM occurrence WHERE start = 1283595 and entity = 138;
DELETE FROM occurrence WHERE start = 1449727 and entity = 138;
-- remove incorrect references to The Institute for Genomic Research
UPDATE "entity" SET count=8 where id=373;
DELETE FROM occurrence WHERE start = 527545 and entity = 373;
DELETE FROM occurrence WHERE start = 616328 and entity = 373;
DELETE FROM occurrence WHERE start = 622951 and entity = 373;
DELETE FROM occurrence WHERE start = 825138 and entity = 373;
DELETE FROM occurrence WHERE start = 831526 and entity = 373;
DELETE FROM occurrence WHERE start = 831897 and entity = 373;
DELETE FROM occurrence WHERE start = 925898 and entity = 373;
DELETE FROM occurrence WHERE start = 1068003 and entity = 373;
DELETE FROM occurrence WHERE start = 1068003 and entity = 373;
