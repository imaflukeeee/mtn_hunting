------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------- VORP HUNTING SCRIPT ------------------------------------------------------------------------

Config = {}

Config.DevMode = false        -- โหมดนักพัฒนา (ให้เปลี่ยนเป็น false หากเปิดเซิร์ฟเวอร์จริง)

Config.Linux = false          -- หากคุณใช้เซิร์ฟเวอร์ระบบปฏิบัติการ Linux ให้ตั้งค่าเป็น true

Config.butcherfunction = true -- ตั้งค่าเป็น true หากต้องการใช้งานระบบคนขายเนื้อ (Butcher)

----------------------------- TRANSLATE HERE -------------------------------------
Config.Language = {
    NotHoldingAnimal = "คุณไม่มีสัตว์ที่จะขาย",
    NotInTheButcher = "ฉันไม่รับซื้อสัตว์ตัวนั้น",
    AnimalSold = "คุณได้รับเงินจำนวน",
    SkinnableAnimalstowed = "ได้รับ ",
    stow = "Stow",
    press = "Press",
    sell = "Sell",
    notabutcher = "คุณไม่มีสิทธิ์ขาย",
    dollar = " $",
    join = ", ",
    FullInventory = "ช่องเก็บของเต็ม"
}

-- Webhook moved to server.lua line 98 


------------------- PROMPT -----------------
Config.keys = {
    G = 0x760A9C6F, -- ตั้งค่าปุ่มกด โดยค่า 0x760A9C6F คือปุ่ม G (ใช้สำหรับขายของและเก็บซากสัตว์)
}

Config.aiButcherped = true -- ตั้งค่าเป็น true เพื่อให้ NPC คนขายเนื้อเกิดในแผนที่ (ตั้งเป็น false หากไม่ต้องการให้มีตัว NPC)

Config.joblocked = false   -- ล็อกระบบคนขายเนื้อไว้เฉพาะอาชีพที่กำหนดหรือไม่ (สามารถเปลี่ยนชื่ออาชีพได้ในส่วน butcherjob = "butcher")

------------------- Item Quantity Instructions -----------------
-- ส่วนนี้ใช้กำหนดช่วงจำนวนไอเทมที่จะได้รับ เมื่อสัตว์ตัวนั้นถูกตั้งค่า givenAmount = {0}
-- ตัวอย่าง : หากตั้งค่าเป็น {0} เมื่อผู้เล่นขายหรือแล่สัตว์ ระบบจะสุ่มจำนวนไอเทมให้ระหว่าง 1 ถึง 3 ชิ้น ตามค่ามาตรฐานที่ตั้งไว้ใน Config.ItemQuantity

Config.ItemQuantity = {
    Max = 1,
    Min = 1
}


Config.Butchers = {
    {
        butchername = "Valentine Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-339.0141, 767.6358, 115.5645),
        heading = 100.41544342041,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Strawberry Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-1753.143, -392.4201, 155.2578),
        heading = 181.37438964844,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Blackwater Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-754.0, -1285.158, 43.03),
        heading = 273.579,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Annesburg Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(2934.51, 1301.159, 43.48365),
        heading = 70.572128295898,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Van Horn Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(2991.844, 572.0218, 43.36182),
        heading = 259.52850341797,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Rhodes Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(1297.578, -1277.589, 74.88102),
        heading = 146.60472106934,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Armadillo Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-3691.438, -2623.152, -14.75121),
        heading = 0.46632757782936,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Tumbleweed Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-5510.371, -2947.005, -1.894515),
        heading = 251.54911804199,
        radius = 3.0,
        showblip = true,
        butcherped = true
    },
    {
        butchername = "Saint Denis Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(2819.54, -1331.21, 45.00),
        heading = 51.8221321532,
        radius = 4.0,
        showblip = true,
        butcherped = true
    }
}

----------------- คำแนะนำเกี่ยวกับการตั้งค่าสัตว์ -----------------
-- 1. การเพิ่มไอเทมรางวัล: หากต้องการเพิ่มไอเทมที่ได้รับจากสัตว์แต่ละตัว ให้แก้ไขในตาราง givenItem ตัวอย่างเช่น เปลี่ยนจาก givenItem = { "meat" } เป็น givenItem = { "meat", "feathers" }
-- 2. การกำหนดจำนวนไอเทม: หากมีการเพิ่มชื่อไอเทมใน givenItem มากกว่าหนึ่งชนิด คุณต้องเพิ่มค่าจำนวนในตาราง givenAmount ให้สอดคล้องกันด้วย ตัวอย่างเช่น เปลี่ยนจาก givenAmount = { 0 } เป็น givenAmount = { 0, 0 }
-- 3. การสุ่มจำนวน (ค่ามาตรฐาน): หากตั้งค่า givenAmount = { 0 } ระบบจะสุ่มจำนวนไอเทมให้ระหว่างค่า Min และ Max ที่ตั้งไว้ในส่วนของ ItemQuantity
-- 4. การสุ่มจำนวน (ระบุช่วง): หากตั้งค่า givenAmount = { {2, 5} } ระบบจะสุ่มจำนวนให้ระหว่างตัวเลขตัวแรกและตัวที่สองที่ระบุไว้สำหรับไอเทมนั้นๆ
-- ตัวอย่างเช่น : หากตั้งค่า givenItem = {"meat", "feathers", "claws", "beak"} และ givenAmount = { {1, 4}, {2, 5}, 0, 1 } ผลลัพธ์ที่ได้คือ: จะได้เนื้อ 1-4 ชิ้น, ขน 2-5 ชิ้น, กรงเล็บ (สุ่มตามค่า Min/Max มาตรฐาน) และจะได้จะงอยปาก 1 ชิ้นแน่นอน
-- การลบหนัง: หากตั้งค่า deletePelt = true ระบบจะลบหนังทิ้งทันทีหลังจากที่เก็บชิ้นส่วนจากสัตว์ตัวนั้นแล้ว

----------------- ข้อควรระวังสำคัญ -----------------
-- การเพิ่มสัตว์และค้นหา Hash: หากต้องการเพิ่มสัตว์ชนิดใหม่หรือหาค่า Model Hash ให้ถือสัตว์หรือหนังผืนนั้นไว้แล้วพิมพ์คำสั่ง /animal
-- การตรวจสอบ Log: คุณสามารถตรวจสอบค่า Hash ของสัตว์ที่คุณเพิ่งทำการแล่/ถอนขน/จัดเก็บ ได้จาก Log ในหน้าต่าง F6 หรือ F8
-- ฐานข้อมูลไอเทม: ชื่อไอเทมที่นำมาตั้งค่า ต้องมีอยู่ในฐานข้อมูล (Database) ของเซิร์ฟเวอร์ คุณจึงจะได้รับไอเทมนั้นเข้ากระเป๋าจริง

-- สัตว์ที่ถูกแล่เนื้อ / ถอนขน / หรือจัดเก็บเข้ากระเป๋า-- สัตว์ที่ถูกแล่เนื้อ / ถอนขน / หรือจัดเก็บเข้ากระเป๋า
Config.SkinnableAnimals = {
    -- ==========================================
    -- [ กลุ่มที่ 1: สัตว์เล็ก และ นก ] 
    -- โอกาสดรอป: หนังขาด 80% | เนื้อคุณภาพต่ำ 90%
    -- ==========================================
    [989669666]   = { name = "Rat", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_rat", action = "Picked", type = "satchel_textures" },
    [-1550768676] = { name = "Chipmunk", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_chipmunk", action = "Picked", type = "satchel_textures" },
    [1465438313]  = { name = "Grey Squirrel", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_squirrel_grey", action = "Picked", type = "satchel_textures" },
    [674267496]   = { name = "Bat", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bat", action = "Picked", type = "satchel_textures" },
    [-2037578922] = { name = "Cuban Crab", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_crab", action = "Picked", type = "satchel_textures" },
    [-1763055991] = { name = "Crawfish", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_crawfish", action = "Picked", type = "satchel_textures" },
    [-930822792]  = { name = "Frogbull", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_frogbull", action = "Picked", type = "satchel_textures" },
    [1502581273]  = { name = "Toad", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_toad", action = "Picked", type = "satchel_textures" },
    [1582986780]  = { name = "Blue Jay", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bluejay", action = "Picked", type = "satchel_textures" },
    [1784941179]  = { name = "Cardinal", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_cardinal", action = "Picked", type = "satchel_textures" },
    [-1210546580] = { name = "Robin", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_robin", action = "Picked", type = "satchel_textures" },
    [-1910795227] = { name = "Songbird", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_songbird", action = "Picked", type = "satchel_textures" },
    [-1028170431] = { name = "Sparrow", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_sparrow", action = "Picked", type = "satchel_textures" },
    [111281960]   = { name = "Pigeon", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_pigeon", action = "Picked", type = "satchel_textures" },
    [510312109]   = { name = "Red-bellied Woodpecker", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_woodpecker_redbellied", action = "Picked", type = "satchel_textures" },
    [729471181]   = { name = "Pileated Woodpecker", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_woodpecker_pileated", action = "Picked", type = "satchel_textures" },
    [-292997097]  = { name = "Cedar waxwing", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_cedarwaxwing", action = "Picked", type = "satchel_textures" },
    [98537260]    = { name = "Crow", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_crow", action = "Picked", type = "satchel_textures" },
    [-1302821723] = { name = "Hooded Oriole", givenItem = { "torn_leather", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 80, 90 }, givenDisplay = { "Torn Leather", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_oriole_hooded", action = "Picked", type = "satchel_textures" },

    -- ==========================================
    -- [ กลุ่มที่ 2: สัตว์กินพืช สัตว์ทั่วไป และนกใหญ่ ]
    -- โอกาสดรอป: สมบูรณ์ 10% | ขาด 75% | เนื้อดี 30% | เนื้อต่ำ 70%
    -- ==========================================
    [-1797625440] = { name = "Armadillo", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_armadillo", action = "Skinned" },
    [-1170118274] = { name = "American Badger", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_badger", action = "Skinned" },
    [-1003616053] = { name = "Duck", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_duck_mallard", action = "Skinned", type = "satchel_textures" },
    [1459778951]  = { name = "Eagle", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_eagle_bald", action = "Skinned", type = "satchel_textures" },
    [831859211]   = { name = "Egret", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_egret_little", action = "Skinned", type = "satchel_textures" },
    [252669332]   = { name = "American Red Fox", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_fox_red", action = "Skinned" },
    [1104697660]  = { name = "Vulture", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_vulture_western", action = "Skinned", type = "satchel_textures" },
    [-407730502]  = { name = "Snapping Turtle", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snapping_turtle", action = "Skinned", type = "satchel_textures" },
    [-466054788]  = { name = "Wild Turkey", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_turkey_eastern", action = "Skinned", type = "satchel_textures" },
    [-2011226991] = { name = "Wild Turkey", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_turkey_eastern", action = "Skinned", type = "satchel_textures" },
    [-166054593]  = { name = "Wild Turkey", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_turkey_eastern", action = "Skinned", type = "satchel_textures" },
    [-22968827]   = { name = "Water Snake", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakewater", action = "Skinned", type = "satchel_textures" },
    [-229688157]  = { name = "CottonMouth Water Snake", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakewater", action = "Skinned", type = "satchel_textures" },
    [-1790499186] = { name = "Snake Red Boa", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakeredboa", action = "Skinned", type = "satchel_textures" },
    [1464167925]  = { name = "Snake Fer-De-Lance", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakeferdelance", action = "Skinned", type = "satchel_textures" },
    [846659001]   = { name = "Black-Tailed Rattlesnake", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakeblacktailrattle", action = "Skinned", type = "satchel_textures" },
    [545068538]   = { name = "Western Rattlesnake", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakeblacktailrattle", action = "Skinned", type = "satchel_textures" },
    [-121266332]  = { name = "Striped Skunk", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_skunk", action = "Skinned", type = "satchel_textures" },
    [-164963696]  = { name = "Herring Seagull", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_seagull_herring", action = "Skinned", type = "satchel_textures" },
    [-1076508705] = { name = "Roseate Spoonbill", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_roseatespoonbill", action = "Skinned", type = "satchel_textures" },
    [2023522846]  = { name = "Dominique Rooster", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_rooster_dominique", action = "Skinned", type = "satchel_textures" },
    [-466687768]  = { name = "Red-Footed Booby", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_red_footed_booby", action = "Skinned", type = "satchel_textures" },
    [-575340245]  = { name = "Wester Raven", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_raven", action = "Skinned", type = "satchel_textures" },
    [1458540991]  = { name = "North American Racoon", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_raccoon", action = "Skinned", type = "satchel_textures" },
    [-541762431]  = { name = "Black-Tailed Jackrabbit", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_rabbit", action = "Skinned", type = "satchel_textures" },
    [2079703102]  = { name = "Greater Prairie Chicken", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_prairie_chicken", action = "Skinned", type = "satchel_textures" },
    [-1414989025] = { name = "Wirginia Possum", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_opossum", action = "Skinned", type = "satchel_textures" },
    [1416324601]  = { name = "Ring-Necked Pheasant", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_pheasant_ringneck", action = "Skinned", type = "satchel_textures" },
    [1265966684]  = { name = "American White Pelican", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_pelican_white", action = "Skinned", type = "satchel_textures" },
    [-1797450568] = { name = "Blue And Yellow Macaw", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_parrot_blueyellow", action = "Skinned", type = "satchel_textures" },
    [120598262]   = { name = "Californian Condor", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_condor", action = "Skinned", type = "satchel_textures" },
    [-2063183075] = { name = "Dominique Chicken", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_chicken_dominique", action = "Skinned", type = "satchel_textures" },
    [-2073130256] = { name = "Double-Crested Cormorant", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_cormorant", action = "Skinned", type = "satchel_textures" },
    [-564099192]  = { name = "Whooping Crane", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_crane", action = "Skinned", type = "satchel_textures" },
    [45741642]    = { name = "Gila Monster", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_gila_monster", action = "Skinned", type = "satchel_textures" },
    [723190474]   = { name = "Canada Goose", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_goosecanada", action = "Skinned", type = "satchel_textures" },
    [-2145890973] = { name = "Ferruinous Hawk", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_hawk_roughlegged", action = "Skinned", type = "satchel_textures" },
    [1095117488]  = { name = "Great Blue Heron", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_loon_yellowbilled", action = "Skinned", type = "satchel_textures" },
    [-1854059305] = { name = "Green Iguana", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_iguana", action = "Skinned", type = "satchel_textures" },
    [-593056309]  = { name = "Desert Iguana", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_iguanadesert", action = "Skinned", type = "satchel_textures" },
    [386506078]   = { name = "Common Loon", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_loon_common", action = "Skinned", type = "satchel_textures" },
    [-1134449699] = { name = "American Muskrat", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_muskrat", action = "Skinned", type = "satchel_textures" },
    [-86244272]   = { name = "Great Horned Owl", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_owl_great", action = "Skinned", type = "satchel_textures" },
    [759906147]   = { name = "North American Beaver", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_beaver", action = "Skinned", type = "satchel_textures" },
    [1755643085]  = { name = "American Pronghorn Doe", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_pronghorn", action = "Skinned" },
    [-1568716381] = { name = "Big Horn Ram", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bighornram", action = "Skinned" },
    [-1963605336] = { name = "Buck", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_buck", action = "Skinned" },
    [1556473961]  = { name = "Bison", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_buffal", action = "Skinned" },
    [367637652]   = { name = "Bison", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_buffal", action = "Skinned" },
    [1957001316]  = { name = "Bull", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bull_angus", action = "Skinned" },
    [1110710183]  = { name = "Deer", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_deer", action = "Skinned", type = "satchel_textures" },
    [40345436]    = { name = "Merino Sheep", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_sheep", action = "Skinned", type = "satchel_textures" },
    [1007418994]  = { name = "Berkshire Pig", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_pig_berkshire", action = "Skinned", type = "satchel_textures" },
    [-50684386]   = { name = "Florida Cracker Cow", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_cow", action = "Skinned", type = "satchel_textures" },
    [480688259]   = { name = "Coyote", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_coyote", action = "Skinned", type = "satchel_textures" },
    [-753902995]  = { name = "Alpine Goat", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_goat", action = "Skinned", type = "satchel_textures" },
    [1751700893]  = { name = "Peccary Pig", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_pig_oldspot", action = "Skinned", type = "satchel_textures" },
    [-1098441944] = { name = "Moose", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_moose", action = "Skinned", type = "satchel_textures" },
    [556355544]   = { name = "Angus Ox", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_ox_angus", action = "Skinned", type = "satchel_textures" },
    [195700131]   = { name = "Hereford Bull", givenItem = { "perfect_leather", "torn_leather", "prime_meat", "gamey_meat" }, givenAmount = { 1, 1, 1, 1 }, givenChance = { 10, 75, 30, 70 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bull_hereford", action = "Skinned", type = "satchel_textures" },

    -- ==========================================
    -- [ กลุ่มที่ 3: สัตว์นักล่า ]
    -- โอกาสดรอป: สมบูรณ์ 25% | ขาด 60% | เนื้อดี 60%
    -- ==========================================
    [-1124266369] = { name = "Bear", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bear", action = "Skinned" },
    [-1143398950] = { name = "Big Grey Wolf", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_wolf_gray", action = "Skinned" },
    [-885451903]  = { name = "Medium Grey Wolf", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_wolf_timber", action = "Skinned" },
    [-829273561]  = { name = "Small Grey Wolf", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_wolf_timber", action = "Skinned" },
    [1654513481]  = { name = "Panther", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_panther", action = "Skinned" },
    [90264823]    = { name = "Cougar", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bobcat", action = "Skinned" },
    [-1892280447] = { name = "Alligator Small", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_alligator", action = "Skinned", type = "satchel_textures" },
    [-2004866590] = { name = "Alligator", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_alligator_medium", action = "Skinned", type = "satchel_textures" },
    [-1295720802] = { name = "Northen American Alligator", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_alligator_medium", action = "Skinned", type = "satchel_textures" },
    [730092646]   = { name = "American Black Bear", givenItem = { "perfect_leather", "torn_leather", "prime_meat" }, givenAmount = { 1, 1, 1 }, givenChance = { 25, 60, 60 }, givenDisplay = { "Perfect Leather", "Torn Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_bear_black", action = "Skinned", type = "satchel_textures" },

    -- ==========================================
    -- [ กลุ่มที่ 4: สัตว์ในตำนาน ]
    -- โอกาสดรอป: สมบูรณ์ 100% | เนื้อดี 100%
    -- ==========================================
    [-2021043433] = { name = "Legendary White Elk", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_elk", action = "Skinned", type = "satchel_textures" },
    [-1747620994] = { name = "Legendary Boa", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_snakeblacktailrattle", action = "Skinned", type = "satchel_textures" },
    [674287411]   = { name = "Legendary Sun Alligator", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_alligator_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-1598866821] = { name = "Legendary Bull Alligator", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "animal_alligator", action = "Skinned", type = "satchel_textures" },
    [-1149999295] = { name = "Legendary White Beaver", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_beaver_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [2028722809]  = { name = "Legendary Gaint Boar", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_boar_legendary_01", action = "Skinned", type = "inventory_items_mp" },
    [-389300196]  = { name = "Legendary WakpaBoar", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_boar_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-1433814131] = { name = "Legendary Maza Cougar", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_cougar_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-1307757043] = { name = "Legendary Midnight Paw Coyote", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_coyote_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-1189368951] = { name = "Legendary Ghost Panther", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_panther_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-1392359921] = { name = "Legendary Onyx Wolf", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_wolf_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-551216071]  = { name = "Legendary Owiza Bear", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_bear_legendary_01", action = "Skinned", type = "inventory_items_mp" },
    [-511163808]  = { name = "Legendary Chalk Horn Ram", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_ram_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-1754211037] = { name = "Legendary Buck", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_buck_legendary_01", action = "Skinned", type = "inventory_items_mp" },
    [-915290938]  = { name = "Legendary Winyan Bison", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_bison_legendary_02", action = "Skinned", type = "inventory_items_mp" },
    [-117665949]  = { name = "Legendary Snowflake Moose", givenItem = { "perfect_leather", "prime_meat" }, givenAmount = { 1, 1 }, givenChance = { 100, 100 }, givenDisplay = { "Perfect Leather", "Prime Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "mp_animal_moose_legendary_01", action = "Skinned", type = "inventory_items_mp" },

    -- ==========================================
    -- [ กลุ่มที่ 5: ปลา (ได้แต่เนื้อ) ]
    -- ==========================================
    -- ปลาขนาดทั่วไป (เนื้อต่ำ 80%)
    [706485280]   = { name = "Perch", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_perch", action = "Picked ", type = "inventory_items" },
    [513249462]   = { name = "Redfin Pickerel", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_redfin_pickerel", action = "Picked ", type = "inventory_items" },
    [1520661]     = { name = "Rock Bass", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_rock_bass", action = "Picked ", type = "inventory_items" },
    [1860580756]  = { name = "Smallmouth Bass", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_smallmouth_bass", action = "Picked ", type = "inventory_items" },
    [1493541632]  = { name = "Bullhead Catfish", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_bullhead_catfish", action = "Picked ", type = "inventory_items" },
    [-2116748615] = { name = "Blue Gill", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_bluegill", action = "Picked", type = "inventory_items" },
    [264156159]   = { name = "Chain Pickerel", givenItem = { "gamey_meat" }, givenAmount = { 1 }, givenChance = { 80 }, givenDisplay = { "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_chain_pickerel", action = "Picked ", type = "inventory_items" },
    
    -- ปลาขนาดใหญ่ (เนื้อดี 40% | เนื้อต่ำ 60%)
    [703712157]   = { name = "Large Bullhead Catfish", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_bullhead_catfish", action = "Picked ", type = "inventory_items" },
    [-1182983171] = { name = "Large Chain Pickerel", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_chain_pickerel", action = "Picked ", type = "inventory_items" },
    [122748261]   = { name = "Largemouth Bass", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_largemouth_bass", action = "Picked ", type = "inventory_items" },
    [-452224784]  = { name = "Large Perch", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_perch", action = "Picked ", type = "inventory_items" },
    [490159652]   = { name = "Steelhead Trout", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_steelhead_trout", action = "Picked ", type = "inventory_items" },
    [-243188398]  = { name = "Large Redfin Pickerel", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_redfin_pickerel", action = "Picked ", type = "inventory_items" },
    [-1981561472] = { name = "Large Rock Bass", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_rock_bass", action = "Picked ", type = "inventory_items" },
    [41707457]    = { name = "Salmon", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_sockeye_salmon", action = "Picked ", type = "inventory_items" },
    [1867262572]  = { name = "Large Blue Gill", givenItem = { "prime_meat", "gamey_meat" }, givenAmount = { 1, 1 }, givenChance = { 40, 60 }, givenDisplay = { "Prime Meat", "Gamey Meat" }, money = 0, gold = 0, rolPoints = 0, xp = 1, texture = "provision_fish_bluegill", action = "Picked ", type = "inventory_items" },
}

-- ระบบสำหรับนำซากสัตว์ (Carcass) ไปขายคนขายเนื้อ
Config.Animals = {
    -- [ นำซากสัตว์ใหญ่/นักล่าไปขาย ได้เนื้อชั้นดี ]
    [-1124266369]  = { name = "Bear", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.50, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 957520252, good = 143941906, perfect = 1292673537 },
    [-15687816381] = { name = "Big Horn Ram", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.65, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1796037447, good = -476045512, perfect = 1795984405 },
    [2028722809]   = { name = "Boar", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.1, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1248540072, good = nil, perfect = -1858513856 },
    [-1963605336]  = { name = "Buck", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.15, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1603936352, good = -868657362, perfect = -702790226 },
    [1556473961]   = { name = "Bison", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1730060063, good = -591117838, perfect = -237756948 },
    [1957001316]   = { name = "Bull", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.5, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 9293261, good = -336086818, perfect = -53270317 },
    [1110710183]   = { name = "Deer", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.5, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -662178186, good = -1827027577, perfect = -1035515486 },
    [-1143398950]  = { name = "Big Grey Wolf", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.15, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-885451903]   = { name = "Medium Grey Wolf", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4.15, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-829273561]   = { name = "Small Grey Wolf", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4.80, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-2021043433]  = { name = "Elk", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.90, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 2053771712, good = 1181652728, perfect = -1332163079 },
    [40345436]     = { name = "Merino Sheep", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1729948479, good = -1317365569, perfect = 146620167 },
    [1755643085]   = { name = "American Pronghorn Doe", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -983605026, good = 554578289, perfect = -1544126829 },
    [1007418994]   = { name = "Berkshire Pig", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -308965548, good = -57190831, perfect = -1102272634 },
    [1654513481]   = { name = "Panther", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 284468323, good = -395646254, perfect = 1969175294 },
    [90264823]     = { name = "Cougar", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1914602340, good = 459744337, perfect = -1791452194 },
    [-50684386]    = { name = "Florida Cracker Cow", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 334093551, good = 120594075, perfect = -845037222 },
    [480688259]    = { name = "Coyote", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -258096473, good = 120939141, perfect = -794277189 },
    [-753902995]   = { name = "Alpine Goat", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.50, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 699990316, good = 171071442, perfect = -1648383828 },
    [1751700893]   = { name = "Peccary Pig", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -99092070, good = -1379330323, perfect = 1963510418 },
    [-1098441944]  = { name = "Moose", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.5, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1868576868, good = 1636891382, perfect = -217731719 },
    [556355544]    = { name = "Angus Ox", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 4623248928, good = 1208128650, perfect = 659601266 },
    [-1892280447]  = { name = "Alligator Small", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 180623689, good = -802026654, perfect = -1625078531 },
    [-2004866590]  = { name = "Alligator", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 3, poor = -1243878166, good = nil, perfect = -1475338121 },
    [759906147]    = { name = "North American Beaver", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -269450319, good = -2059726619, perfect = 854596618 },
    [730092646]    = { name = "American Black Bear", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3.5, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1083865179, good = 1490032862, perfect = 663376218 },

    -- [ นำซากนก/สัตว์เล็กไปขาย ได้เนื้อต่ำ ]
    [-1003616053]  = { name = "Duck", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.65, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1459778951]   = { name = "Eagle", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.10, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [831859211]    = { name = "Egret", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.10, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [252669332]    = { name = "American Red Fox", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1647012424, good = 238733925, perfect = 500722008 },
    [1104697660]   = { name = "Vulture", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-407730502]   = { name = "Snapping Turtle", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466054788]   = { name = "Wild Turkey", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2011226991]  = { name = "Wild Turkey", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-166054593]   = { name = "Wild Turkey", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-22968827]    = { name = "Water Snake", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1790499186]  = { name = "Snake Red Boa", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1464167925]   = { name = "Snake Fer-De-Lance", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [846659001]    = { name = "Black-Tailed Rattlesnake", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [545068538]    = { name = "Western Rattlesnake", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-121266332]   = { name = "Striped Skunk", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-164963696]   = { name = "Herring Seagull", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.5, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1076508705]  = { name = "Roseate Spoonbill", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.95, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2023522846]   = { name = "Dominique Rooster", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466687768]   = { name = "Red-Footed Booby", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.95, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-575340245]   = { name = "Wester Raven", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1458540991]   = { name = "North American Racoon", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-541762431]   = { name = "Black-Tailed Jackrabbit", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2079703102]   = { name = "Greater Prairie Chicken", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1414989025]  = { name = "Wirginia Possum", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1416324601]   = { name = "Ring-Necked Pheasant", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1265966684]   = { name = "American White Pelican", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 1.50, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1797450568]  = { name = "Blue And Yellow Macaw", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.50, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [120598262]    = { name = "Californian Condor", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2063183075]  = { name = "Dominique Chicken", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2073130256]  = { name = "Double-Crested Cormorant", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-564099192]   = { name = "Whooping Crane", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [45741642]     = { name = "Gila Monster", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [723190474]    = { name = "Canada Goose", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2145890973]  = { name = "Ferruinous Hawk", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.5, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1095117488]   = { name = "Great Blue Heron", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1854059305]  = { name = "Green Iguana", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-593056309]   = { name = "Desert Iguana", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.75, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [386506078]    = { name = "Common Loon", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1134449699]  = { name = "American Muskrat", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-86244272]    = { name = "Great Horned Owl", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 2.25, gold = 0, rolPoints = 0, xp = 2, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },

    -- [ ปลา (นำไปขายแบบซากได้ตามเกรดเนื้อ) ]
    [-711779521]   = { name = "Longnose Gar", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 6, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1553593715]  = { name = "Muskie", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 6, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-300867788]   = { name = "Lake Sturgeon", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1538187374]   = { name = "Channel Catfish", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 5, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [697075200]    = { name = "Northern Pike", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 5, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1867262572]   = { name = "Bluegill", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 5, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1493541632]   = { name = "Bullhead catfish", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 5, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [3111984125]   = { name = "Chain Pickerl", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 5, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [463643368]    = { name = "bigmouth bass", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [3842742512]   = { name = "Perch", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [134747314]    = { name = "Rainbow trout", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [4051778898]   = { name = "Redfin Pickerl", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2313405824]   = { name = "Rock Bass", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2410477101]   = { name = "Smallmouth bass", givenItem = { "gamey_meat" }, givenDisplay = { "Gamey Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 3, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [543892122]    = { name = "Salmon Redfish", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1702636991]   = { name = "Salmon sockeye", givenItem = { "prime_meat" }, givenDisplay = { "Prime Meat" }, givenAmount = { 1 }, givenChance = { 100 }, money = 4, gold = 0, rolPoints = 0, xp = 1, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
}