/* XRAY mistaken identity fixes for B00JCDK5ME
  "War and Peace"
*/
-- Ramballe, original entry did not really identify
UPDATE "entity_description" SET text="Captain in 13th Light Regiment, Chevalier of the Legion of Honor.", source = 1 where entity = 4;
-- Was for Nicholas Tolstoy (1867 - 1938) Russian Orthodox priest
UPDATE "entity_description" SET text = "Grand marshal of the Russian court in 1805; Member of the Tsar's suite in 1812.", source = 1 where entity = 15;
-- Original entry did not really identify
UPDATE "entity_description" SET text = "(also Prince Vasili) - self-seeking man who has a low opinion of his children but seeks to further their interests.", source = 1 where entity = 90;
-- Same character as entity 90
UPDATE "entity_description" SET text = "(also Prince Vasili) - self-seeking man who has a low opinion of his children but seeks to further their interests.", source = 1 where entity = 92;
-- Original entry did not really identify
UPDATE "entity_description" SET text = "(also Count Bezuhov) - Pierre's father and very wealthy aristocrat who served in Catherine II's court.", source = 1 where entity = 135;
-- Count L. A. von Bennigsen, original entry did not really identify
UPDATE "entity_description" SET text = "German leader of Russians at Eylau (a draw) and Friedland (a decisive defeat). A senior commander in 1812.", source = 1 where entity = 136;
-- Anna Pávlovna Schérer, original entry did not really identify
UPDATE "entity_description" SET text = "A wealthy St. Petersburg socialite. Unmarried hostess of patriotic circle and friend of Countess Natalya Rostova.", source=1 where entity = 401;
