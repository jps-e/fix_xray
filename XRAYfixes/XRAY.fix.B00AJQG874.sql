/* XRAY mistaken identity fixes for B00AJQG874
   "How the Garcia Girls Lost Their Accents"
*/
-- Was for Atafu atoll in Tokelau.
UPDATE "entity_description" SET text='Hispaniola, the location of the Dominican Republic.' WHERE entity = 33;
-- Was for Buenos Días a Todos, a Chilean television morning show.
UPDATE "entity_description" SET text='Spanish for "Good morning"', source_wildcard = "buenos dias" WHERE entity = 46;
-- Was for the city of Bellevue, Washington.
UPDATE "entity_description" SET text='Bellevue Hospital, founded on March 31, 1736, is the oldest public hospital in the United States. Located on First Avenue in the Kips Bay neighborhood of Manhattan, New York City', source_wildcard = "Bellevue" WHERE entity = 99;
