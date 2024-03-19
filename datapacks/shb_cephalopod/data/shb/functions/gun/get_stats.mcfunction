scoreboard players set .loaded stats 1

execute store result score .cd stats run data get storage shb:gun stats.cd
execute store result score .autofire stats run data get storage shb:gun stats.autofire
execute store result score .autodelay stats run data get storage shb:gun stats.autodelay
execute store result score .semiauto stats run data get storage shb:gun stats.semiauto
execute store result score .drawtime stats run data get storage shb:gun stats.drawtime

execute store result score .ammo.count stats run data get storage shb:gun stats.ammo.count
execute store result score .ammo.type stats run data get storage shb:gun stats.ammo.type

execute store result score .reload.time stats run data get storage shb:gun stats.reload.time
execute store result score .reload.per stats run data get storage shb:gun stats.reload.per
execute store result score .reload.mag stats run data get storage shb:gun stats.reload.mag

execute store result score .sfx.shoot stats run data get storage shb:gun stats.sfx.shoot
execute store result score .sfx.reload stats run data get storage shb:gun stats.sfx.reload

execute store result score .range stats run data get storage shb:gun stats.range
execute store result score .dmg stats run data get storage shb:gun stats.dmg 10
execute store result score .falloff.buffer stats run data get storage shb:gun stats.falloff.buffer
execute store result score .falloff.divisor stats run data get storage shb:gun stats.falloff.divisor