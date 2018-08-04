/* XRAY mistaken identity fixes for B003YJEXUM
  "Packing for Mars"
*/
-- Was for: Ronc#| is a comune (lumpfish) in the Province of Verona..
UPDATE "entity_description" SET text='April Ronca, Associate Professor, Wake Forest University' WHERE entity = 6;
-- Was for: "Alan Jon Clark ... is a South African businessman."
UPDATE "entity_description" SET text='Jon Clark is a space physiology expert.' WHERE entity = 20;
-- Was for: William John Charles, ... was a Welsh international footballer.
UPDATE "entity_description" SET text='John Charles is a physiologist at the NASA Johnson Space Center.' WHERE entity = 28;
-- Was for: Ralph Harvey ... was a U.S. Representative from Indiana.
UPDATE "entity_description" SET text='Ralph Harvey, planetary geologist, Case Western Reserve' WHERE entity = 46;
-- Was for: Edwin Greenslade Murphy (also known as Dryblower Murphy)
UPDATE "entity_description" SET text='Edwin Murphy researches nutrition.' WHERE entity = 67;
-- Was for: Dennis Malone Carter (c. 1820-1881) was an Irish-American painter.
UPDATE "entity_description" SET text='Dennis Carter is a Professor Emeritus in Bioengineering at Stanford University.' WHERE entity = 88;
-- Was for: O'Hara is an Anglicized form of the Irish name #~S hEaghra.
UPDATE "entity_description" SET text="May O'Hara, Air Force dietitian" WHERE entity = 125;
-- Was for: Arthur J. Thompson was a Major League Baseball pitcher in 1884.
UPDATE "entity_description" SET text='Art Thompson, the technical director of the Red Bull Stratos Mission' WHERE entity = 163;
-- Was for: Tom Chase (born March 6, 1965) is a pornographic actor
UPDATE "entity_description" SET text='Tom Chase, a senior spacesuit engineer at Hamilton Sundstrand.' WHERE entity = 193;
-- Was for: Norbert Kraft is a Canadian guitarist, music teacher, producer...
UPDATE "entity_description" SET text='Norbert Kraft is a physician who researches group psychology and productivity.' WHERE entity = 196;
