/* XRAY mistaken identity fixes for B00JCDK5ME
  "War and Peace"
*/
-- Ramballe, original entry did not really identify
UPDATE "entity_description" SET text="Captain in 13th Light Regiment, Chevalier of the Legion of Honor.", source = 1 where entity = 4;
-- Was for Nicholas Tolstoy (1867 - 1938) Russian Orthodox priest
UPDATE "entity_description" SET text = "Grand marshal of the Russian court in 1805; Member of the Tsar's suite in 1812.", source = 1 where entity = 15;
-- Original entry did not really identify
UPDATE "entity_description" SET text = "(also Prince Vasili) - self-seeking man who has a low opinion of his children but seeks to further their interests.", source_wildcard="Prince Vasili", source = 1 where entity = 90;
-- Original entry did not really identify
UPDATE "entity_description" SET text = "(also Count Bezuhov) - Pierre's father and very wealthy aristocrat who served in Catherine II's court.", source = 1 where entity = 135;
-- Count L. A. von Bennigsen, original entry did not really identify
UPDATE "entity_description" SET text = "German leader of Russians at Eylau (a draw) and Friedland (a decisive defeat). A senior commander in 1812.", source = 1 where entity = 136;
-- Anna Pávlovna Schérer, original entry did not really identify
UPDATE "entity_description" SET text = "A wealthy St. Petersburg socialite. Unmarried hostess of patriotic circle and friend of Countess Natalya Rostova.", source=1 where entity = 401;
-- Change entities 92 and 708 to 90;
UPDATE "entity" SET count = 245 where id = 90;
UPDATE "entity_excerpt" SET entity = 90 where entity = 92;
UPDATE "entity_excerpt" SET entity = 90 where entity = 708;
UPDATE "occurrence" SET entity = 90 where entity = 92;
UPDATE "occurrence" SET entity = 90 where entity = 708;
-- 92 was in related_entities
UPDATE "excerpt" SET related_entities = '240,9,746,90,80,465,419' where id = 50;
UPDATE "excerpt" SET related_entities = '240,275,746,401,419,9,733,713,318,90,206,88' where id = 51;
UPDATE "excerpt" SET related_entities = '401,240,746,206,88,9,733,713,318,275,90,419' where id = 52;
UPDATE "excerpt" SET related_entities = '240,204,9,401,213,733,713,746,318,90' where id = 56;
UPDATE "excerpt" SET related_entities = '93,49,54,451,546,402,142,776,270,322,357,23,245,116,123,1,401,101,373,29,90,235,352,300,437,99,410,374,100,98,520,511' where id = 133;
UPDATE "excerpt" SET related_entities = '322,49,357,374,98,511,93,270,54,100,23,451,733,546,402,242,1,142,401,776,101,245,373,90,235,380,352,300,99,410,148,123,520' where id = 134;
UPDATE "excerpt" SET related_entities = '270,23,93,322,100,1,101,357,451,733,401,245,373,90,235,352,99,123,520,54,242,142,371,546,402,240,49,776,380,51,420,729,252,148,374,98,511' where id = 135;
UPDATE "excerpt" SET related_entities = '270,100,54,93,242,101,380,252,148,240,733,322,1,357,23,451,371,142,401,245,86,373,483,90,235,352,99,51,420,729,374,123,98,520,511' where id = 136;
UPDATE "excerpt" SET related_entities = '135,243,86,90,703,9,69,402,240,367,363' where id = 240;
UPDATE "excerpt" SET related_entities = '9,652,319,402,139,142,200,90,320,135,378,623' where id = 447;
UPDATE "excerpt" SET related_entities = '90,733,677,33,319,139,200,652,320' where id = 448;
UPDATE "excerpt" SET related_entities = '9,415,458,90,546,142,243,240,652,327' where id = 632;
UPDATE "excerpt" SET related_entities = '243,93,383,1,546,673,401,213,90' where id = 1142;
UPDATE "excerpt" SET related_entities = '401,652,93,243,142,546,1,673,357,245,213,90,485' where id = 1143;
UPDATE "excerpt" SET related_entities = '402,733,746,9,550,483,90,406,291,93,305,376,703' where id = 1811;
UPDATE "excerpt" SET related_entities = '240,402,320,406,733,9,142,401,213,90,376,12,135,275,427,22,219' where id = 1817;
UPDATE "excerpt" SET related_entities = '554,523,9,673,305,320,433,733,243,436,546,402,139,36,206,93,319,1,599,297,299,124,703,255,677,550,446,769,23,440,451,392,220,577,362,55,367,90,20,394,465,219,293,73,340,248,199,21' where id = 1822;
UPDATE "excerpt" SET related_entities = '440,340,546,673,305,320,554,9,733,93,243,402,139,36,433,436,319,1,297,299,124,703,255,677,550,446,769,23,451,392,577,362,55,367,90,20,206,394,465,219,211,73,523,248,199,21' where id = 1823;
UPDATE "excerpt" SET related_entities = '673,248,546,305,320,554,733,93,243,402,139,36,433,9,436,319,242,1,297,299,124,703,255,677,550,446,769,23,440,451,392,577,362,55,94,90.20,206,394,465,291,219,211,73,523,340,199' where id = 1824;
-- 708 was in related_entities
UPDATE "excerpt" SET related_entities = '401,142,427,90,761,148,374' where id = 139;
UPDATE "excerpt" SET related_entities = '401,142,761,427,90' where id = 140;
UPDATE "excerpt" SET related_entities = '9,425,733,200,713,455,90' where id = 186;
UPDATE "excerpt" SET related_entities = '677,299,36,319,90' where id = 451;
UPDATE "excerpt" SET related_entities = '36,299,319,568,677,90,212' where id = 452;
DELETE from entity where id=92;
DELETE from entity where id=708;
DELETE from entity_description where entity=92;
DELETE from entity_description where entity=708;
