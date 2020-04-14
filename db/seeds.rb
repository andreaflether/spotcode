#========================
# SONGS
#========================
 
tmp_dir = Rails.root.join("tmp")
 
alternative = Category.create(name: "Alternative")
alternative.image.attach(io: File.open("#{tmp_dir}/seed_files/alternative.jpg"), filename: "alternative.jpg")
 
electronic = Category.create(name: "Dance & Electronic")
electronic.image.attach(io: File.open("#{tmp_dir}/seed_files/electronic.jpg"), filename: "electronic.jpg")
 
hiphop = Category.create(name: "Hip Hop")
hiphop.image.attach(io: File.open("#{tmp_dir}/seed_files/hiphop.jpg"), filename: "hiphop.jpg")
 
rb = Category.create(name: "R&B")
rb.image.attach(io: File.open("#{tmp_dir}/seed_files/r&b.jpg"), filename: "r&b.jpg")

rock = Category.create(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.jpg"), filename: "rock.jpg")

softrock = Category.create(name: "Soft Rock")
softrock.image.attach(io: File.open("#{tmp_dir}/seed_files/softrock.jpg"), filename: "softrock.jpg")

top40 = Category.create(name: "Top 40 & Pop")
top40.image.attach(io: File.open("#{tmp_dir}/seed_files/top40.jpg"), filename: "top40.jpg")

world = Category.create(name: "World")
world.image.attach(io: File.open("#{tmp_dir}/seed_files/world.jpg"), filename: "world.jpg")
 
 
# IZA
 
iza = Artist.create(name: "IZA")
iza.photo.attach(io: File.open("#{tmp_dir}/seed_files/iza.jpg"), filename: "iza.jpg")
 
dona_de_mim = iza.albums.create(title: "Dona de Mim (Single)", date: Time.strptime("27/04/2018", "%d/%m/%Y"), category: top40)
dona_de_mim.cover.attach(io: File.open("#{tmp_dir}/seed_files/dona_de_mim.jpg"), filename: "dona_de_mim.jpg")
 
ddm = dona_de_mim.songs.create(title: "Dona de Mim", plays_count: Random.rand(1000))
ddm.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/dona_de_mim.mp3"), filename: "dona_de_mim.mp3")

meu_talisma = iza.albums.create(title: "Meu Talismã", date: Time.strptime("23/08/2019", "%d/%m/%Y"), category: rb)
meu_talisma.cover.attach(io: File.open("#{tmp_dir}/seed_files/meu_talisma.jpg"), filename: "meu_talisma.jpg")
 
mt = meu_talisma.songs.create(title: "Meu Talismã", plays_count: Random.rand(1000))
mt.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/meu_talisma.mp3"), filename: "meu_talisma.mp3")
 

# LITTLE MIX
 
little_mix = Artist.create(name: "Little Mix")
little_mix.photo.attach(io: File.open("#{tmp_dir}/seed_files/little_mix.jpg"), filename: "little_mix.jpg")
 
lm5 = little_mix.albums.create(title: "LM5 (Deluxe)", date: Time.strptime("16/11/2018", "%d/%m/%Y"), category: top40)
lm5.cover.attach(io: File.open("#{tmp_dir}/seed_files/lm5.jpg"), filename: "lm5.jpg")
 
american_boy = lm5.songs.create(title: "American Boy", plays_count: Random.rand(1000))
american_boy.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/american_boy.mp3"), filename: "american_boy.mp3")
forget_you_not = lm5.songs.create(title: "Forget You Not", plays_count: Random.rand(1000))
forget_you_not.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/forget_you_not.mp3"), filename: "forget_you_not.mp3")
joan_of_arc = lm5.songs.create(title: "Joan Of Arc", plays_count: Random.rand(1000))
joan_of_arc.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/joan_of_arc.mp3"), filename: "joan_of_arc.mp3")
love_a_girl_right = lm5.songs.create(title: "Love a Girl Right", plays_count: Random.rand(1000))
love_a_girl_right.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/love_a_girl_right.mp3"), filename: "love_a_girl_right.mp3")
monster_in_me = lm5.songs.create(title: "Monster In Me", plays_count: Random.rand(1000))
monster_in_me.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/monster_in_me.mp3"), filename: "monster_in_me.mp3")
more_than_words = lm5.songs.create(title: "More Than Words (feat. Kamille)", plays_count: Random.rand(1000))
more_than_words.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/more_than_words_feat_kamille.mp3"), filename: "more_than_words_feat_kamille.mp3")
motivate = lm5.songs.create(title: "Motivate", plays_count: Random.rand(1000))
motivate.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/motivate.mp3"), filename: "motivate.mp3")
notice = lm5.songs.create(title: "Notice", plays_count: Random.rand(1000))
notice.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/notice.mp3"), filename: "notice.mp3")
only_you = lm5.songs.create(title: "Only You", plays_count: Random.rand(1000))
only_you.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/only_you.mp3"), filename: "only_you.mp3")
strip = lm5.songs.create(title: "Strip (feat. Sharaya J)", plays_count: Random.rand(1000))
strip.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/strip_feat_sharaya_j.mp3"), filename: "strip_feat_sharaya_j.mp3")
the_cure = lm5.songs.create(title: "The Cure", plays_count: Random.rand(1000))
the_cure.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/the_cure.mp3"), filename: "the_cure.mp3")
the_national_manthem = lm5.songs.create(title: "The National Manthem", plays_count: Random.rand(1000))
the_national_manthem.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/the_national_manthem.mp3"), filename: "the_national_manthem.mp3")
think_about_us = lm5.songs.create(title: "Think About Us", plays_count: Random.rand(1000))
think_about_us.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/think_about_us.mp3"), filename: "think_about_us.mp3")
told_you_so = lm5.songs.create(title: "Told You So", plays_count: Random.rand(1000))
told_you_so.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/told_you_so.mp3"), filename: "told_you_so.mp3")
wasabi = lm5.songs.create(title: "Wasabi", plays_count: Random.rand(1000))
wasabi.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/wasabi.mp3"), filename: "wasabi.mp3")
woman_like_me = lm5.songs.create(title: "Woman Like Me (feat. Nicki Minaj)", plays_count: Random.rand(1000))
woman_like_me.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/woman_like_me_feat_nicki_minaj.mp3"), filename: "woman_like_me_feat_nicki_minaj.mp3")
womans_world = lm5.songs.create(title: "Woman's World", plays_count: Random.rand(1000))
womans_world.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/womans_world.mp3"), filename: "womans_world.mp3")

# DUA LIPA
 
dua_lipa = Artist.create(name: "Dua Lipa")
dua_lipa.photo.attach(io: File.open("#{tmp_dir}/seed_files/dua_lipa.jpg"), filename: "dua_lipa.jpg")
 
future_nostalgia = little_mix.albums.create(title: "LM5 (Deluxe)", date: Time.strptime("27/03/2020", "%d/%m/%Y"), category: world)
future_nostalgia.cover.attach(io: File.open("#{tmp_dir}/seed_files/future_nostalgia.png"), filename: "future_nostalgia.png")
 
boys_will_be_boys = future_nostalgia.songs.create(title: "Boys Will Be Boys", plays_count: Random.rand(1000))
boys_will_be_boys.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/boys_will_be_boys.mp3"), filename: "boys_will_be_boys.mp3")
break_my_heart = future_nostalgia.songs.create(title: "Break My Heart", plays_count: Random.rand(1000))
break_my_heart.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/break_my_heart.mp3"), filename: "break_my_heart.mp3")


# LABRINTH
 
labrinth = Artist.create(name: "Labrinth")
labrinth.photo.attach(io: File.open("#{tmp_dir}/seed_files/labrinth.jpeg"), filename: "labrinth.jpeg")
 
all_for_us = labrinth.albums.create(title: "All For Us (From The HBO Original Series Euphoria)", date: Time.strptime("05/08/2019", "%d/%m/%Y"), category: alternative)
all_for_us.cover.attach(io: File.open("#{tmp_dir}/seed_files/all_for_us.jpg"), filename: "all_for_us.jpg")
 
afu = all_for_us.songs.create(title: "All For Us (feat. Zendaya)", plays_count: Random.rand(1000))
afu.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/all_for_us.mp3"), filename: "all_for_us.mp3")
 
# ARCADE FIRE
 
arcade_fire = Artist.create(name: "Arcade Fire")
arcade_fire.photo.attach(io: File.open("#{tmp_dir}/seed_files/arcade_fire.jpg"), filename: "arcade_fire.jpg")
 
neon_bible = arcade_fire.albums.create(title: "Neon Bible", date: Time.strptime("05/03/2007", "%d/%m/%Y"), category: softrock)
neon_bible.cover.attach(io: File.open("#{tmp_dir}/seed_files/neon_bible.jpg"), filename: "neon_bible.jpg")
 
mbiac = neon_bible.songs.create(title: "My Body Is A Cage", plays_count: Random.rand(1000))
mbiac.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/my_body_is_a_cage.mp3"), filename: "my_body_is_a_cage.mp3")

# LIZZO
 
lizzo = Artist.create(name: "Lizzo")
lizzo.photo.attach(io: File.open("#{tmp_dir}/seed_files/lizzo.jpg"), filename: "lizzo.jpg")
 
cuz_i_love_you = lizzo.albums.create(title: "Neon Bible", date: Time.strptime("17/04/2019", "%d/%m/%Y"), category: rb)
cuz_i_love_you.cover.attach(io: File.open("#{tmp_dir}/seed_files/cuz_i_love_you.png"), filename: "cuz_i_love_you.png")
 
cily = cuz_i_love_you.songs.create(title: "Cuz I Love You", plays_count: Random.rand(1000))
cily.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/cuz_i_love_you.mp3"), filename: "cuz_i_love_you.mp3")

 
#========================
# USERS
#========================
 
andreaflether = User.create(name: "Andréa Alencar", email: "andreaflether@gmail.com", password: "123456", 
password_confirmation: "123456")
andreaflether.favorites.create(favoritable: dona_de_mim)
andreaflether.favorites.create(favoritable: lm5)
andreaflether.favorites.create(favoritable: future_nostalgia)
andreaflether.recently_played.create(album: dona_de_mim)
andreaflether.recently_played.create(album: future_nostalgia)
andreaflether.recently_played.create(album: lm5)
 
diana_ross = User.create(name: "Diana Ross", email: "diana@ross.com", password: "123456", password_confirmation: "123456")
diana_ross.favorites.create(favoritable: lm5)
diana_ross.recently_played.create(album: cuz_i_love_you)
diana_ross.recently_played.create(album: neon_bible)
diana_ross.recently_played.create(album: lm5)
 
michael_jackson = User.create(name: "Michael Jackson", email: "michael@jackson.com", password: "123456", password_confirmation: "123456")
michael_jackson.favorites.create(favoritable: cuz_i_love_you)
michael_jackson.favorites.create(favoritable: future_nostalgia)
 
celine_dion = User.create(name: "Celine Dion", email: "celine@dion.com", password: "123456", password_confirmation: "123456")
celine_dion.favorites.create(favoritable: cuz_i_love_you)
celine_dion.favorites.create(favoritable: lm5)