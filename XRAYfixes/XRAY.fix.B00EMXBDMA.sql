UPDATE "entity_description" SET text='Hermes is the spacecraft used in the novel to shuttle Mars mission crews between Earth orbit and Mars orbit.' WHERE entity = 16;
UPDATE "entity_description" SET text='Marth Crater is an impact crater on Mars, located in the Oxia Palus quadrangle at 13.0° N and 3.5° W. The crater measures approximately is 98 kilometers in diameter.' WHERE entity = 60;
UPDATE occurrence SET entity = 65 where entity = 103;
UPDATE entity SET count = 13 where id = 65;
DELETE from entity where id=103;
DELETE from entity_description where entity=103;
