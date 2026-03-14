1. สัตว์ในตำนาน (Legendary Animals) - 16 รายการ

- Hash: -2021043433 | Legendary White Elk
- Hash: -1747620994 | Legendary Boa
- Hash: 674287411   | Legendary Sun Alligator
- Hash: -1598866821 | Legendary Bull Alligator
- Hash: -1149999295 | Legendary White Beaver
- Hash: 2028722809  | Legendary Gaint Boar
- Hash: -389300196  | Legendary Wakpa Boar
- Hash: -1433814131 | Legendary Maza Cougar
- Hash: -1307757043 | Legendary Midnight Paw Coyote
- Hash: -1189368951 | Legendary Ghost Panther
- Hash: -1392359921 | Legendary Onyx Wolf
- Hash: -551216071  | Legendary Owiza Bear
- Hash: -511163808  | Legendary Chalk Horn Ram
- Hash: -1754211037 | Legendary Buck
- Hash: -915290938  | Legendary Winyan Bison
- Hash: -117665949  | Legendary Snowflake Moose

2. สัตว์ใหญ่ (Big Animals) - 57 รายการ
- สัตว์นักล่า
    - Bear (-1124266369)
    - Big Grey Wolf (-1143398950)
    - Cougar (90264823)
    - Panther (1654513481)
    - Alligator (-2004866590)
- สัตว์กินพืชใหญ่
    - Deer (1110710183)
    - Buck (-1963605336)
    - Bison (1556473961)
    - Moose (-1098441944)
    - Elk (-2021043433)
- ปศุสัตว์
    - Bull (1957001316)
    - Cow (-50684386)
    - Ox (556355544)
    - Merino Sheep (40345436)
    - Alpine Goat (-753902995)
    - Berkshire Pig (1007418994)
- นกขนาดใหญ่
    - Wild Turkey (-466054788)
    - Eagle (1459778951)
    - Vulture (1104697660)
    - Great Blue Heron (1095117488)
    - American White Pelican (1265966684)
- อื่นๆ
    - Snapping Turtle (-407730502)
    - American Badger (-1170118274)
    - North American Beaver (759906147)
    - Striped Skunk (-121266332)

- โอกาสได้รับ Item
    - Perfect Leather — หนังสัตว์สมบูรณ์ (90%)
    - Torn Leather — หนังสัตว์ขาด (70%)
    - Prime Meat — เนื้อสัตว์ชั้นดี (80%)
    - Gamey Meat — เนื้อสัตว์คุณภาพต่ำ (70%)

---------------- สัตว์นักล่า / สัตว์กินพืชใหญ่ / ปศุสัตว์ -----------------------------------
        givenItem = { "perfect_leather", "torn_leather", "gamey_meat" },
        givenAmount = { 1, 1, 1 },
        givenChance = { 90, 70, 70 },
        givenDisplay = { "Perfect Leather", "Torn Leather", "Gamey Meat" },
---------------- นก -----------------------------------
        givenItem = { "torn_leather", "gamey_meat" },
        givenAmount = { 1, 1 },
        givenChance = { 80, 70 },
        givenDisplay = { "Torn Leather", "Gamey Meat" },

----------------- ขายสัตว์ -------------------------------
        givenItem = { "prime_meat" },
        givenAmount = { 0 },
        givenChance = { 80 },

---------------------------------------------------------------------------

3. สัตว์เล็ก (Small Animals & Fish) - 35 รายการ
- สัตว์เล็ก
    - Rat (989669666)
    - Chipmunk (-1550768676)
    - Grey Squirrel (1465438313)
    - Bat (674267496)
    - Cuban Crab (-2037578922)
    - Crawfish (-1763055991)
    - Frogbull (-930822792)
    - Toad (1502581273)
- นกเล็ก
    - Blue Jay (1582986780)
    - Cardinal (1784941179)
    - Robin (-1210546580)
    - Songbird (-1910795227)
    - Sparrow (-1028170431)
    - Pigeon (111281960)
    - Woodpecker (510312109)
- ปลา
    - Largemouth Bass (122748261)
    - Steelhead Trout (490159652)
    - Salmon (41707457)
    - Blue Gill (-2116748615)
    - Perch (706485280) และปลาขนาดใหญ่อื่นๆ ในกลุ่ม Picked

- โอกาสได้รับ Item
    - Perfect Leather — หนังสัตว์สมบูรณ์ (30%)
    - Torn Leather — หนังสัตว์ขาด (90%)
    - Gamey Meat — เนื้อสัตว์คุณภาพต่ำ (80%)

        givenItem = { "torn_leather", "gamey_meat" },
        givenAmount = { 1, 1 },
        givenChance = { 50, 50 },
        givenDisplay = { "Torn Leather", "Gamey Meat" },

        ----------------- ขายสัตว์ -------------------------------
        givenItem = { "gamey_meat, prime_meat" },
        givenAmount = { 0, 0 },
        givenChance = { 80, 20 },