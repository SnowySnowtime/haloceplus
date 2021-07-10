CreateConVar("drc_snow_halo_projectiletype", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Toggle between the usage of Projectiles and Hitscan for the Needler. 0 for Hitscan (Default), 1 for Projectile. Restart Required.", 0, 1)


sound.Add(
{
    name = "h3.esidle",
    channel = CHAN_STATIC,
    volume = 0.01,
    soundlevel = 80,
    sound = {"sil/energy_sword_loop1.wav","sil/energy_sword_loop2.wav","sil/energy_sword_loop3.wav","sil/energy_sword_loop4.wav","sil/energy_sword_loop5.wav","sil/energy_sword_loop6.wav","sil/energy_sword_loop7.wav"}
})

sound.Add(
{
    name = "hce.esdeploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 100,
    sound = "customedition/sword_ready.wav"
})

sound.Add(
{
    name = "energysword_swingimpdsb",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 100,
    sound = {"sil/sword_hit_char1.wav","sil/sword_hit_char2.wav","sil/sword_hit_char3.wav","sil/sword_hit_char4.wav","sil/sword_hit_char5.wav","sil/sword_hit_char6.wav","sil/sword_hit_char7.wav"}
})

sound.Add(
{
    name = "energysword_envimpdsb",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 100,
    sound = {"snow/weapons/energy_sword/sword_impact_env/sword_hit_env1.wav","snow/weapons/energy_sword/sword_impact_env/sword_hit_env2.wav","snow/weapons/energy_sword/sword_impact_env/sword_hit_env3.wav","snow/weapons/energy_sword/sword_impact_env/sword_hit_env4.wav","snow/weapons/energy_sword/sword_impact_env/sword_hit_env5.wav"}
})

sound.Add(
{
    name = "h3.energysword_m1cloth",
    channel = CHAN_STATIC,
    volume = 0.25,
    soundlevel = 80,
    sound = {"sil/enegy_sword_lunge_cloth1.wav","sil/enegy_sword_lunge_cloth2.wav","sil/enegy_sword_lunge_cloth3.wav"}
})

sound.Add(
{
    name = "h3.eslungecloth",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"sil/enegy_sword_lunge_cloth1.wav","sil/enegy_sword_lunge_cloth2.wav","sil/enegy_sword_lunge_cloth3.wav"}
})

sound.Add(
{
    name = "h3.eslunge",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"customedition/energy_sword_lunge_hum1.wav","customedition/energy_sword_lunge_hum2.wav","customedition/energy_sword_lunge_hum3.wav"}
})

sound.Add(
{
    name = "h3.esairlungecloth",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "sil/energy_sword_lunge_unaimed_airborne_cloth.wav"
})

sound.Add(
{
    name = "h3.esairlunge",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/energy_sword_lunge_unaimed_airborne_hum.wav"
})

sound.Add(
{
    name = "h2a.esdeploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"h2a/energysword/deploy1.mp3","h2a/energysword/deploy2.mp3","h2a/energysword/deploy3.mp3"}
})

sound.Add(
{
    name = "h2a.eslunge",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"h2a/energysword/swing1.mp3","h2a/energysword/swing2.mp3","h2a/energysword/swing3.mp3"}
})

sound.Add(
{
    name = "h2a.esshimmer",
    channel = CHAN_STATIC,
    volume = 0.4,
    soundlevel = 100,
    sound = {"h2a/energysword/shine1.mp3","h2a/energysword/shine2.mp3","h2a/energysword/shine3.mp3","h2a/energysword/shine4.mp3","h2a/energysword/shine5.mp3","h2a/energysword/shine6.mp3"}
})

sound.Add(
{
    name = "sword_hit",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/sword_hit_env4.wav"
})

sound.Add(
{
    name = "energysword_swing",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"customedition/energy_sword_lunge_hum1.wav","customedition/energy_sword_lunge_hum2.wav","customedition/energy_sword_lunge_hum3wav","customedition/energy_sword_lunge_hum4.wav"}
})

sound.Add(
{
    name = "snow_uplink_idle",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"snow/ce/uplink_lp.wav"}
})

sound.Add(
{
    name = "snow_plasma_expl",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 110,
    sound = {"hce/plas_explode.wav"}
})