/* XRAY mistaken identity fixes for B004J4WNL2
  "Quiet: The Power of Introverts in a World That ..."
*/
-- Was Shelfari entry for Benjamin Franklin! 
UPDATE "entity_description" SET text="Franklin Delano Roosevelt (January 30, 1882 - April 12, 1945), commonly known as FDR, was an American statesman and political leader who served as the 32nd President of the United States from 1933 until his death in 1945. A Democrat, he won a record four presidential elections and emerged as a central figure in world events during the mid-20th century. He directed the United States government during most of the Great Depression and World War II. As a dominant leader of his party, he built the New Deal Coalition, realigning American politics into the Fifth Party System and defining American liberalism throughout the middle third of the 20th century. He is often rated by scholars as one of the three greatest U.S. Presidents, along with George Washington and Abraham Lincoln. Roosevelt was born in 1882 to an old, prominent Dutch-American family from Dutchess County, New York and attended Groton School. He went on to graduate from Harvard College in 1903 and attended Columbia Law School. At age 23 in 1905, he married Eleanor Roosevelt, and the couple went on to have six children.", source_wildcard="Franklin D. Roosevelt", source=1 where entity = 9;
-- Was for: James Riley Blake b. 1979, American professional tennis player...
UPDATE "entity_description" SET text="James F. Blake (April 14, 1912 - March 21, 2002) was the bus driver who Rosa Parks defied in 1955, prompting the Montgomery Bus Boycott.", source=1 where entity = 103;
-- Merge entities 9 and 196 (Franklin and FDR)
UPDATE "entity" SET count = 25 where id = 9;
UPDATE "entity_excerpt" SET entity = 9 where entity = 196;
UPDATE "occurrence" SET entity = 9 where entity = 196;
UPDATE "excerpt" SET related_entities = '87,193,402,388,9' where id = 322;
UPDATE "excerpt" SET related_entities = '87,193,402,381,91,9,388,107,548' where id = 323;
UPDATE "excerpt" SET related_entities = '402,381,87,193,91,9,107,548' where id = 324;
UPDATE "excerpt" SET related_entities = '402,9,381,91,107,548,87,193,42,95,375,155' where id = 325;
UPDATE "excerpt" SET related_entities = '196,9,402,42,95,375,155,40,91,107,165,381,548,417' where id = 326;
UPDATE "excerpt" SET related_entities = '402,40,165,417,9,42,153,95,375,155' where id = 327;
UPDATE "excerpt" SET related_entities = '402,40,9,42,165,153,95,417,375,155' where id = 328;
UPDATE "excerpt" SET related_entities = '153,402,40,193,9,165,417' where id = 329;
DELETE from entity where id=196;
