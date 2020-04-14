#========================
# SONGS
#========================
 
tmp_dir = Rails.root.join("tmp")
 
alternative = Category.find_or_create_by(name: "Alternative")
alternative.image.attach(io: File.open("#{tmp_dir}/seed_files/alternative.jpg"), filename: "alternative.jpg")
 
electronic = Category.find_or_create_by(name: "Dance & Electronic")
electronic.image.attach(io: File.open("#{tmp_dir}/seed_files/electronic.jpg"), filename: "electronic.jpg")
 
hiphop = Category.find_or_create_by(name: "Hip Hop")
hiphop.image.attach(io: File.open("#{tmp_dir}/seed_files/hiphop.jpg"), filename: "hiphop.jpg")
 
rb = Category.find_or_create_by(name: "R&B")
rb.image.attach(io: File.open("#{tmp_dir}/seed_files/r&b.jpg"), filename: "r&b.jpg")

rock = Category.find_or_create_by(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.jpg"), filename: "rock.jpg")

softrock = Category.find_or_create_by(name: "Soft Rock")
softrock.image.attach(io: File.open("#{tmp_dir}/seed_files/softrock.jpg"), filename: "softrock.jpg")

top40 = Category.find_or_create_by(name: "Top 40 & Pop")
top40.image.attach(io: File.open("#{tmp_dir}/seed_files/top40.jpg"), filename: "top40.jpg")

world = Category.find_or_create_by(name: "World")
world.image.attach(io: File.open("#{tmp_dir}/seed_files/world.jpg"), filename: "world.jpg")
 
# IZA
 
iza = Artist.find_or_create_by(name: "IZA")
iza.photo.attach(io: File.open("#{tmp_dir}/seed_files/iza.jpg"), filename: "iza.jpg")
 
dona_de_mim = iza.albums.create_with(date: Time.strptime("27/04/2018", "%d/%m/%Y"), category: top40)
                        .find_or_create_by(title: "Dona de Mim (Single)")
dona_de_mim.cover.attach(io: File.open("#{tmp_dir}/seed_files/dona_de_mim.jpg"), filename: "dona_de_mim.jpg")
 
ddm = dona_de_mim.songs.create_with(plays_count: Random.rand(1000)).find_or_create_by(title: "Dona de Mim")
ddm.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/dona_de_mim.mp3"), filename: "dona_de_mim.mp3")

meu_talisma = iza.albums.create_with(date: Time.strptime("23/08/2019", "%d/%m/%Y"), category: rb)
                        .find_or_create_by(title: "Meu Talismã")
meu_talisma.cover.attach(io: File.open("#{tmp_dir}/seed_files/meu_talisma.jpg"), filename: "meu_talisma.jpg")
 
mt = meu_talisma.songs.create_with(plays_count: Random.rand(1000)).find_or_create_by(title: "Meu Talismã")
mt.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/meu_talisma.mp3"), filename: "meu_talisma.mp3")

# LITTLE MIX
 
little_mix = Artist.find_or_create_by(name: "Little Mix")
little_mix.photo.attach(io: File.open("#{tmp_dir}/seed_files/little_mix.jpg"), filename: "little_mix.jpg")
 
lm5 = little_mix.albums.create_with(date: Time.strptime("16/11/2018", "%d/%m/%Y"), category: top40)
                       .find_or_create_by(title: "LM5 (Deluxe)")
lm5.cover.attach(io: File.open("#{tmp_dir}/seed_files/lm5.jpg"), filename: "lm5.jpg")
 
american_boy = lm5.songs.create_with(plays_count: Random.rand(1000))
                        .find_or_create_by(title: "American Boy")
american_boy.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/american_boy.mp3"), filename: "american_boy.mp3")
forget_you_not = lm5.songs.create_with(plays_count: Random.rand(1000))
                          .find_or_create_by(title: "Forget You Not")
forget_you_not.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/forget_you_not.mp3"), filename: "forget_you_not.mp3")
joan_of_arc = lm5.songs.create_with(plays_count: Random.rand(1000))
                       .find_or_create_by(title: "Joan Of Arc")
joan_of_arc.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/joan_of_arc.mp3"), filename: "joan_of_arc.mp3")
love_a_girl_right = lm5.songs.create_with(plays_count: Random.rand(1000))
                             .find_or_create_by(title: "Love a Girl Right")
love_a_girl_right.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/love_a_girl_right.mp3"), filename: "love_a_girl_right.mp3")
monster_in_me = lm5.songs.create_with(plays_count: Random.rand(1000))
                         .find_or_create_by(title: "Monster In Me")
monster_in_me.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/monster_in_me.mp3"), filename: "monster_in_me.mp3")
more_than_words = lm5.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "More Than Words (feat. Kamille)")
more_than_words.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/more_than_words_feat_kamille.mp3"), filename: "more_than_words_feat_kamille.mp3")
motivate = lm5.songs.create_with(plays_count: Random.rand(1000))
                    .find_or_create_by(title: "Motivate")
motivate.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/motivate.mp3"), filename: "motivate.mp3")
notice = lm5.songs.create_with(plays_count: Random.rand(1000))
                  .find_or_create_by(title: "Notice")
notice.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/notice.mp3"), filename: "notice.mp3")
only_you = lm5.songs.create_with(plays_count: Random.rand(1000))
                    .find_or_create_by(title: "Only You")
only_you.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/only_you.mp3"), filename: "only_you.mp3")
strip = lm5.songs.create_with(plays_count: Random.rand(1000))
                 .find_or_create_by(title: "Strip (feat. Sharaya J)")
strip.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/strip_feat_sharaya_j.mp3"), filename: "strip_feat_sharaya_j.mp3")
the_cure = lm5.songs.create_with(plays_count: Random.rand(1000))
                    .find_or_create_by(title: "The Cure")
the_cure.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/the_cure.mp3"), filename: "the_cure.mp3")
the_national_manthem = lm5.songs.create_with(plays_count: Random.rand(1000))
                                .find_or_create_by(title: "The National Manthem")
the_national_manthem.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/the_national_manthem.mp3"), filename: "the_national_manthem.mp3")
think_about_us = lm5.songs.create_with(plays_count: Random.rand(1000))
                          .find_or_create_by(title: "Think About Us")
think_about_us.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/think_about_us.mp3"), filename: "think_about_us.mp3")
told_you_so = lm5.songs.create_with(plays_count: Random.rand(1000))
                       .find_or_create_by(title: "Told You So")
told_you_so.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/told_you_so.mp3"), filename: "told_you_so.mp3")
wasabi = lm5.songs.create_with(plays_count: Random.rand(1000))
                  .find_or_create_by(title: "Wasabi")
wasabi.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/wasabi.mp3"), filename: "wasabi.mp3")
woman_like_me = lm5.songs.create_with(plays_count: Random.rand(1000))
                         .find_or_create_by(title: "Woman Like Me (feat. Nicki Minaj)")
woman_like_me.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/woman_like_me_feat_nicki_minaj.mp3"), filename: "woman_like_me_feat_nicki_minaj.mp3")
womans_world = lm5.songs.create_with(plays_count: Random.rand(1000))
                        .find_or_create_by(title: "Woman's World")
womans_world.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/womans_world.mp3"), filename: "womans_world.mp3")

# DUA LIPA
 
dua_lipa = Artist.find_or_create_by(name: "Dua Lipa")
dua_lipa.photo.attach(io: File.open("#{tmp_dir}/seed_files/dua_lipa.jpg"), filename: "dua_lipa.jpg")
 
future_nostalgia = dua_lipa.albums.create_with(date: Time.strptime("27/03/2020", "%d/%m/%Y"), category: world)
                                  .find_or_create_by(title: "Future Nostalgia")
future_nostalgia.cover.attach(io: File.open("#{tmp_dir}/seed_files/future_nostalgia.png"), filename: "future_nostalgia.png")
 
boys_will_be_boys = future_nostalgia.songs.create_with(plays_count: Random.rand(1000))
                                          .find_or_create_by(title: "Boys Will Be Boys")
boys_will_be_boys.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/boys_will_be_boys.mp3"), filename: "boys_will_be_boys.mp3")
break_my_heart = future_nostalgia.songs.create_with(plays_count: Random.rand(1000))
                                       .find_or_create_by(title: "Break My Heart")
break_my_heart.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/break_my_heart.mp3"), filename: "break_my_heart.mp3")


# LABRINTH
 
labrinth = Artist.find_or_create_by(name: "Labrinth")
labrinth.photo.attach(io: File.open("#{tmp_dir}/seed_files/labrinth.jpeg"), filename: "labrinth.jpeg")
 
all_for_us = labrinth.albums.create_with(date: Time.strptime("05/08/2019", "%d/%m/%Y"), category: alternative)
                            .find_or_create_by(title: "All For Us (From The HBO Original Series Euphoria)")
all_for_us.cover.attach(io: File.open("#{tmp_dir}/seed_files/all_for_us.jpg"), filename: "all_for_us.jpg")
 
afu = all_for_us.songs.create_with(plays_count: Random.rand(1000))
                      .find_or_create_by(title: "All For Us (feat. Zendaya)")
afu.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/all_for_us.mp3"), filename: "all_for_us.mp3")
 
# ARCADE FIRE
 
arcade_fire = Artist.find_or_create_by(name: "Arcade Fire")
arcade_fire.photo.attach(io: File.open("#{tmp_dir}/seed_files/arcade_fire.jpg"), filename: "arcade_fire.jpg")
 
neon_bible = arcade_fire.albums.create_with(date: Time.strptime("05/03/2007", "%d/%m/%Y"), category: softrock)
                               .find_or_create_by(title: "Neon Bible")
neon_bible.cover.attach(io: File.open("#{tmp_dir}/seed_files/neon_bible.jpg"), filename: "neon_bible.jpg")
 
mbiac = neon_bible.songs.create_with(plays_count: Random.rand(1000))
                        .find_or_create_by(title: "My Body Is A Cage")
mbiac.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/my_body_is_a_cage.mp3"), filename: "my_body_is_a_cage.mp3")

# LIZZO
 
lizzo = Artist.find_or_create_by(name: "Lizzo")
lizzo.photo.attach(io: File.open("#{tmp_dir}/seed_files/lizzo.jpg"), filename: "lizzo.jpg")
 
cuz_i_love_you = lizzo.albums.create_with(date: Time.strptime("17/04/2019", "%d/%m/%Y"), category: rb)
                             .find_or_create_by(title: "Cuz I Love You")
cuz_i_love_you.cover.attach(io: File.open("#{tmp_dir}/seed_files/cuz_i_love_you.png"), filename: "cuz_i_love_you.png")
 
cily = cuz_i_love_you.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "Cuz I Love You")
cily.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/cuz_i_love_you.mp3"), filename: "cuz_i_love_you.mp3")

# HAYLEY KIYOKO

hayley_kiyoko = Artist.find_or_create_by(name: "Hayley Kiyoko")
hayley_kiyoko.photo.attach(io: File.open("#{tmp_dir}/seed_files/hayley_kiyoko.jpg"), filename: "hayley_kiyoko.jpg")
 
osop = hayley_kiyoko.albums.create_with(date: Time.strptime("03/02/2015", "%d/%m/%Y"), category: alternative)
                             .find_or_create_by(title: "This Side of Paradise")
osop.cover.attach(io: File.open("#{tmp_dir}/seed_files/this_side_of_paradise.png"), filename: "this_side_of_paradise.png")
 
girls_like_girls = osop.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "Girls Like Girls")
girls_like_girls.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/girls_like_girls.mp3"), filename: "girls_like_girls.mp3")

# PABLLO VITTAR

pabllo_vittar = Artist.find_or_create_by(name: "Pabllo Vittar")
pabllo_vittar.photo.attach(io: File.open("#{tmp_dir}/seed_files/pabllo_vittar.jpg"), filename: "pabllo_vittar.jpg")
 
one = pabllo_vittar.albums.create_with(date: Time.strptime("24/03/2020", "%d/%m/%Y"), category: world)
                             .find_or_create_by(title: "111")
one.cover.attach(io: File.open("#{tmp_dir}/seed_files/111.jpg"), filename: "111.jpg")
 
rajadao = one.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "Rajadão")
rajadao.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/rajadao.mp3"), filename: "rajadao.mp3")

# IVETE SANGALO

ivete_sangalo = Artist.find_or_create_by(name: "Ivete Sangalo")
ivete_sangalo.photo.attach(io: File.open("#{tmp_dir}/seed_files/ivete_sangalo.jpg"), filename: "ivete_sangalo.jpg")
 
live_experience = ivete_sangalo.albums.create_with(date: Time.strptime("12/04/2019", "%d/%m/%Y"), category: world)
                             .find_or_create_by(title: "Live Experience")
live_experience.cover.attach(io: File.open("#{tmp_dir}/seed_files/live_experience.jpg"), filename: "live_experience.jpg")
 
nabucodonosor = live_experience.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "Nabucodonosor")
nabucodonosor.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/nabucodonosor.mp3"), filename: "nabucodonosor.mp3")

# JESSIE J

jessie_j = Artist.find_or_create_by(name: "Jessie J")
jessie_j.photo.attach(io: File.open("#{tmp_dir}/seed_files/jessie_j.jpeg"), filename: "jessie_j.jpeg")
 
sweet_talker = jessie_j.albums.create_with(date: Time.strptime("13/10/2014", "%d/%m/%Y"), category: top40)
                             .find_or_create_by(title: "Sweet Talker")
sweet_talker.cover.attach(io: File.open("#{tmp_dir}/seed_files/sweet_talker.jpg"), filename: "sweet_talker.jpg")
 
masterpiece = sweet_talker.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "Masterpiece")
masterpiece.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/masterpiece.mp3"), filename: "masterpiece.mp3")

# TAYLOR SWIFT

taylor_swift = Artist.find_or_create_by(name: "Taylor Swift")
taylor_swift.photo.attach(io: File.open("#{tmp_dir}/seed_files/taylor_swift.jpg"), filename: "taylor_swift.jpg")
 
lover = taylor_swift.albums.create_with(date: Time.strptime("23/08/2019", "%d/%m/%Y"), category: top40)
                             .find_or_create_by(title: "Lover")
lover.cover.attach(io: File.open("#{tmp_dir}/seed_files/lover.jpg"), filename: "lover.jpg")
 
the_man = lover.songs.create_with(plays_count: Random.rand(1000))
                           .find_or_create_by(title: "The Man")
the_man.file.attach(io: File.open("#{tmp_dir}/seed_files/songs/the_man.mp3"), filename: "the_man.mp3")

 
#========================
# USERS
#========================
 
andreaflether = User.create_with(name: "Andréa Alencar", password: "123456", password_confirmation: "123456")
                    .find_or_create_by(email: "andrea@flether.com")
andreaflether.favorites.find_or_create_by(favoritable: dona_de_mim)
andreaflether.favorites.find_or_create_by(favoritable: lm5)
andreaflether.favorites.find_or_create_by(favoritable: future_nostalgia)
andreaflether.recently_played.find_or_create_by(album: dona_de_mim)
andreaflether.recently_played.find_or_create_by(album: future_nostalgia)
andreaflether.recently_played.find_or_create_by(album: lm5)
 
diana_ross = User.create_with(name: "Diana Ross", password: "123456", password_confirmation: "123456")
                 .find_or_create_by(email: "diana@ross.com")
diana_ross.favorites.find_or_create_by(favoritable: lm5)
diana_ross.recently_played.find_or_create_by(album: cuz_i_love_you)
diana_ross.recently_played.find_or_create_by(album: neon_bible)
diana_ross.recently_played.find_or_create_by(album: lm5)
 
michael_jackson = User.create_with(name: "Michael Jackson", password: "123456", password_confirmation: "123456")
                      .find_or_create_by(email: "michael@jackson.com")
michael_jackson.favorites.find_or_create_by(favoritable: cuz_i_love_you)
michael_jackson.favorites.find_or_create_by(favoritable: future_nostalgia)
 
celine_dion = User.create_with(name: "Celine Dion", password: "123456", password_confirmation: "123456")
                  .find_or_create_by(email: "celine@dion.com")
celine_dion.favorites.find_or_create_by(favoritable: cuz_i_love_you)
celine_dion.favorites.find_or_create_by(favoritable: lm5)