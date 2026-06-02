-- =====================================================================
-- Seed: Pensoft\Casestudies case studies (7 sites)  -- PostgreSQL
-- Table: pensoft_casestudies_data
--
-- Notes
--  * quick_facts is the OctoberCMS repeater field (jsonable TEXT column).
--    Built with json_build_array(json_build_object(...))::text so October
--    can json_decode it back into the repeater rows.
--  * country  -> rainlab_location_countries.id  (resolved by country name)
--    partner  -> pensoft_partners_partners.id    (resolved by instituion/title ILIKE)
--    If a country/partner is not found the subquery yields NULL and the
--    field is simply left empty (the record is still inserted).
--  * The "See the progress ... fact sheet" line and the "Gallery" heading
--    from the source text are intentionally NOT in the description: the
--    detail page renders the fact-sheet button and the gallery carousel.
--  * Connection/database should be UTF-8 (ß, ä, õ, €, – are used).
-- =====================================================================

-- 1) Graminhais Plateau ------------------------------------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Graminhais Plateau',
    'graminhais-plateau',
    1,
    '<div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Background</strong></h3><p>The central area of the Graminhais Plateau is home to the largest area of peatlands on the island of San Miguel, covering more than 100 hectares. The peatlands of the Graminhais Plateau serve as natural water reservoirs and a pioneer area in restoration actions.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>The Problem</strong></h3><p>In the past, the peatlands experienced significant degradation due to their use as grazing land and the introduction of invasive species. The main effects of these impacts were the alteration of the water dynamics of this ecosystem, affecting its water retention capacity, and the loss of native biodiversity. As a result, downstream cities experienced severe floods.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>Thanks to the implementation of the projects LIFE Laurissilva Sustentável (LIFE07 NAT/P/000630) and LIFE IP Azores Natura (LIFE17 IPE/PT/00010), restoration work has been carried out, and long-term monitoring of soils and biodiversity has been established. At present, the knowledge gained through these efforts is being shared and further developed within the SpongeBoost project.</p></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Portugal' LIMIT 1),
        'region', 'São Miguel Island, Azores',
        'name_of_site', 'Graminhais Plateau',
        'type_of_sponge_territory', 'Peatland',
        'primary_water_source', 'Rainfall, fog',
        'secondary_water_source', '',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%SPEA%' OR title ILIKE '%SPEA%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);

-- 2) Serra do Xistral Peatlands ---------------------------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Serra do Xistral Peatlands',
    'serra-do-xistral-peatlands',
    2,
    '<div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Background</strong></h3><p>Serra do Xistral represents the southernmost continental peatland complex in Europe and is protected under the Natura 2000 Network. The importance of this area lies both in its hydrological function – since it forms the headwaters of many regional rivers – and in its ecological value, as it hosts distinctive habitats such as blanket bogs, clearly illustrating their role as sponge landscapes. What makes these peatlands particularly unique, however, is their primary water source: fog, where fog input can reach up to 16,000 mm annually due to orographic uplift and fog interception.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>The Problem</strong></h3><p>For many years, this habitat remained understudied and poorly known, largely because it was perceived as having limited economic value. Today, these peatlands face increasing pressure from wind turbine installations. Although measures are being implemented to prevent further development and mitigate potential impacts, continued research and coordinated management remain essential.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>More recent and substantial research efforts have enabled a systematic inventory and classification of the area, laying the foundation for effective conservation and management strategies. From a scientific perspective, the area is especially valuable because it includes both well-preserved and degraded peatlands, providing an ideal setting to study and test different conservation approaches. Within SpongeBoost, research on these peatlands aims to support the creation of a sustainable management plan in close collaboration with local stakeholders.</p></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Spain' LIMIT 1),
        'region', 'Galicia',
        'name_of_site', 'Serra do Xistral Peatlands',
        'type_of_sponge_territory', 'Peatland',
        'primary_water_source', 'Fog and rainfall',
        'secondary_water_source', '',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%CIREF%' OR title ILIKE '%CIREF%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);

-- 3) Sotos de Alfaro ---------------------------------------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Sotos de Alfaro',
    'sotos-de-alfaro',
    3,
    '<div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Background</strong></h3><p>The Ebro River is well known for its historical floods. As a Mediterranean river, its flow regime is highly variable, with base flows of around 300 cubic meters per second and peaks of up to 3,000 during flood events. The middle section of the river flows through a flat valley surrounded by mountains and is highly urbanised, increasing the exposure of people and infrastructure to flood hazards.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>The Problem</strong></h3><p>Over the past century, the river has lost around 50% of its natural space due to massive channelisation, embankments, levees, and the occupation of floodplains for farmland and infrastructure. Since the 1960s, further straightening and reinforcement have reduced the river''s natural floodplain, worsening flood damage, particularly in areas such as Sotos de Alfaro. Major floods in 2015, 2018 and 2021 caused damages estimated at around €100 million per decade.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>To address these challenges, the LIFE Ebro Resilience project is implementing restoration actions aligned with the Flood Risk Management Plan and the National Strategy for River Restoration. Measures include removing levees and protective dams, constructing relief channels, and applying the CURAGE technique to recover lost river branches, supported by intensive public participation with stakeholders and local communities. Building on these efforts, SpongeBoost quantifies the effects of these Nature-based Solutions (NbS) on flood risk reduction and groundwater recharge by assessing hydrological connectivity, measuring water infiltration and retention in restored and unrestored sites, and conducting surveys to evaluate the effectiveness of NbS and their potential application as a business model.</p></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Spain' LIMIT 1),
        'region', 'Ebro River',
        'name_of_site', 'Sotos de Alfaro',
        'type_of_sponge_territory', 'Floodplain',
        'primary_water_source', 'Rainfall',
        'secondary_water_source', 'Snowmelt',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%CIREF%' OR title ILIKE '%CIREF%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);

-- 4) Schneifel ---------------------------------------------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Schneifel',
    'schneifel',
    4,
    '<div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Background</strong></h3><p>The Schneifel is located in the Eifel low mountain range and includes peat-influenced headwater ecosystems with wet forests and bog-heath habitats. These landscapes are important natural sponge areas because they retain water, reduce rapid runoff, and provide valuable habitats for specialised wetland biodiversity.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>The Problem</strong></h3><p>Like many upland wetland systems in Central Europe, the Schneifel has been affected by historical drainage and land-use change, especially forest conversion and drainage measures associated with spruce management. These alterations have reduced the area''s natural water retention capacity, changed hydrological dynamics, and contributed to the degradation of peatland and wetland habitats.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>In the Schneifel, restoration efforts focus on rewetting and improving natural hydrological conditions in the catchment. The measures are implemented jointly by Forstamt Prüm and the Moorschutzprogramm des Landes Rheinland-Pfalz, coordinated through the Stiftung Natur und Umwelt Rheinland-Pfalz (SNU) as part of a project of the State of Rhineland-Palatinate. Current actions include the blocking of drainage ditches and forestry interventions aimed at promoting the development of wetter, more resilient forest and peatland conditions.</p><p>Within SpongeBoost, RWTH Aachen University supports this process through hydrological monitoring and modelling. At the catchment outlet, a monitoring station is used to derive discharge from measured water level and flow velocity data, providing the basis for hydrological modelling. In addition, precipitation data are obtained from a nearby DWD weather station, and soil moisture monitoring will soon be installed within the catchment. Together, these data help to better understand runoff dynamics and assess how restoration measures can strengthen the site''s sponge functions, such as water retention, flow regulation, and climate resilience.</p></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Germany' LIMIT 1),
        'region', 'Eifel, Rhineland-Palatinate',
        'name_of_site', 'Schneifel',
        'type_of_sponge_territory', 'Peatland / wet forest headwater catchment',
        'primary_water_source', 'Rainfall',
        'secondary_water_source', '',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%RWTH%' OR title ILIKE '%RWTH%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);

-- 5) Weiße Elster ------------------------------------------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Weiße Elster',
    'weisse-elster',
    5,
    '<div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Background</strong></h3><p>The Leipzig floodplain forest is one of the largest continuous floodplain forests in Central Europe, located along the rivers White Elster, Pleiße, and Luppe in the city of Leipzig. It is characterised by high biodiversity and typical tree species such as oak, ash, and lime. However, its condition is threatened by the lack of natural flooding and human impact.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>The Problem</strong></h3><p>The Leipzig floodplain forest is facing a decline in natural flooding due to river regulation and water management, which disrupts its ecosystem. This also reduces its natural sponge function, meaning it can no longer store and retain water effectively. As a result, tree species composition is changing, with important species like oak struggling to regenerate while less suitable species spread. Additionally, biodiversity, climate stability, and the forest''s resilience are threatened by these changes, as well as by pests and diseases.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>Various restoration efforts are being carried out to preserve the Leipzig floodplain forest, especially through projects like "Lebendige Luppe," which aim to restore natural water dynamics by reconnecting rivers and old channels. These measures help reintroduce periodic flooding, improve habitats, and support the regeneration of native tree species and biodiversity. SpongeBoost also contributes by generating evidence for these restoration processes, for example, through monitoring floodplain areas and measuring rising groundwater levels caused by the implemented measures. Additionally, species like the beaver support rewetting through their dam-building activities, although these processes are still at an early stage.</p></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Germany' LIMIT 1),
        'region', 'Leipzig',
        'name_of_site', 'Leipziger Auwald - Leipzig Floodplain Forest',
        'type_of_sponge_territory', 'Floodplain',
        'primary_water_source', 'Stream/surface water, groundwater, rainfall',
        'secondary_water_source', '',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%UFZ%' OR title ILIKE '%UFZ%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);

-- 6) Pärnu Catchment ---------------------------------------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Pärnu Catchment',
    'parnu-catchment',
    6,
    '<div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Background</strong></h3><p>The Pärnu River is one of the longest rivers in Estonia, flowing from the Pandivere Upland to Pärnu Bay in southwestern Estonia. Its catchment lies on relatively flat terrain and is also one of the largest in Estonia, making it one of the country''s most flood-prone river systems. The lower course of the river flows through the city of Pärnu, where it creates hydrological pressure and poses flooding risks. The catchment contains numerous peatlands in various ecological states. The most notable area is Soomaa National Park, which includes many raised bog peatlands.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>The Problem</strong></h3><p>Overall, the catchment is heavily drained due to forestry, agriculture, and peat production. There is no clear understanding of how the current land-use situation affects water flow in the catchment or how it influences flow dynamics in the Pärnu River. It is also unclear how future climate change will affect the hydrology of the catchment and whether these effects could be mitigated through restoration measures and changes in current land use.</p></div></div><div class="row case-study-row"><div class="col-xs-12 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>The most notable measure has been the removal of the Sindi Dam under the Pärnu River Restoration Project, which restored fish migration and natural river flow. In addition, peatland restoration has been carried out in areas such as Soomaa National Park by the State Forest Management Centre, financed through the EU Cohesion Fund together with Estonian state co-financing. Major restoration works have also been carried out in the Kõrsa and Lavassaare former peat extraction fields under the EU Horizon WaterLANDS project. The main peatland restoration measures within these projects have been ditch blocking and subsequent rewetting. The activities within the SpongeBoost project help to improve understanding of the current water retention capacity of the catchment and provide insights into the most suitable future land-use and restoration scenarios that could deliver multifunctional benefits for addressing different climate-related challenges.</p></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Estonia' LIMIT 1),
        'region', 'South-Eastern Estonia, Pärnu river',
        'name_of_site', 'Pärnu Catchment',
        'type_of_sponge_territory', 'Peatland',
        'primary_water_source', 'Precipitation',
        'secondary_water_source', '',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%Tartu%' OR title ILIKE '%Tartu%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);

-- 7) Alam-Pedja (uses the supplied image/text layout) ------------------
INSERT INTO pensoft_casestudies_data
    (title, slug, sort_order, description, quick_facts, created_at, updated_at)
VALUES (
    'Alam-Pedja',
    'alam-pedja',
    7,
    '<!-- Background: image left, text right --><div class="row case-study-row"><div class="col-xs-12 col-sm-4 case-study-media"><img src="http://spongeboost.pensoft.com/storage/app/media/uploaded-files/DSC_0375%201.png" alt="Alam-Pedja Nature Reserve" class="img-responsive case-study-image fr-fil fr-dib" data-result="success"></div><div class="col-xs-12 col-sm-8 case-study-text"><h3><strong>Background</strong></h3><p>Alam-Pedja Nature Reserve is one of the largest protected areas in Estonia. The core of the reserve forms one of the most important floodplain systems in the country, including the Emajõgi River and its tributaries, the latter being among the most flood-prone river systems in Estonia. The middle course of the Emajõgi River flows through the city of Tartu, which is considered to be within a flood-risk zone. The floodplain and surrounding protected area contain numerous wetlands, a large proportion of which consist of peatlands.</p></div></div><!-- The Problem: text left, image right --><div class="row case-study-row"><div class="col-xs-12 col-sm-8 case-study-text"><h3><strong>The Problem</strong></h3><p>The main issues facing Alam-Pedja Nature Reserve are related to altered hydrological conditions, climate variability, and land-use pressures in the wider catchment. Although the area still preserves large natural floodplains, historical upstream drainage and land-use changes influence water movement and may affect the natural flood retention capacity of the system. In addition, increasing climate variability is expected to alter flood timing, low-flow periods, and seasonal water storage. Because the reserve is closely connected to the Emajõgi River system, these changes are also relevant for downstream flood risk, including in Tartu. An equally important issue historically has been the preservation of biodiversity, as the area contains valuable floodplain meadows, wet forests, and peatland habitats that depend on natural hydrological dynamics.</p></div><div class="col-xs-12 col-sm-4 case-study-media"><img src="http://spongeboost.pensoft.com/storage/app/media/uploaded-files/dsc0375-1-1.png" alt="Restoration work in the field" class="img-responsive case-study-image fr-fil fr-dib" data-result="success"></div></div><!-- Restoration efforts: image left, text right --><div class="row case-study-row"><div class="col-xs-12 col-sm-4 case-study-media"><img src="http://spongeboost.pensoft.com/storage/app/media/uploaded-files/dsc0375-1-2.png" alt="Floodplain aerial view" class="img-responsive case-study-image fr-fil fr-dib" data-result="success"></div><div class="col-xs-12 col-sm-8 case-study-text"><h3><strong>Restoration efforts</strong></h3><p>To preserve Alam-Pedja Nature Reserve, the main focus has been on maintaining natural flooding, restoring wetland hydrology, and preserving floodplain habitats that are important for biodiversity. A major effort has been directed toward floodplain meadows, where regular mowing and grazing have been reintroduced to prevent overgrowth and maintain habitats for protected bird species and meadow communities. These activities have mainly been coordinated by the Estonian Environmental Board and supported through national conservation funding and EU agri-environmental measures.</p><p>Within the LIFE Happyriver project, the lower course of the Laeva River, which is part of the Alam-Pedja hydrological system, was restored by reopening former river sections and improving adjacent floodplain meadows, thereby enhancing habitat quality and hydrological functioning of the floodplain.&nbsp;</p></div></div><!-- Closing paragraphs: text left, image right --><div class="row case-study-row"><div class="col-xs-12 col-sm-8 case-study-text"><p>Peatland restoration within and near the reserve has also been carried out by blocking drainage ditches and rewetting degraded areas, mainly using EU LIFE and Cohesion Fund funding and Estonian state co-financing. Several additional restoration initiatives are ongoing, as floodplain–peatland systems and wet forests within the reserve are targeted under the LIFE IP ForEst&amp;FarmLand and LIFE-SIP AdaptEST projects.</p><p>The objective of SpongeBoost in this context is to analyse how floodplains, wetlands, and peatlands regulate water under current and future climate conditions, and to evaluate which land-use or restoration scenarios in the still-drained upper catchments of the major rivers could strengthen natural water retention while simultaneously supporting biodiversity and flood resilience.</p></div><div class="col-xs-12 col-sm-4 case-study-media"><img src="http://spongeboost.pensoft.com/storage/app/media/uploaded-files/dsc0375-1-3.png" alt="Restored wetland landscape" class="img-responsive case-study-image fr-fil fr-dib" data-result="success"></div></div>',
    json_build_array(json_build_object(
        'country', (SELECT id FROM rainlab_location_countries WHERE name = 'Estonia' LIMIT 1),
        'region', 'Alam-Pedja Nature Reserve',
        'name_of_site', 'Alam-Pedja',
        'type_of_sponge_territory', 'Combination of different peatlands and a floodplain of the river Emajõgi',
        'primary_water_source', 'Rainfall',
        'secondary_water_source', '',
        'partner', (SELECT id FROM pensoft_partners_partners WHERE instituion ILIKE '%Tartu%' OR title ILIKE '%Tartu%' ORDER BY id LIMIT 1)
    ))::text,
    NOW(), NOW()
);
