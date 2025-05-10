item replace entity @a[tag=cops] armor.chest with diamond_chestplate[item_name="警察な服",enchantments={"minecraft:protection":10,"minecraft:binding_curse":10}]
give @a[tag=cops] minecraft:breeze_rod[custom_name="警棒",minecraft:enchantments={"minecraft:sharpness":10}]
give @a[tag=cops] bow[minecraft:custom_name="とうもころし",minecraft:damage=10000,minecraft:enchantments={power:5}]
give @a[tag=cops] minecraft:arrow
give @a[tag=robbers,scores={item=1}] minecraft:ghast_tear[can_place_on={blocks:[]},consumable={consume_seconds:0.08,sound:{sound_id:entity.experience_orb.pickup}},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},use_cooldown={seconds:30}]
give @a[tag=robbers,scores={item=1}] minecraft:nether_star[can_place_on={blocks:[]},consumable={consume_seconds:0.08,sound:{sound_id:entity.experience_orb.pickup}},minecraft:food={nutrition:0,saturation:0,can_always_eat:true},use_cooldown={seconds:30}]