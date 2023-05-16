SandboxVars = {
    VERSION = 5,
    -- Changing this sets the "Population Multiplier" advanced option. Default=Normal
    -- 1 = Insane
    -- 2 = Very High
    -- 3 = High
    -- 4 = Normal
    -- 5 = Low
    Zombies = 3,
    -- Default=Urban Focused
    -- 1 = Urban Focused
    Distribution = 1,
    -- Default=1 Hour
    -- 1 = 15 Minutes
    -- 2 = 30 Minutes
    -- 3 = 1 Hour
    -- 4 = 2 Hours
    -- 5 = 3 Hours
    -- 6 = 4 Hours
    -- 7 = 5 Hours
    -- 8 = 6 Hours
    -- 9 = 7 Hours
    -- 10 = 8 Hours
    -- 11 = 9 Hours
    -- 12 = 10 Hours
    -- 13 = 11 Hours
    -- 14 = 12 Hours
    -- 15 = 13 Hours
    -- 16 = 14 Hours
    -- 17 = 15 Hours
    -- 18 = 16 Hours
    -- 19 = 17 Hours
    -- 20 = 18 Hours
    -- 21 = 19 Hours
    -- 22 = 20 Hours
    -- 23 = 21 Hours
    -- 24 = 22 Hours
    -- 25 = 23 Hours
    DayLength = 3,
    StartYear = 1,
    -- Default=July
    -- 1 = January
    -- 2 = February
    -- 3 = March
    -- 4 = April
    -- 5 = May
    -- 6 = June
    -- 7 = July
    -- 8 = August
    -- 9 = September
    -- 10 = October
    -- 11 = November
    StartMonth = 7,
    StartDay = 9,
    -- Default=9 AM
    -- 1 = 7 AM
    -- 2 = 9 AM
    -- 3 = 12 PM
    -- 4 = 2 PM
    -- 5 = 5 PM
    -- 6 = 9 PM
    -- 7 = 12 AM
    -- 8 = 2 AM
    StartTime = 7,
    -- Default=0-30 Days
    -- 1 = Instant
    -- 2 = 0-30 Days
    -- 3 = 0-2 Months
    -- 4 = 0-6 Months
    -- 5 = 0-1 Year
    -- 6 = 0-5 Years
    -- 7 = 2-6 Months
    WaterShut = 2,
    -- Default=0-30 Days
    -- 1 = Instant
    -- 2 = 0-30 Days
    -- 3 = 0-2 Months
    -- 4 = 0-6 Months
    -- 5 = 0-1 Year
    -- 6 = 0-5 Years
    -- 7 = 2-6 Months
    ElecShut = 2,
    -- Minimum=-1 Maximum=2147483647 Default=14
    WaterShutModifier = 14,
    -- Minimum=-1 Maximum=2147483647 Default=14
    ElecShutModifier = 14,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    FoodLoot = 2,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    CannedFoodLoot = 2,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    LiteratureLoot = 3,
    -- Seeds, Nails, Saws, Fishing Rods, various tools, etc... Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    SurvivalGearsLoot = 4,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    MedicalLoot = 3,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    WeaponLoot = 3,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    RangedWeaponLoot = 3,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    AmmoLoot = 4,
    -- Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    MechanicsLoot = 3,
    -- Everything else. Also affects foraging for all items in Town/Road zones. Default=Rare
    -- 1 = None (not recommended)
    -- 2 = Insanely Rare
    -- 3 = Extremely Rare
    -- 4 = Rare
    -- 5 = Normal
    -- 6 = Common
    OtherLoot = 4,
    -- Controls the global temperature. Default=Normal
    -- 1 = Very Cold
    -- 2 = Cold
    -- 3 = Normal
    -- 4 = Hot
    Temperature = 3,
    -- Controls how often it rains. Default=Normal
    -- 1 = Very Dry
    -- 2 = Dry
    -- 3 = Normal
    -- 4 = Rainy
    Rain = 3,
    -- Number of days until 100% growth. Default=Normal (100 Days)
    -- 1 = Very Fast (20 Days)
    -- 2 = Fast (50 Days)
    -- 3 = Normal (100 Days)
    -- 4 = Slow (200 Days)
    ErosionSpeed = 4,
    -- Number of days until 100% growth. -1 means no growth. Zero means use the Erosion Speed option. Maximum 36,500 (100 years). Minimum=-1 Maximum=36500 Default=0
    ErosionDays = 0,
    -- Modifies the base XP gain from actions by this number. Minimum=0.00 Maximum=1000.00 Default=1.00
    XpMultiplier = 1.0,
    -- Determines if the XP multiplier affects passively levelled skills eg. Fitness and Strength.
    XpMultiplierAffectsPassive = false,
    -- Use this to multiply or reduce engine general loudness. Minimum=0.00 Maximum=100.00 Default=1.00
    ZombieAttractionMultiplier = 1.0,
    -- Governs whether cars are locked, need keys to start etc.
    VehicleEasyUse = false,
    -- Controls the speed of plant growth. Default=Normal
    -- 1 = Very Fast
    -- 2 = Fast
    -- 3 = Normal
    -- 4 = Slow
    Farming = 3,
    -- Controls the time it takes for food to break down in a composter. Default=2 Weeks
    -- 1 = 1 Week
    -- 2 = 2 Weeks
    -- 3 = 3 Weeks
    -- 4 = 4 Weeks
    -- 5 = 6 Weeks
    -- 6 = 8 Weeks
    -- 7 = 10 Weeks
    CompostTime = 2,
    -- How fast character's hunger, thirst and fatigue will decrease. Default=Normal
    -- 1 = Very Fast
    -- 2 = Fast
    -- 3 = Normal
    -- 4 = Slow
    StatsDecrease = 3,
    -- Controls the abundance of fish and general forage. Default=Normal
    -- 1 = Very Poor
    -- 2 = Poor
    -- 3 = Normal
    -- 4 = Abundant
    NatureAbundance = 3,
    -- Default=Sometimes
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    Alarm = 4,
    -- How frequently homes and buildings will be discovered locked Default=Very Often
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    LockedHouses = 6,
    -- Spawn with chips, water bottle, school bag, baseball bat and a hammer.
    StarterKit = false,
    -- Nutritional value of food affects the player's condition.
    Nutrition = true,
    -- Define how fast the food will spoil inside or outside fridge. Default=Normal
    -- 1 = Very Fast
    -- 2 = Fast
    -- 3 = Normal
    -- 4 = Slow
    FoodRotSpeed = 3,
    -- Define how much a fridge will be effective. Default=Normal
    -- 1 = Very Low
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    FridgeFactor = 3,
    -- Items will respawn in already-looted containers in towns and trailer parks. Items will not respawn in player-made containers. Default=None
    -- 1 = None
    -- 2 = Every Day
    -- 3 = Every Week
    -- 4 = Every Month
    LootRespawn = 1,
    -- When > 0, loot will not respawn in zones that have been visited within this number of in-game hours. Minimum=0 Maximum=2147483647 Default=0
    SeenHoursPreventLootRespawn = 0,
    -- A comma-separated list of item types that will be removed after HoursForWorldItemRemoval hours.
    WorldItemRemovalList = "Base.Hat,Base.Glasses,Base.Maggots,EHE.EvacuationFlyer,EHE.EmergencyFlyer,EHE.QuarantineFlyer,EHE.PreventionFlyer,EHE.NoticeFlyer",
    -- Number of hours since an item was dropped on the ground before it is removed.  Items are removed the next time that part of the map is loaded.  Zero means items are not removed. Minimum=0.00 Maximum=2147483647.00 Default=24.00
    HoursForWorldItemRemoval = 24.0,
    -- If true, any items *not* in WorldItemRemovalList will be removed.
    ItemRemovalListBlacklistToggle = false,
    -- This will affect starting world erosion and food spoilage. Default=0
    -- 1 = 0
    -- 2 = 1
    -- 3 = 2
    -- 4 = 3
    -- 5 = 4
    -- 6 = 5
    -- 7 = 6
    -- 8 = 7
    -- 9 = 8
    -- 10 = 9
    -- 11 = 10
    -- 12 = 11
    TimeSinceApo = 1,
    -- Will influence how much water the plant will lose per day and their ability to avoid disease. Default=Normal
    -- 1 = Very High
    -- 2 = High
    -- 3 = Normal
    -- 4 = Low
    PlantResilience = 3,
    -- Controls the yield of plants when harvested. Default=Normal
    -- 1 = Very Poor
    -- 2 = Poor
    -- 3 = Normal
    -- 4 = Abundant
    PlantAbundance = 3,
    -- Recovery from being tired from performing actions Default=Normal
    -- 1 = Very Fast
    -- 2 = Fast
    -- 3 = Normal
    -- 4 = Slow
    EndRegen = 3,
    -- How regularly helicopters pass over the event zone. Default=Once
    -- 1 = Never
    -- 2 = Once
    -- 3 = Sometimes
    Helicopter = 1,
    -- How often zombie attracting metagame events like distant gunshots will occur. Default=Sometimes
    -- 1 = Never
    -- 2 = Sometimes
    MetaEvent = 3,
    -- Governs night-time metagame events during the player's sleep. Default=Never
    -- 1 = Never
    -- 2 = Sometimes
    SleepingEvent = 1,
    -- Increase/decrease the chance of electrical generators spawning on the map. Default=Sometimes
    -- 1 = Extremely Rare
    -- 2 = Rare
    -- 3 = Sometimes
    -- 4 = Often
    GeneratorSpawning = 3,
    -- How much fuel is consumed per in-game hour. Minimum=0.00 Maximum=100.00 Default=1.00
    GeneratorFuelConsumption = 0.5,
    -- Increase/decrease probability of discovering randomized safe houses on the map: either burnt out, containing loot stashes, dead survivor bodies etc. Default=Rare
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    SurvivorHouseChance = 1,
    -- Default=Rare
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    VehicleStoryChance = 3,
    -- Default=Rare
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    ZoneStoryChance = 3,
    -- Impacts on how often a looted map will have annotations marked on it by a deceased survivor. Default=Sometimes
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    AnnotatedMapChance = 4,
    -- Adds free points during character creation. Minimum=-100 Maximum=100 Default=0
    CharacterFreePoints = 0,
    -- Gives player-built constructions extra hit points so they are more resistant to zombie damage. Default=Normal
    -- 1 = Very Low
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    ConstructionBonusPoints = 3,
    -- Governs the ambient lighting at night. Default=Normal
    -- 1 = Pitch Black
    -- 2 = Dark
    -- 3 = Normal
    NightDarkness = 3,
    -- Governs the time from dusk to dawn. Default=Normal
    -- 1 = Always Night
    -- 2 = Long
    -- 3 = Normal
    -- 4 = Short
    NightLength = 3,
    -- Increase and decrease the impact injuries have on your body, and their healing time. Default=Normal
    -- 1 = Low
    -- 2 = Normal
    InjurySeverity = 2,
    -- Enable or disable broken limbs when survivors receive injuries from impacts, zombie damage and falls.
    BoneFracture = true,
    -- How long before zombie bodies disappear. Minimum=-1.00 Maximum=2147483647.00 Default=216.00
    HoursForCorpseRemoval = 720.0,
    -- Governs impact that nearby decaying bodies has on the player's health and emotions. Default=Normal
    -- 1 = None
    -- 2 = Low
    -- 3 = Normal
    DecayingCorpseHealthImpact = 3,
    -- How much blood is sprayed on floor and walls. Default=Normal
    -- 1 = None
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    BloodLevel = 4,
    -- Governs how quickly clothing degrades, becomes dirty, and bloodied. Default=Normal
    -- 1 = Disabled
    -- 2 = Slow
    -- 3 = Normal
    ClothingDegradation = 3,
    FireSpread = true,
    -- Number of in-game days before rotten food is removed from the map. -1 means rotten food is never removed. Minimum=-1 Maximum=2147483647 Default=-1
    DaysForRottenFoodRemoval = -1,
    -- If enabled, generators will work on exterior tiles, allowing for example to power gas pump.
    AllowExteriorGenerator = true,
    -- Controls the maximum intensity of fog. Default=Normal
    -- 1 = Normal
    -- 2 = Moderate
    MaxFogIntensity = 1,
    -- Controls the maximum intensity of rain. Default=Normal
    -- 1 = Normal
    -- 2 = Moderate
    MaxRainFxIntensity = 1,
    -- If disabled snow will not accumulate on ground but will still be visible on vegetation and rooftops.
    EnableSnowOnGround = true,
    -- When enabled certain melee weapons will be able to strike multiple zombies in one hit.
    MultiHitZombies = false,
    -- Chance of being bitten when a zombie attacks from behind. Default=High
    -- 1 = Low
    -- 2 = Medium
    RearVulnerability = 3,
    -- Disable to walk unimpeded while melee attacking.
    AttackBlockMovements = true,
    AllClothesUnlocked = false,
    -- if disabled, tainted water will not have a warning marking it as such
    EnableTaintedWaterText = true,
    -- Governs how frequently cars are discovered on the map Default=Low
    -- 1 = None
    -- 2 = Very Low
    -- 3 = Low
    -- 4 = Normal
    CarSpawnRate = 3,
    -- Governs the chances of finding vehicles with gas in the tank. Default=Low
    -- 1 = Low
    -- 2 = Normal
    ChanceHasGas = 1,
    -- Governs how full gas tanks will be in discovered cars. Default=Low
    -- 1 = Very Low
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    -- 5 = Very High
    InitialGas = 2,
    -- Governs how full gas tanks in fuel station will be, initially. Default=Normal
    -- 1 = Empty
    -- 2 = Super Low
    -- 3 = Very Low
    -- 4 = Low
    -- 5 = Normal
    -- 6 = High
    -- 7 = Very High
    -- 8 = Full
    FuelStationGas = 5,
    -- How gas-hungry vehicles on the map are. Minimum=0.00 Maximum=100.00 Default=1.00
    CarGasConsumption = 1.0,
    -- Default=Rare
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    LockedCar = 3,
    -- General condition of vehicles discovered on the map Default=Low
    -- 1 = Very Low
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    CarGeneralCondition = 2,
    -- Governs the amount of damage dealt to vehicles that crash. Default=Normal
    -- 1 = Very Low
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    CarDamageOnImpact = 3,
    -- Damage received by the player from the car in a collision. Default=None
    -- 1 = None
    -- 2 = Low
    -- 3 = Normal
    -- 4 = High
    DamageToPlayerFromHitByACar = 1,
    -- Enable or disable traffic jams that spawn on the main roads of the map.
    TrafficJam = true,
    -- How frequently cars will be discovered with an alarm. Default=Extremely Rare
    -- 1 = Never
    -- 2 = Extremely Rare
    -- 3 = Rare
    -- 4 = Sometimes
    -- 5 = Often
    CarAlarm = 3,
    -- Enable or disable player getting damage from being in a car accident.
    PlayerDamageFromCrash = true,
    -- How many in-game hours before a wailing siren shuts off. Minimum=0.00 Maximum=168.00 Default=0.00
    SirenShutoffHours = 0.0,
    --  Governs whether player can discover a car that has been maintained and cared for after the infection struck. Default=Low
    -- 1 = None
    -- 2 = Low
    -- 3 = Normal
    RecentlySurvivorVehicles = 2,
    -- Enables vehicles to spawn.
    EnableVehicles = true,
    -- Governs if poisoning food is enabled. Default=True
    -- 1 = True
    -- 2 = False
    EnablePoisoning = 1,
    -- Default=In and around bodies
    -- 1 = In and around bodies
    -- 2 = In bodies only
    MaggotSpawn = 1,
    -- The higher the value, the longer lightbulbs last before breaking. If 0, lightbulbs will never break. Does not affect vehicle headlights. Minimum=0.00 Maximum=1000.00 Default=1.00
    LightBulbLifespan = 20.0,
    -- Minimum=0 Maximum=100 Default=100
    AT_Blood = 100,
    -- Minimum=0.01 Maximum=30.00 Default=0.30
    AT_VehicleDamage = 0.3,
    -- Minimum=1.39 Maximum=4.00 Default=2.00
    lgd_antibodies_150_general_baseAntibodyGrowth = 2.0,
    Map = {
        AllowMiniMap = false,
        AllowWorldMap = true,
        MapAllKnown = false,
    },
    ZombieLore = {
        -- Controls the zombie movement rate. Default=Fast Shamblers
        -- 1 = Sprinters
        -- 2 = Fast Shamblers
        -- 3 = Shamblers
        Speed = 2,
        -- Controls the damage zombies inflict per attack. Default=Normal
        -- 1 = Superhuman
        -- 2 = Normal
        -- 3 = Weak
        Strength = 1,
        -- Controls the difficulty to kill zombies. Default=Normal
        -- 1 = Tough
        -- 2 = Normal
        -- 3 = Fragile
        Toughness = 1,
        -- Controls how the zombie virus spreads. Default=Blood + Saliva
        -- 1 = Blood + Saliva
        -- 2 = Saliva Only
        -- 3 = Everyone's Infected
        Transmission = 3,
        -- Controls how quickly the infection takes effect. Default=2-3 Days
        -- 1 = Instant
        -- 2 = 0-30 Seconds
        -- 3 = 0-1 Minutes
        -- 4 = 0-12 Hours
        -- 5 = 2-3 Days
        -- 6 = 1-2 Weeks
        Mortality = 5,
        -- Controls how quickly corpses rise as zombies. Default=0-1 Minutes
        -- 1 = Instant
        -- 2 = 0-30 Seconds
        -- 3 = 0-1 Minutes
        -- 4 = 0-12 Hours
        -- 5 = 2-3 Days
        Reanimate = 3,
        -- Controls zombie intelligence. Default=Basic Navigation
        -- 1 = Navigate + Use Doors
        -- 2 = Navigate
        -- 3 = Basic Navigation
        Cognition = 2,
        -- Controls which zombies can crawl under vehicles. Default=Often
        -- 1 = Crawlers Only
        -- 2 = Extremely Rare
        -- 3 = Rare
        -- 4 = Sometimes
        -- 5 = Often
        -- 6 = Very Often
        CrawlUnderVehicle = 5,
        -- Controls how long zombies remember players after seeing or hearing. Default=Normal
        -- 1 = Long
        -- 2 = Normal
        -- 3 = Short
        -- 4 = None
        Memory = 1,
        -- Controls zombie vision radius. Default=Normal
        -- 1 = Eagle
        -- 2 = Normal
        -- 3 = Poor
        Sight = 3,
        -- Controls zombie hearing radius. Default=Normal
        -- 1 = Pinpoint
        -- 2 = Normal
        -- 3 = Poor
        Hearing = 1,
        -- Zombies that have not seen/heard player can attack doors and constructions while roaming.
        ThumpNoChasing = false,
        -- Governs whether or not zombies can destroy player constructions and defences.
        ThumpOnConstruction = true,
        -- Governs whether zombies are more active during the day, or whether they act more nocturnally.  Active zombies will use the speed set in the "Speed" setting. Inactive zombies will be slower, and tend not to give chase. Default=Both
        -- 1 = Both
        -- 2 = Night
        ActiveOnly = 1,
        -- Allows zombies to trigger house alarms when breaking through windows and doors.
        TriggerHouseAlarm = true,
        -- When enabled if multiple zombies are attacking they can drag you down to feed. Dependent on zombie strength.
        ZombiesDragDown = true,
        -- When enabled zombies will have a chance to lunge after climbing over a fence if you're too close.
        ZombiesFenceLunge = true,
        -- Default=Some zombies in the world will pretend to be dead
        -- 1 = Some zombies in the world will pretend to be dead
        -- 2 = Some zombies in the world, as well as some you 'kill', can pretend to be dead
        DisableFakeDead = 1,
    },
    ZombieConfig = {
        -- Set by the "Zombie Count" population option. 4.0 = Insane, Very High = 3.0, 2.0 = High, 1.0 = Normal, 0.35 = Low, 0.0 = None. Minimum=0.00 Maximum=4.00 Default=1.00
        PopulationMultiplier = 4.0,
        -- Adjusts the desired population at the start of the game. Minimum=0.00 Maximum=4.00 Default=1.00
        PopulationStartMultiplier = 0.5,
        -- Adjusts the desired population on the peak day. Minimum=0.00 Maximum=4.00 Default=1.50
        PopulationPeakMultiplier = 4.0,
        -- The day when the population reaches it's peak. Minimum=1 Maximum=365 Default=28
        PopulationPeakDay = 60,
        -- The number of hours that must pass before zombies may respawn in a cell. If zero, spawning is disabled. Minimum=0.00 Maximum=8760.00 Default=72.00
        RespawnHours = 0.0,
        -- The number of hours that a chunk must be unseen before zombies may respawn in it. Minimum=0.00 Maximum=8760.00 Default=16.00
        RespawnUnseenHours = 8760.0,
        -- The fraction of a cell's desired population that may respawn every RespawnHours. Minimum=0.00 Maximum=1.00 Default=0.10
        RespawnMultiplier = 0.0,
        -- The number of hours that must pass before zombies migrate to empty parts of the same cell. If zero, migration is disabled. Minimum=0.00 Maximum=8760.00 Default=12.00
        RedistributeHours = 24.0,
        -- The distance a zombie will try to walk towards the last sound it heard. Minimum=10 Maximum=1000 Default=100
        FollowSoundDistance = 125,
        -- The size of groups real zombies form when idle. Zero means zombies don't form groups. Groups don't form inside buildings or forest zones. Minimum=0 Maximum=1000 Default=20
        RallyGroupSize = 40,
        -- The distance real zombies travel to form groups when idle. Minimum=5 Maximum=50 Default=20
        RallyTravelDistance = 20,
        -- The distance between zombie groups. Minimum=5 Maximum=25 Default=15
        RallyGroupSeparation = 20,
        -- How close members of a group stay to the group's leader. Minimum=1 Maximum=10 Default=3
        RallyGroupRadius = 5,
    },
    SaveOurStationCore = {
        RequirePowerShutoff = true,
        EnableInterruptions = true,
        EnableFaults = true,
        ReliabilityProfile = 2,
        TimeDurationMultiplier = 3,
    },
    SkillRecoveryJournal = {
        -- Minimum=1 Maximum=100 Default=100
        RecoveryPercentage = 80,
        -- Minimum=0.00 Maximum=1000.00 Default=1.00
        TranscribeSpeed = 1.0,
        -- Minimum=0.00 Maximum=1000.00 Default=1.00
        ReadTimeSpeed = 1.0,
        RecoverProfessionAndTraitsBonuses = true,
        TranscribeTVXP = true,
        RecoverPassiveSkills = false,
        RecoverCombatSkills = true,
        RecoverFirearmSkills = true,
        RecoverCraftingSkills = true,
        RecoverSurvivalistSkills = true,
        RecoverAgilitySkills = true,
        RecoverRecipes = true,
        RecoveryJournalUsed = false,
    },
    TheDarknessIsComing = {
        -- Minimum=0 Maximum=720 Default=120
        hoursBetweenEvents = 252,
        -- Minimum=0 Maximum=100 Default=25
        hoursBetweenEventsDeviationPercentage = 50,
        -- Minimum=0 Maximum=360 Default=32
        averageEventLengthHours = 32,
        -- Minimum=0 Maximum=400 Default=72
        maxEventLength = 72,
        -- Minimum=0 Maximum=100 Default=25
        eventLengthDeviationPercentage = 50,
        -- Minimum=0 Maximum=100 Default=25
        chanceOfMaxEventLength = 25,
        playCrowsOnStart = true,
        playSirensOnStart = true,
        playSirensOnFinish = true,
        persistFogBetweenEvents = false,
        -- Minimum=0 Maximum=100 Default=80
        averagePersistentFogIntensity = 80,
        -- Minimum=0 Maximum=100 Default=20
        persistentFogIntensityDeviationPercentage = 20,
        persistFogAverageIntensity = false,
        enableChanceOfFog = true,
        enableChanceOfHeavyFog = true,
        -- Minimum=0 Maximum=100 Default=75
        chanceOfFog = 90,
        -- Minimum=0 Maximum=100 Default=35
        chanceOfHeavyFog = 60,
        -- Minimum=0 Maximum=100 Default=100
        averageFogIntensity = 100,
        -- Minimum=0 Maximum=100 Default=20
        fogIntensityDeviationPercentage = 20,
        enableVehicleMalfunctions = true,
        -- Minimum=0 Maximum=100 Default=25
        chanceOfVehicleMalfunction = 25,
        enableTotalVehicleMalfunctions = false,
        updateZombieLoreOnStart = true,
        -- Minimum=0 Maximum=5 Default=2
        updateZombieLoreAfterHours = 2,
        overrideZombieSpeed = true,
        darkZombieSpeed = 1,
        overrideZombieStrength = true,
        darkZombiesStrength = 1,
        darkZombiesToughness = 1,
        darkZombiesHearing = 1,
        darkZombiesSight = 3,
        darkZombiesCognition = 2,
        darkZombiesMemory = 1,
    },
    Advanced_trajectory = {
        aimpoint = true,
        Enablerange = true,
        Enablethrow = true,
        playerdamage = true,
        -- Minimum=0.00 Maximum=20.00 Default=0.70
        fireoffset = 0.7,
        -- Minimum=-100.00 Maximum=100.00 Default=-9.00
        maxaimnum = -9.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.30
        moveeffect = 1.3,
        -- Minimum=0.00 Maximum=100.00 Default=0.70
        turningeffect = 0.7,
        -- Minimum=0.00 Maximum=100.00 Default=1.10
        reducespeed = 1.1,
        -- Minimum=0.00 Maximum=3.00 Default=1.20
        bulletspeed = 2.35,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        bulletdistance = 1.0,
        -- Minimum=0 Maximum=100 Default=5
        shotgunnum = 15,
        -- Minimum=0.00 Maximum=1.00 Default=0.20
        shotgundivision = 0.2,
        callshot = false,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        ATY_damage = 1.0,
    },
    zReEXPS = {
        -- Minimum=0 Maximum=100 Default=30
        SmallBluntToBlunt = 30,
        -- Minimum=0 Maximum=100 Default=5
        SmallBluntToSmallBlade = 5,
        -- Minimum=0 Maximum=100 Default=5
        SmallBluntToLongBlade = 5,
        -- Minimum=0 Maximum=100 Default=15
        SmallBluntToAxe = 15,
        -- Minimum=0 Maximum=100 Default=5
        SmallBluntToSpear = 5,
        -- Minimum=0 Maximum=100 Default=30
        SmallBladeToLongBlade = 30,
        -- Minimum=0 Maximum=100 Default=5
        SmallBladeToSmallBlunt = 5,
        -- Minimum=0 Maximum=100 Default=5
        SmallBladeToBlunt = 5,
        -- Minimum=0 Maximum=100 Default=5
        SmallBladeToAxe = 5,
        -- Minimum=0 Maximum=100 Default=15
        SmallBladeToSpear = 15,
        -- Minimum=0 Maximum=100 Default=60
        BluntToSmallBlunt = 60,
        -- Minimum=0 Maximum=100 Default=30
        BluntToLongBlade = 30,
        -- Minimum=0 Maximum=100 Default=5
        BluntToSmallBlade = 5,
        -- Minimum=0 Maximum=100 Default=30
        BluntToAxe = 30,
        -- Minimum=0 Maximum=100 Default=5
        BluntToSpear = 5,
        -- Minimum=0 Maximum=100 Default=60
        LongBladeToSmallBlade = 60,
        -- Minimum=0 Maximum=100 Default=30
        LongBladeToBlunt = 30,
        -- Minimum=0 Maximum=100 Default=15
        LongBladeToSmallBlunt = 15,
        -- Minimum=0 Maximum=100 Default=15
        LongBladeToAxe = 15,
        -- Minimum=0 Maximum=100 Default=5
        LongBladeToSpear = 5,
        -- Minimum=0 Maximum=100 Default=45
        AxeToBlunt = 45,
        -- Minimum=0 Maximum=100 Default=30
        AxeToSmallBlunt = 30,
        -- Minimum=0 Maximum=100 Default=30
        AxeToLongBlade = 30,
        -- Minimum=0 Maximum=100 Default=5
        AxeToSmallBlade = 5,
        -- Minimum=0 Maximum=100 Default=5
        AxeToSpear = 5,
        -- Minimum=0 Maximum=100 Default=5
        SpearToBlunt = 5,
        -- Minimum=0 Maximum=100 Default=5
        SpearToSmallBlunt = 5,
        -- Minimum=0 Maximum=100 Default=5
        SpearToLongBlade = 5,
        -- Minimum=0 Maximum=100 Default=50
        SpearToSmallBlade = 50,
        -- Minimum=0 Maximum=100 Default=5
        SpearToAxe = 5,
    },
    zReV = {
        -- Minimum=300 Maximum=20000 Default=500
        BlackChemZombieSpawnChance = 500,
        -- Minimum=0 Maximum=100 Default=30
        NotesInBlackChemZombieSpawnChance = 30,
        -- Minimum=0.00 Maximum=2.00 Default=1.00
        BookInWorldSpawnChance = 1.0,
    },
    BecomeBrave = {
        -- Minimum=1 Maximum=10000 Default=350
        MinimumZombieKills = 250,
        -- Minimum=1 Maximum=10000 Default=1500
        MaximumZombieKills = 1000,
        ConsiderTraits = true,
        ConsiderOccupations = true,
    },
    BecomeDesensitized = {
        -- Minimum=1 Maximum=10000 Default=500
        MinimumZombieKills = 500,
        -- Minimum=1 Maximum=10000 Default=2000
        MaximumZombieKills = 2000,
        ConsiderTraits = true,
        ConsiderOccupations = true,
    },
    ExpandedHeli = {
        -- Minimum=0 Maximum=999 Default=0
        StartDay = 0,
        -- Minimum=1 Maximum=999 Default=90
        SchedulerDuration = 100,
        ContinueScheduling = true,
        ContinueSchedulingLateGameOnly = true,
        Frequency_jet = 3,
        Frequency_police = 3,
        Frequency_news_chopper = 3,
        Frequency_military = 3,
        Frequency_FEMA_drop = 3,
        Frequency_samaritan_drop = 3,
        Frequency_survivor_heli = 3,
        Frequency_raiders = 3,
    },
    SFTurn = {
        RarityBanshee = 3,
        RarityNemesis = 2,
        ImmortalNemesis = false,
    },
    ISA = {
        ChargeFreq = 1,
        DrainCalc = 2,
        -- Minimum=1 Maximum=100 Default=25
        solarPanelEfficiency = 15,
        -- Minimum=0 Maximum=1000 Default=100
        batteryDegradeChance = 100,
        -- Minimum=1 Maximum=10000 Default=100
        DIYBatteryMultiplier = 100,
        -- Minimum=0 Maximum=100 Default=25
        solarPanelWorldSpawns = 25,
        BatteryBankSpawn = 3,
        StashMode = 2,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        LRMSolarPanels = 1.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        LRMBatteries = 1.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        LRMMisc = 1.0,
        -- Minimum=1 Maximum=1000 Default=120
        ConnectPanelMin = 120,
        enableExpandedRecipes = false,
    },
    LingeringReflexes = {
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        Smart = 1.0,
        -- Minimum=1000 Maximum=60000 Default=7500
        Frequency = 7500,
    },
    LingeringVoices = {
        RespondToSound = true,
        CustomLines = true,
        -- Minimum=0 Maximum=604800 Default=5
        LowerLineLimit = 5,
        -- Minimum=0 Maximum=604800 Default=86400
        UpperLineLimit = 86400,
        -- Minimum=0 Maximum=1000 Default=1
        StaggerSpeakChance = 1,
    },
    VehicleRecycling = {
        UninstallParts = true,
        -- Minimum=1 Maximum=100 Default=1
        ActionTimeMultiplier = 1,
    },
    Coolbag = {
        CoolingMode = 3,
        Tooltip = true,
        -- Minimum=0 Maximum=100000 Default=12
        FreezingTime = 12,
        -- Minimum=0 Maximum=100000 Default=24
        MeltingTime = 24,
    },
    eggonsAllDoorsAreYours = {
        AllowTransportInLargeTrunksOnly = true,
        -- Minimum=0.10 Maximum=2.00 Default=1.00
        DoorsWeightMultiplier = 1.0,
        -- Minimum=0 Maximum=10 Default=3
        MinimumCarpentryLevel = 3,
        -- Minimum=0 Maximum=100 Default=75
        SuccessChance = 75,
        -- Minimum=1 Maximum=100 Default=5
        SuccessChanceIncrease = 5,
    },
    MoreSmokes = {
        Loot = 2,
        Moodle = true,
        -- Minimum=1 Maximum=10 Default=2
        Kits = 2,
        -- Minimum=1 Maximum=10 Default=2
        Magazines = 2,
        RareMagazines = true,
        -- Minimum=1 Maximum=10 Default=2
        Seeds = 2,
        YesCannabis = true,
        -- Minimum=1 Maximum=10 Default=2
        Cannabis = 2,
        YesTobacco = true,
        -- Minimum=1 Maximum=10 Default=2
        Tobacco = 2,
        -- Minimum=1 Maximum=10 Default=2
        Edibles = 2,
        -- Minimum=1 Maximum=10 Default=2
        Glassware = 2,
        -- Minimum=1 Maximum=50 Default=2
        Munchies = 2,
        -- Minimum=1 Maximum=50 Default=2
        StonerPerk = 2,
        -- Minimum=1 Maximum=50 Default=2
        Paranoid = 2,
        -- Minimum=0 Maximum=5 Default=0
        CultivationBonus = 0,
        -- Minimum=1 Maximum=50 Default=2
        StonedIncreaseMulti = 2,
        -- Minimum=1 Maximum=50 Default=2
        StonedDecreaseMulti = 2,
        TimerInfo = true,
        -- Minimum=1 Maximum=20 Default=10
        DryCureChange = 10,
        -- Minimum=0 Maximum=10 Default=2
        HarvestAdd = 2,
        -- Minimum=12 Maximum=250 Default=90
        GrowTimer = 90,
        -- Minimum=12 Maximum=250 Default=90
        RotTimer = 90,
    },
    ReadWalking = {
        -- Minimum=0.00 Maximum=1.00 Default=1.00
        FogDarkness = 1.0,
        -- Minimum=0.20 Maximum=100.00 Default=1.00
        ReadSpeed = 1.0,
    },
    BLTAnnotations = {
        DropMapOnDeath = true,
    },
    FC4WorkingTreadmill = {
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        FitnessXPMultiply = 1.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        StrengthXPMultiply = 1.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        SprintingXPMultiply = 1.0,
    },
    DAMN = {
        AllowBushmasterSpawns = true,
        AllowPowerChadSpawns = true,
    },
    SpearTraps = {
        SpearTrapsKillPlayer = true,
    },
    MoreMaps = {
        ForageableMaps = true,
        -- Minimum=0.00 Maximum=4.00 Default=1.00
        MapLootMultiplier = 0.7,
        KentuckyCompleteMap = false,
        LouisVilleCompleteMap = true,
        LouisVilleDistrictMaps = true,
        TrailerParkMaps = true,
        ValleyStationMap = true,
        ValleyStationMallAreaMap = true,
        EasternSummerCampMap = true,
        AbandonedFactoryMap = true,
        EkronMap = true,
        MilitaryMaps = true,
        FortRedstoneMap = true,
        MilitaryAirportMap = true,
        FortBenningMap = true,
        FortRockRidgeMap = true,
        MuldraughMilitaryBaseMap = true,
        FortWaterfrontMap = true,
        FortKnoxMaps = true,
        RiversideCountryClubMap = true,
        SmallTownWestMap = true,
        PonyRoamOMap = true,
        MuldraughRailyardMap = true,
        MuldraughWarehouseComplexMap = true,
        CabinLocations = true,
        CampGroundsLocation = true,
        GrapeseedMap = true,
        BlackwoodMap = true,
        PitstopMap = true,
        OverTheRiverMap = true,
        LakeIvyMap = true,
        WeatherStationLocations = true,
        CompleteRavenCreekMap = true,
        RavenCreekDistrictMaps = true,
        RosewoodExpansionMap = true,
        MarchRidgeExpansionMap = true,
        CONResearchMap = true,
        GreenleafMap = true,
        LittleTownshipMap = true,
        LindenMap = true,
        RefordvilleMap = true,
        ChernavilleMap = true,
        ChinatownMap = true,
        BlueberryMap = true,
        WestPointFireDepartmentMap = true,
        WestPointSouthTrailerParkMap = true,
        KingsmouthMap = true,
        SurvivorWarehouseLocation = true,
        CoryerdonMap = true,
        OldParkTownMap = true,
        WestPointExpansionMap = true,
        GlenportMap = true,
        CompleteEerieCountryMap = true,
        EerieCountryDifferentMaps = true,
        SlocanLakeMaps = true,
        BillionaireSafehouseLocation = true,
        WildberriesMap = true,
        TugalandMap = true,
        RemusMap = true,
        TrimbleCountyMaps = true,
        EZPZCommunityCenterMap = true,
        OldPineVillageMap = true,
        ChristmasVillageMap = true,
        HyruleCountyMap = true,
        RiverwoodMap = true,
        HongKongYauMaTeiMap = true,
        WesternMilitaryComplexMap = true,
        MansionAdress = true,
        ConstructionFactoryMap = true,
    },
    BarricadeHurtZombies = {
        -- Minimum=0.00 Maximum=100.00 Default=0.50
        BarricadeDamage = 0.5,
        HurtingBarricade = 1,
    },
    ChevalDeFrise = {
        -- Minimum=1 Maximum=99999 Default=200
        WoodBaseHealth = 200,
        -- Minimum=1 Maximum=99999 Default=25
        WoodScaleHealth = 25,
        -- Minimum=1 Maximum=1000 Default=3
        WoodDamage = 3,
    },
    CustomRepairSettings = {
        NoPenaltiesMechanics = false,
        NoPenaltiesOther = false,
        MaxCondPotentialRepairMechanics = 1,
        MaxCondPotentialRepairOther = 1,
    },
    StockDamage = {
        -- Minimum=0.00 Maximum=200.00 Default=10.00
        FirearmDamage = 15.0,
        -- Minimum=0.00 Maximum=100.00 Default=0.10
        StockEndurance = 0.1,
        StockEnduranceBoolean = true,
        -- Minimum=0 Maximum=100 Default=1
        ReduceCondition = 1,
    },
}
