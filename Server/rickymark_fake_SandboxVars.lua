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
    -- lower this value can reduce lag Minimum=0 Maximum=100 Default=100
    AT_Blood = 100,
    -- you are not suggested to set this value higher than 0.3 Minimum=0.01 Maximum=30.00 Default=0.30
    AT_VehicleDamage = 0.3,
    -- This value represents default antibodies growth (in relation to infection progression)[Work only if you have "Resistant Antibodies" trait]. Set 1.39 for HARDCORE/ 1.6 for MEDIUM/ 4.0 for ULTRA EASY. Minimum=1.39 Maximum=4.00 Default=2.00
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
        Strength = 2,
        -- Controls the difficulty to kill zombies. Default=Normal
        -- 1 = Tough
        -- 2 = Normal
        -- 3 = Fragile
        Toughness = 2,
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
        Cognition = 3,
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
        Memory = 2,
        -- Controls zombie vision radius. Default=Normal
        -- 1 = Eagle
        -- 2 = Normal
        -- 3 = Poor
        Sight = 2,
        -- Controls zombie hearing radius. Default=Normal
        -- 1 = Pinpoint
        -- 2 = Normal
        -- 3 = Poor
        Hearing = 2,
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
        PopulationMultiplier = 2.0,
        -- Adjusts the desired population at the start of the game. Minimum=0.00 Maximum=4.00 Default=1.00
        PopulationStartMultiplier = 1.0,
        -- Adjusts the desired population on the peak day. Minimum=0.00 Maximum=4.00 Default=1.50
        PopulationPeakMultiplier = 2.0,
        -- The day when the population reaches it's peak. Minimum=1 Maximum=365 Default=28
        PopulationPeakDay = 60,
        -- The number of hours that must pass before zombies may respawn in a cell. If zero, spawning is disabled. Minimum=0.00 Maximum=8760.00 Default=72.00
        RespawnHours = 720.0,
        -- The number of hours that a chunk must be unseen before zombies may respawn in it. Minimum=0.00 Maximum=8760.00 Default=16.00
        RespawnUnseenHours = 8640.0,
        -- The fraction of a cell's desired population that may respawn every RespawnHours. Minimum=0.00 Maximum=1.00 Default=0.10
        RespawnMultiplier = 0.001,
        -- The number of hours that must pass before zombies migrate to empty parts of the same cell. If zero, migration is disabled. Minimum=0.00 Maximum=8760.00 Default=12.00
        RedistributeHours = 72.0,
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
        -- Does the Knox Power-Grid need to fail before broadcast faults/interruptions start occuring?
        RequirePowerShutoff = true,
        -- Broadcast interruptions may occur at random, and will cause systems like Weather Forecasts and the Air Traffic Radar to temporarily stop working. Interruptions will resolve themselves after some time.
        EnableInterruptions = true,
        -- Broadcast faults may occur at random and, if not repaired by a player, will eventually cause a permanent failure of the broadcast system. Once a fault is identified, the broadcast system will provide a diagnostic code and the location of the affected system. Further information can be obtained through NWS Diagnostics Manuals and Registers.
        EnableFaults = true,
        -- The Reliability Profile determines the probability/chance of a Fault or Interruption occuring. Default=Normal  |  Rare Faults, Frequent Interruptions
        -- 1 = Well-Maintained  |  Rare Faults, Rare Interruptions
        -- 2 = Reliable  |  Rare Faults, Occasional Interruptions
        -- 3 = Normal  |  Rare Faults, Frequent Interruptions
        -- 4 = Unreliable  |  Occasional Faults, Frequent Interruptions
        ReliabilityProfile = 2,
        -- This multiplier affects how long Fault/Interruption cycles last, how much time there is to repair a Fault, and how long the 'grace period' between each cycle is. Default=24x  |  Normal (Recommended for Singleplayer)
        -- 1 = 12x  |  Very Short (Recommended for Large Servers)
        -- 2 = 18x  |  Short
        -- 3 = 24x  |  Normal (Recommended for Singleplayer)
        TimeDurationMultiplier = 3,
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
    DAMN = {
        AllowPowerChadSpawns = true,
        AllowBushmasterSpawns = true,
    },
    BecomeBrave = {
        -- Minimum zombie kills required to have a chance to become desensitized. Minimum=1 Maximum=10000 Default=350
        MinimumZombieKills = 250,
        -- Maximum zombie kills required to become desensitized Minimum=1 Maximum=10000 Default=1500
        MaximumZombieKills = 1000,
        -- Consider traits that can increase the chance of becoming desensitized (more info in workshop page)
        ConsiderTraits = true,
        -- Consider occupations Police, Fireman, Park Ranger, Security Guard, Doctor and Nurse that can increase the chance of becoming desensitized
        ConsiderOccupations = true,
    },
    BecomeDesensitized = {
        -- Minimum zombie kills required to have a chance to become desensitized. Minimum=1 Maximum=10000 Default=500
        MinimumZombieKills = 500,
        -- Maximum zombie kills required to become desensitized Minimum=1 Maximum=10000 Default=2000
        MaximumZombieKills = 2000,
        -- Consider traits that can increase the chance of becoming desensitized (more info in workshop page)
        ConsiderTraits = true,
        -- Consider occupations Police, Fireman, Park Ranger, Security Guard, Doctor and Nurse that can increase the chance of becoming desensitized
        ConsiderOccupations = true,
    },
    Coolbag = {
        -- Beware ease is a close friend of boredom. Default=Keep individual Mod Option selection (default)
        -- 1 = Cooler bags need to be refilled with an Ice Pocket (normal)
        -- 2 = Cooler bags always keep the temperature low (easy mode)
        CoolingMode = 3,
        -- Deactivate to not get the freezing / melting timers.
        Tooltip = true,
        -- Time (hours) for a water pocket to fully freeze in a freezer (default = 12). Minimum=0 Maximum=100000 Default=12
        FreezingTime = 12,
        -- Time (hours) for an ice pocket to fully melt out of a freezer (default = 24). Minimum=0 Maximum=100000 Default=24
        MeltingTime = 24,
    },
    CustomRepairSettings = {
        -- Repair efficiency is constant and does not depend on repair counter.
        NoPenaltiesMechanics = false,
        -- Repair efficiency is constant and does not depend on repair counter.
        NoPenaltiesOther = false,
        -- Potential Repair is percentage of maximum item condition or its broken part? Default=Percentage of broken item part
        -- 1 = Percentage of broken item part
        MaxCondPotentialRepairMechanics = 1,
        -- Potential Repair is percentage of maximum item condition or its broken part? Default=Percentage of broken item part
        -- 1 = Percentage of broken item part
        MaxCondPotentialRepairOther = 1,
    },
    eggonsAllDoorsAreYours = {
        -- Doors can be transported only in trunks of TOTAL capacity of at leats 90. <LINE>Free capacity must be enough to fit the door. <LINE>E.g. door weighting 30 will fit into a trunk which is 60/90 full.
        AllowTransportInLargeTrunksOnly = true,
        -- Default door weights (30-40) will be multiplied by this number. Minimum=0.10 Maximum=2.00 Default=1.00
        DoorsWeightMultiplier = 1.0,
        -- Minimum Carpentry level required to take off door off hinges. Minimum=0 Maximum=10 Default=3
        MinimumCarpentryLevel = 3,
        -- Success probabilty at minimum Carpentry level. Minimum=0 Maximum=100 Default=75
        SuccessChance = 75,
        -- Increase of success chance per each Carpentry level abover minimum. Minimum=1 Maximum=100 Default=5
        SuccessChanceIncrease = 5,
    },
    ISA = {
        -- How often Battery Bank will charge Default=Every Ten Minutes
        -- 1 = Every Ten Minutes
        ChargeFreq = 1,
        -- Regular Generator calculation has less performance impact Default=Regular Generator
        -- 1 = ISA
        DrainCalc = 2,
        -- Solar panel power efficiency
        -- 12% is realistic for 1993
        -- 25% is modern solar
        -- default is unrealistic Minimum=1 Maximum=100 Default=25
        solarPanelEfficiency = 15,
        -- Multiplier for the average degrade of batteries. Decreasing this will dramatically increase battery life. Minimum=0 Maximum=1000 Default=100
        batteryDegradeChance = 100,
        -- Multiplier for the capacity of crafted DIY batteries. Minimum=1 Maximum=10000 Default=100
        DIYBatteryMultiplier = 100,
        -- Minimum=0 Maximum=100 Default=25
        solarPanelWorldSpawns = 25,
        -- Rarity of Battery Bank spawning on the map. Default=Rare
        -- 1 = None
        -- 2 = Very Rare
        -- 3 = Rare
        BatteryBankSpawn = 3,
        -- Choose mode for Stash Houses.
        -- Change only on new game. Default=Add Stash Houses
        -- 1 = Don't add Stash Houses
        -- 2 = Add Stash Houses
        StashMode = 2,
        -- Solar panel spawns in random containers and pre-placed crates multiplier Minimum=0.00 Maximum=100.00 Default=1.00
        LRMSolarPanels = 1.0,
        -- Batteries spawns in random containers and pre-placed crates multiplier Minimum=0.00 Maximum=100.00 Default=1.00
        LRMBatteries = 1.0,
        -- Magazine and inverter spawns in random containers and pre-placed crates multiplier Minimum=0.00 Maximum=100.00 Default=1.00
        LRMMisc = 1.0,
        -- Base number of in-game minutes it takes to connect one panel Minimum=1 Maximum=1000 Default=120
        ConnectPanelMin = 120,
        -- Allows to craft solar panels and inverters
        enableExpandedRecipes = false,
    },
    LingeringReflexes = {
        -- Percentage of smart zombies that will be present in the world. These zombies can open doors. Minimum=0.00 Maximum=100.00 Default=1.00
        Smart = 1.0,
        -- The interval in milliseconds between two updates. Higher number means less CPU usage, lower number means less correctness issues. Default setting is recommended. Minimum=1000 Maximum=60000 Default=7500
        Frequency = 7500,
    },
    LingeringVoices = {
        -- Zombies react to zombie talking like the player shout
        RespondToSound = true,
        -- Whether to use the custom lines in USERNAME/Zomboid/Lua/talkingDeadCustomLine.lua
        CustomLines = true,
        -- Minimum amount of seconds that need to pass before another line is said by a zombie. Minimum=0 Maximum=604800 Default=5
        LowerLineLimit = 5,
        -- Maximum amount of seconds that need to pass before another line is said by a zombie. Minimum=0 Maximum=604800 Default=86400
        UpperLineLimit = 86400,
        -- Chance out of 1000 for a zombie to speak when hit. Minimum=0 Maximum=1000 Default=1
        StaggerSpeakChance = 1,
    },
    MoreSmokes = {
        -- Establishes the base amount of More Smokes loot in distribution Default=Normal
        -- 1 = Low
        -- 2 = Normal
        -- 3 = High
        -- 4 = Very High
        Loot = 2,
        -- Stoner Moodle start as on but you can choose to turn off the moodle
        Moodle = true,
        -- Defines the multiplier to spawn rate of More Smokes Kits found in the world Minimum=1 Maximum=10 Default=2
        Kits = 2,
        -- Defines the multiplier to spawn rate of Cultivation Books and Recipe Magazines found in the world Minimum=1 Maximum=10 Default=2
        Magazines = 2,
        -- Unlocks spawns for Mod Backer's Rare Recipe Magazines not in spawn pool by default
        RareMagazines = true,
        -- Defines the multiplier to spawn rate of Seed Packets found in the world Minimum=1 Maximum=10 Default=2
        Seeds = 2,
        -- Default on, can toggle all cannabis natural spawns in game
        YesCannabis = true,
        -- Defines the multiplier to spawn rate of Cannabis Items found in the world Minimum=1 Maximum=10 Default=2
        Cannabis = 2,
        -- Default on, can toggle all Tobacco natural spawns in game
        YesTobacco = true,
        -- Defines the multiplier to spawn rate of Tobacco Items found in the world Minimum=1 Maximum=10 Default=2
        Tobacco = 2,
        -- Defines the multiplier to spawn rate of Cannabis Infused Edibles found in the world Minimum=1 Maximum=10 Default=2
        Edibles = 2,
        -- Defines the multiplier to spawn rate of Bongs, Pipes, and Hookahs found in the world Minimum=1 Maximum=10 Default=2
        Glassware = 2,
        -- Default is 2 balanced for 1 hour days, influences hunger and thirst gains while high Minimum=1 Maximum=50 Default=2
        Munchies = 2,
        -- Default is 2 balanced for 1 hour days, influences the stoner trait perks Minimum=1 Maximum=50 Default=2
        StonerPerk = 2,
        -- Default is 2 balanced for 1 hour days, influences negative experiences of the paranoid toker trait Minimum=1 Maximum=50 Default=2
        Paranoid = 2,
        -- Cultivation levels provide a + 1-4 to usable product when processing tobacco or cannabis, add to that amount with this option Minimum=0 Maximum=5 Default=0
        CultivationBonus = 0,
        -- Default is 2 balanced for 1 hour days, establishes the rate of how stoned you get per cannabis item consumed Minimum=1 Maximum=50 Default=2
        StonedIncreaseMulti = 2,
        -- Default is 2 balanced for 1 hour days, Increases the rate in which you lose your high after getting stoned Minimum=1 Maximum=50 Default=2
        StonedDecreaseMulti = 2,
        -- If you change the values below, plan to restart your game/server for changes to take effect. This checkbox does nothing
        TimerInfo = true,
        -- Default 10 is equal to base cure and drying times, lower is faster as 1 = 10% of time required where as 20 = 200% of time required Minimum=1 Maximum=20 Default=10
        DryCureChange = 10,
        -- Adds the amount returned on harvest per crop, if set at 0 you minimally get 1 per harvest Minimum=0 Maximum=10 Default=2
        HarvestAdd = 2,
        -- Defines the in game hours for each growing phase to finish Minimum=12 Maximum=250 Default=90
        GrowTimer = 90,
        -- Defines the in game hours it will take a crop to rot after phase 7 Minimum=12 Maximum=250 Default=90
        RotTimer = 90,
    },
    ReadWalking = {
        -- The darkness of the reading fog. 0.0 means no darkness. 1.0 means full darkness. Minimum=0.00 Maximum=1.00 Default=1.00
        FogDarkness = 1.0,
        -- The mod: Read While Walking 1.0 means x1 vanilla defaults. 2.0 means speed x2, etc. Minimum=0.20 Maximum=100.00 Default=1.00
        ReadSpeed = 1.0,
    },
    BLTAnnotations = {
        -- If enabled, player corpses will include a fully annotated map containing every symbols from their main map
        DropMapOnDeath = true,
    },
    SkillRecoveryJournal = {
        -- The amount of experienced recovered from reading bound journals. Minimum=1 Maximum=100 Default=100
        RecoveryPercentage = 80,
        -- A multiplier on the speed of transcribing journals. Minimum=0.00 Maximum=1000.00 Default=1.00
        TranscribeSpeed = 1.0,
        -- A multiplier on the speed of reading bound journals. Minimum=0.00 Maximum=1000.00 Default=1.00
        ReadTimeSpeed = 1.0,
        -- Starting with more than 1 point in a skill generally nets you bonus XP - with this toggled off that XP is not recorded. All XP recorded is that of a character with no starting skills. This does NOT recover starting levels - only the bonus XP earned.
        RecoverProfessionAndTraitsBonuses = true,
        -- Toggling this on will allow people to transcribe XP earned from watching TV/VHS. Note: This means players can carry over watched XP between characters cumulatively.
        TranscribeTVXP = true,
        -- Toggle on to record passive skills.
        RecoverPassiveSkills = false,
        -- Toggle on to record combat skills.
        RecoverCombatSkills = true,
        -- Toggle on to record firearm skills.
        RecoverFirearmSkills = true,
        -- Toggle on to record crafting skills.
        RecoverCraftingSkills = true,
        -- Toggle on to record survivalist skills.
        RecoverSurvivalistSkills = true,
        -- Toggle on to record agility skills.
        RecoverAgilitySkills = true,
        -- Toggle off to prevent journals from recovering/transcribing recipes.
        RecoverRecipes = true,
        -- Normally you can reread the journal as many times as you like - with this toggled on each individual XP point can only be recovered once. You can still add onto the journal, but each point can only be recovered once on each journal. Note: the tooltip for the journal will now display a fraction for unused points.
        RecoveryJournalUsed = false,
    },
    SFTurn = {
        -- Applied on top of the standard population. Default=Standard
        -- 1 = None
        -- 2 = Rare
        -- 3 = Standard
        -- 4 = High
        RarityBanshee = 3,
        -- Applied on top of the standard population. Default=Standard
        -- 1 = None
        -- 2 = Rare
        -- 3 = Standard
        -- 4 = High
        RarityNemesis = 2,
        ImmortalNemesis = false,
    },
    SpearTraps = {
        -- Kill players when they walk over a spear trap
        SpearTrapsKillPlayer = true,
    },
    TheDarknessIsComing = {
        -- Base amount of hours between one darkness event and another. This will start ticking down when one event finishes. Minimum=0 Maximum=720 Default=120
        hoursBetweenEvents = 252,
        -- Deviate by a random % between 0 and the selected value from the original value to add some randomness. This might add or subtract to the value. Minimum=0 Maximum=100 Default=25
        hoursBetweenEventsDeviationPercentage = 50,
        -- This is the average amount of hours an event will take. It can deviate a bit if you specify a % deviation below. Minimum=0 Maximum=360 Default=32
        averageEventLengthHours = 32,
        -- This is the maximum amount of hours an event will take. It can deviate a bit if you specify a % deviation below. Minimum=0 Maximum=400 Default=72
        maxEventLength = 72,
        -- Deviate by a random % between 0 and the selected value from the original value to add some randomness. This might add or subtract to the value. Minimum=0 Maximum=100 Default=25
        eventLengthDeviationPercentage = 50,
        -- Specify a % chance that the event's maximum length will be chosen. This can lead to some pretty interesting scenarios. Minimum=0 Maximum=100 Default=25
        chanceOfMaxEventLength = 25,
        -- When an event starts, play ambient sounds of crows screeching. This helps people who may be away from Sirens to be notified of the event.
        playCrowsOnStart = true,
        -- Sound the sirens throughout Knox County to show that THE DARKNESS IS COMING.
        playSirensOnStart = true,
        -- Sound the sirens throughout Knox County to show that THE DARKNESS IS GONE.
        playSirensOnFinish = true,
        -- Enable permanent fog.
        persistFogBetweenEvents = false,
        -- Average intensity of the fog that fills the world. Minimum=0 Maximum=100 Default=80
        averagePersistentFogIntensity = 80,
        -- Deviate by a random % between 0 and the selected value from the original value to add some randomness every hour. This might add or subtract to the value. Minimum=0 Maximum=100 Default=20
        persistentFogIntensityDeviationPercentage = 20,
        -- Enable permanent fog.
        persistFogAverageIntensity = false,
        -- Enable fog when the darkness comes.
        enableChanceOfFog = true,
        -- Enable chance of heavy fog when the darkness comes. This will make it harder to see.
        enableChanceOfHeavyFog = true,
        -- A percentage chance that when The Darkness Comes, there will be fog, making it even harder to see. Minimum=0 Maximum=100 Default=75
        chanceOfFog = 90,
        -- A percentage chance that if there is fog, it will be heavy fog. This chance also depends on the previous setting. Minimum=0 Maximum=100 Default=35
        chanceOfHeavyFog = 60,
        -- Average fog intensity when The Darkness Comes and there's fog. Minimum=0 Maximum=100 Default=100
        averageFogIntensity = 100,
        -- Deviate by a random % between 0 and the selected value from the original value to add some randomness. This might add or subtract to the value. Minimum=0 Maximum=100 Default=20
        fogIntensityDeviationPercentage = 20,
        -- Enable vehicle malfunctions during Darkness events.
        enableVehicleMalfunctions = true,
        -- A percentage chance that on every 10 minute tick, a vehicle will shut down. Minimum=0 Maximum=100 Default=25
        chanceOfVehicleMalfunction = 25,
        -- Enabling this will make vehicles almost useless during darkness events, all the time. The malfunction chance value will be ignored.
        enableTotalVehicleMalfunctions = false,
        -- Disabling this will make the next settings obsolete. When an event starts, zombie lore is updated with settings found in The Darkness Is Coming Zombie Lore page.
        updateZombieLoreOnStart = true,
        -- This will make zombies become fast/stronger a couple of hours after the darkness comes. You'll have time to disengage if you're fighting a horde. Minimum=0 Maximum=5 Default=2
        updateZombieLoreAfterHours = 2,
        -- Override zombie speed lore during darkness events. Specify the override speed value below. If unchecked, the below value will be ignored.
        overrideZombieSpeed = true,
        -- Dark zombie speed Default=Sprinters
        -- 1 = Sprinters
        -- 2 = Fast Shamblers
        -- 3 = Shamblers
        darkZombieSpeed = 1,
        -- Override zombie attributes during darkness events. Specify the override values below. If unchecked, the below values will be ignored.
        overrideZombieStrength = true,
        -- Controls the damage dark zombies inflict per attack. Default=Normal
        -- 1 = Superhuman
        -- 2 = Normal
        -- 3 = Weak
        darkZombiesStrength = 1,
        -- Controls the difficulty to kill dark zombies Default=Normal
        -- 1 = Tough
        -- 2 = Normal
        -- 3 = Fragile
        darkZombiesToughness = 1,
        -- Controls dark zombie hearing radius. Default=Normal
        -- 1 = Pinpoint
        -- 2 = Normal
        darkZombiesHearing = 1,
        -- Controls dark zombie vision radius. Default=Poor
        -- 1 = Eagle
        -- 2 = Normal
        darkZombiesSight = 3,
        -- Controls dark zombie intelligence. Default=Basic Navigation
        -- 1 = Navigate + Use Doors
        -- 2 = Navigate
        -- 3 = Basic Navigation
        darkZombiesCognition = 2,
        -- Controls how long dark zombies remember players after seeing or hearing them. Default=Normal
        -- 1 = Long
        -- 2 = Normal
        -- 3 = Short
        darkZombiesMemory = 1,
    },
    VehicleRecycling = {
        -- The following parts must be uninstalled before dismantling: hood, trunk lid, doors, windows, seats.
        UninstallParts = true,
        -- Minimum=1 Maximum=100 Default=1
        ActionTimeMultiplier = 1,
    },
    FC4WorkingTreadmill = {
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        FitnessXPMultiply = 1.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        StrengthXPMultiply = 1.0,
        -- Minimum=0.00 Maximum=100.00 Default=1.00
        SprintingXPMultiply = 1.0,
    },
    ExpandedHeli = {
        -- The day the scheduler will start assigning events to. Minimum=0 Maximum=999 Default=0
        StartDay = 0,
        -- How long will the scheduler run from the start day.  The scheduler will adjust event progression to fit this duration. Minimum=1 Maximum=999 Default=90
        SchedulerDuration = 100,
        -- Toggle this on so that the scheduler will spawn events passed the duration limit. Events will still progress through stages according to the duration but events will never stop being scheduled.
        ContinueScheduling = true,
        -- When "Continue Scheduling Forever" is toggle on, this toggled on makes the scheduler only use late-game events.
        ContinueSchedulingLateGameOnly = true,
        -- How frequent jet events occur.  Jets fly by players causing horde movement. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_jet = 3,
        -- How frequent Police events occur.  The police will take matters into their own hands and escort citizens around while firing on zombies. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_police = 3,
        -- How frequent news events occur.  News choppers will hone in on any citizen they find and follow them around for a short time. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_news_chopper = 3,
        -- How frequent military events occur.  The military will progress through stages: warn citizens, purge the undead, then ultimately purge anything that moves. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_military = 3,
        -- How frequent FEMA aid drop events occur.  FEMA will conduct aid drops early on in the apocalypse. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_FEMA_drop = 3,
        -- How frequent samaritan events occur.  Samaritans will drop off supplies to help survivors. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_samaritan_drop = 3,
        -- How frequent survivor events occur.  Survivors will only flyby on scouting missions causing horde movement. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_survivor_heli = 3,
        -- How frequent raider events occur.  Raiders will hone in on survivors to torment them for some entertainment. Default=Uncommon
        -- 1 = Never
        -- 2 = Rare
        -- 3 = Uncommon
        -- 4 = Common
        -- 5 = Frequent
        Frequency_raiders = 3,
    },
    zReEXPS = {
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        SmallBluntToBlunt = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SmallBluntToSmallBlade = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SmallBluntToLongBlade = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=15
        SmallBluntToAxe = 15,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SmallBluntToSpear = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        SmallBladeToLongBlade = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SmallBladeToSmallBlunt = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SmallBladeToBlunt = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SmallBladeToAxe = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=15
        SmallBladeToSpear = 15,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=60
        BluntToSmallBlunt = 60,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        BluntToLongBlade = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        BluntToSmallBlade = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        BluntToAxe = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        BluntToSpear = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=60
        LongBladeToSmallBlade = 60,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        LongBladeToBlunt = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=15
        LongBladeToSmallBlunt = 15,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=15
        LongBladeToAxe = 15,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        LongBladeToSpear = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=45
        AxeToBlunt = 45,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        AxeToSmallBlunt = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=30
        AxeToLongBlade = 30,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        AxeToSmallBlade = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        AxeToSpear = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SpearToBlunt = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SpearToSmallBlunt = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SpearToLongBlade = 5,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=50
        SpearToSmallBlade = 50,
        -- The amount of experience transferred to a skill from one category to another. Minimum=0 Maximum=100 Default=5
        SpearToAxe = 5,
    },
    zReV = {
        -- Ranges from 300 to 20000, default is 500(very rare). Normal zombies range from 2000+. For example, a golfer zombie (quite rare) has 2000 weight, and a park ranger has 10000. Minimum=300 Maximum=20000 Default=500
        BlackChemZombieSpawnChance = 500,
        -- Ranges from 0 to 100, default is 30. Setting to 0 disables the chance to find a note with the formula. Only affects zombies in black chem-suit. Notes can only be encountered up to vaccine level 4, inclusive. Minimum=0 Maximum=100 Default=30
        NotesInBlackChemZombieSpawnChance = 30,
        -- Ranges from 0 to 2, default is 1. Setting to 0 disables book spawning in the world. Does not affect book spawning for zombies in the black chem-suit. Minimum=0.00 Maximum=2.00 Default=1.00
        BookInWorldSpawnChance = 1.0,
    },
    MoreMaps = {
        -- As junk items, with the same chance as the vanilla maps, some rarer.
        ForageableMaps = true,
        -- All map items added will have their loot chances multiplied by this value.
        -- Use this to tweak loot chances according to the number of maps you use.
        -- By default(=1) it is balanced for when most maps are enabled. Minimum=0.00 Maximum=4.00 Default=1.00
        MapLootMultiplier = 0.7,
        -- Extremely rare - disabled by default
        KentuckyCompleteMap = false,
        -- Very rare
        LouisVilleCompleteMap = true,
        -- 15 districts in total
        LouisVilleDistrictMaps = true,
        -- Dixie and Scenic Grove
        TrailerParkMaps = true,
        ValleyStationMap = true,
        ValleyStationMallAreaMap = true,
        -- South of Valley Station's mall
        EasternSummerCampMap = true,
        AbandonedFactoryMap = true,
        -- Works with the New Ekron mod too.
        EkronMap = true,
        -- Rare, mainly found on military loot
        MilitaryMaps = true,
        -- Between Grapeseed and Ravencreek.
        FortRedstoneMap = true,
        -- North West of Muldraugh. Rare. Disabled if military maps are disabled
        MilitaryAirportMap = true,
        -- South of Riverside's Country Club.
        FortBenningMap = true,
        -- East of Riverside's Country Club, North of Ekron.
        FortRockRidgeMap = true,
        -- East of Muldraugh
        MuldraughMilitaryBaseMap = true,
        -- Between Rosewood and Muldraugh
        FortWaterfrontMap = true,
        -- South of Bedford Falls, East of Eerie Country. Quitman Map, Fort Knox Map. Rare.
        FortKnoxMaps = true,
        -- Can also be found in golfer bags
        RiversideCountryClubMap = true,
        -- The one with the camping & military gear store
        SmallTownWestMap = true,
        PonyRoamOMap = true,
        -- East of Muldraugh
        MuldraughRailyardMap = true,
        -- South West of Muldraugh
        MuldraughWarehouseComplexMap = true,
        -- 5 in total, only found on zombies, rare. Useful to find Antique Ovens.
        CabinLocations = true,
        -- East of Dixie
        CampGroundsLocation = true,
        -- West of Rosewood
        GrapeseedMap = true,
        -- North of Rosewood
        BlackwoodMap = true,
        -- Between Rosewood and Muldraugh
        PitstopMap = true,
        -- North of West Point, on the other side of the river
        OverTheRiverMap = true,
        -- West of Muldraugh
        LakeIvyMap = true,
        -- From the mod Save Our Station!
        WeatherStationLocations = true,
        -- West of Rosewood and Grapeseed. Very rare map item.
        CompleteRavenCreekMap = true,
        -- 3 district maps
        RavenCreekDistrictMaps = true,
        -- North of Rosewood
        RosewoodExpansionMap = true,
        -- North West of March Ridge
        MarchRidgeExpansionMap = true,
        -- North West of March Ridge
        CONResearchMap = true,
        -- North West of Rosewood
        GreenleafMap = true,
        -- Between Ekron and Pony Roam-O
        LittleTownshipMap = true,
        -- Between Dixie and crossroads
        LindenMap = true,
        -- South West of Riverside
        RefordvilleMap = true,
        --        
        ChernavilleMap = true,
        -- North of Muldraugh, West of Dixie
        ChinatownMap = true,
        -- West of Rosewood, after Grapeseed
        BlueberryMap = true,
        -- West of West Point
        WestPointFireDepartmentMap = true,
        -- South of West Point
        WestPointSouthTrailerParkMap = true,
        -- An island in the Ohio river, in the North West corner of the map
        KingsmouthMap = true,
        -- East of Dixie
        SurvivorWarehouseLocation = true,
        -- North West of West Point, East of Riverside's Country Club on the other side of the river
        CoryerdonMap = true,
        -- South of Ed's Auto Salvage
        OldParkTownMap = true,
        WestPointExpansionMap = true,
        GlenportMap = true,
        -- Very rare
        CompleteEerieCountryMap = true,
        -- Centralia, Hidden swamps, Rural Zone, Eren City, Irvington, train station...
        EerieCountryDifferentMaps = true,
        -- Far South West. Silverton Map, Rosebery Map, New Denver Map.
        SlocanLakeMaps = true,
        -- South of West Point
        BillionaireSafehouseLocation = true,
        -- West of Riverside's Country Club
        WildberriesMap = true,
        -- East of Muldraugh's Railyard
        TugalandMap = true,
        -- East of Rosewood, West of Grapeseed
        RemusMap = true,
        -- West of Louisville
        TrimbleCountyMaps = true,
        -- East of West Point
        EZPZCommunityCenterMap = true,
        -- South of March Ridge
        OldPineVillageMap = true,
        -- An island in the river, North East of Louisville,
        ChristmasVillageMap = true,
        -- North East of Muldraugh, West of Ekron
        HyruleCountyMap = true,
        -- North of Ekron
        RiverwoodMap = true,
        -- North of East of Valley Station's Mall
        HongKongYauMaTeiMap = true,
        -- South West of Ekron
        WesternMilitaryComplexMap = true,
        -- South East of Muldraugh
        MansionAdress = true,
        -- South East of Muldraugh
        ConstructionFactoryMap = true,
    },
    BarricadeHurtZombies = {
        -- Damage on zombie per hit on the barricade. 0.5 corresponds to around 1 zombie per wooden plank. Minimum=0.00 Maximum=100.00 Default=0.50
        BarricadeDamage = 0.5,
        -- Default value doesn't include non player-built object (e.g. windows, doors, garage door...) Default=Player-built and moved objects
        -- 1 = Player-built and moved objects
        -- 2 = All
        HurtingBarricade = 1,
    },
    ChevalDeFrise = {
        -- Base health of cheval de frise Minimum=1 Maximum=99999 Default=200
        WoodBaseHealth = 200,
        -- Bonus health per carpentry level Minimum=1 Maximum=99999 Default=25
        WoodScaleHealth = 25,
        -- Damage multiplier of cheval de frise Minimum=1 Maximum=1000 Default=3
        WoodDamage = 3,
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
