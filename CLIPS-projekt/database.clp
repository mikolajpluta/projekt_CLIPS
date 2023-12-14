
;====================== baza pytań =================

(defrule ask_for_exceptional_talent
  (fact (content "Do you love Money?")(answer "NO"))
  =>
  (assert (question (content "Do you have exceptional talent?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_bitter_for_not_having_exceptional_talent
  (fact (content "Do you have exceptional talent?")(answer "NO"))
  =>
  (assert (question (content "Are you bitter about it?")(possible-answers "YES;NO")))
)

(defrule ask_if_likes_doing_productivve_work
  (fact (content "Do you like doing productive work?")(answer "YES"))
  =>
  (assert (question (content "Can you code?")(possible-answers "YES;NO;Well... it's been a while")))
)

(defrule ask_if_is_has_coinscience
  (fact (content "Do you have any money?")(answer "YES"))
  =>
  (assert (question (content "Do you have a conscience?") (possible-answers "YES;NO")))
)

(defrule ask_if_is_has_any_money
  (fact (content "Do you have a grand vision?")(answer "NO"))
  =>
  (assert (question (content "Do you have any money?")(possible-answers "YES;NO")))
)

(defrule ask_if_has_grand_vison
  (fact (content "Are you afraid of responsibility?") (answer "NO"))
  =>
  (assert (question (content "Do you have a grand vision?")(possible-answers "YES;NO")))
)


(defrule ask_if_he_get_excited_for_other_peoples_ideas
  (fact (content "Do you have exceptional talent?")(answer "YES"))
  =>
  (assert (question (content "Can you get excited for other peoples' ideas?")(possible-answers "YES;NO;Nah, but I can fake it")))
)

(defrule ask_if_is_afraid_of_responsibility
  (fact (content "Do you like doing productive work?") (answer "NO"))
  =>
  (assert (question (content "Are you afraid of responsibility?") (possible-answers "YES;NO")))
)

(defrule ask_if_likes_doing_productive_work
  (fact (content "Do you love Money?")(answer "YES"))
  =>
  (assert (question (content "Do you like doing productive work?") (possible-answers "YES;NO")))
)

(defrule ask_if_he_REALLY_get_excited_for_other_peoples_ideas
  (fact (content "Can you get excited for other peoples' ideas?")(answer "YES"))
  =>
  (assert (question (content "Really?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_think_games_are_important
  (or
  (fact (content "Can you get excited for other peoples' ideas?")(answer "NO"))
  (fact (content "Really?")(answer "NO"))
  )
  =>
  (assert (question (content "Do you think games are important?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_can_make_games_on_his_own
  (fact (content "Do you think games are important?")(answer "YES"))
  =>
  (assert (question (content "Can you make games on your own?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_knows_basic_grammar
  (fact (content "Can you make games on your own?")(answer "NO"))
  =>
  (assert (question (content "Do you know basic grammar?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_is_good_in_video_games
  (fact (content "Do you know basic grammar?")(answer "NO"))
  =>
  (assert (question (content "Are you at least good at playing games?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_is_from_Asia
  (fact (content "Are you at least good at playing games?")(answer "YES"))
  =>
  (assert (question (content "Are you from Asia?")(possible-answers "Yes, Korea;Yes, China;NO")))
)

(defrule ask_if_he_mind_being_underappreciated
  (fact (content "Really?")(answer "YES"))
  =>
  (assert (question (content "Do you mind being underappreciated?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_is_visually_oriented
  (fact (content "Do you mind being underappreciated?")(answer "YES"))
  =>
  (assert (question (content "Are you visually oriented?")(possible-answers "YES;NO")))
)

(defrule ask_if_he_likes_to_work_with_unfinished_tools
  (fact (content "Are you visually oriented?")(answer "NO"))
  =>
  (assert (question (content "Do you like to work with unfinished tools?")(possible-answers "YES;NO")))
)


(defrule ask_if_prefer_working_over_talking
  (fact (content "Are you visually oriented?")(answer "YES"))
  =>
  (assert (question (content "Do you prefer working over talking?")(possible-answers "YES;NO")))
)

(defrule ask_if_speak_spreadsheet
  (fact (content "Do you like to work with unfinished tools?")(answer "NO"))
  =>
  (assert (question (content "Do you speak Spreadsheet?")(possible-answers "YES;NO")))
)

(defrule ask_if_would_be_a_propper_artist
  (fact (content "Do you prefer working over talking?")(answer "YES"))
  =>
  (assert (question (content "Would you rather be a proper artist?")(possible-answers "YES;NO")))
)

(defrule ask_if_want_to_spend_two_weeks_on_two_seconds
  (fact (content "Would you rather be a proper artist?")(answer "NO"))
  =>
  (assert (question (content "Want to spend two weeks on two seconds?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_french
  (fact (content "Would you rather be a proper artist?")(answer "YES"))
  =>
  (assert (question (content "Are you French?")(possible-answers "YES;NO")))
)

(defrule ask_if_likes_to_be_told
  (fact (content "Do you speak Spreadsheet?")(answer "YES"))
  =>
  (assert (question (content "Do you want to be told what to do?")(possible-answers "YES;NO")))
)

(defrule ask_if_obsses_over_details
  (fact (content "Do you want to be told what to do?")(answer "YES"))
  =>
  (assert (question (content "Do you obsess excessively over even the tiniest details?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_asian
  (fact (content "Are you French?")(answer "NO"))
  =>
  (assert (question (content "Asian?")(possible-answers "YES;NO")))
)

(defrule ask_if_enjoys_crafting_crates
  (fact (content "Asian?")(answer "NO"))
  =>
  (assert (question (content "Do you enjoy crafting crates?")(possible-answers "YES;NO")))
)

(defrule ask_if_has_fixation_on_gere_etc
  (fact (content "Do you obsess excessively over even the tiniest details?")(answer "YES"))
  =>
  (assert (question (content "Do you have a fixiation on gore and blood?")(possible-answers "YES;NO")))
)

(defrule ask_iflikes_to_be_alone
  (fact (content "Do you mind being underappreciated?")(answer "NO"))
  =>
  (assert (question (content "Do you like to be alone?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_musical
  (fact (content "Do you like to be alone?")(answer "YES"))
  =>
  (assert (question (content "Are you musical?")(possible-answers "YES;NO")))
)

(defrule ask_if_likes_to_blow_things_up
  (fact (content "Are you musical?")(answer "YES"))
  =>
  (assert (question (content "Do you like to shoot or blow things up?")(possible-answers "YES;NO")))
)

(defrule ask_if_would_rather_be_in_movies
  (fact (content "Do you like to be alone?")(answer "NO"))
  =>
  (assert (question (content "Would you rather be in the movies?")(possible-answers "YES;NO")))
)

(defrule ask_if_mind_errors_in_this_graph
  (fact (content "Would you rather be in the movies?")(answer "NO"))
  =>
  (assert (question (content "Did you mind the errors in this graph?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_TV_celebrity
  (fact (content "Would you rather be in the movies?")(answer "YES"))
  =>
  (assert (question (content "You a TV or movie celebrity?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_caucasian_and_hot
  (fact (content "You a TV or movie celebrity?")(answer "NO"))
  =>
  (assert (question (content "Are you young, caucasian and hot?")(possible-answers "YES;NO")))
)

(defrule ask_if_want_to_chose_who_to_hang_out_with
  (fact (content "Did you mind the errors in this graph?")(answer "NO"))
  =>
  (assert (question (content "Do you want to chose who to hang out with?")(possible-answers "YES;NO")))
)

(defrule ask_if_is_male
  (fact (content "Are you young, caucasian and hot?")(answer "YES"))
  =>
  (assert (question (content "Are you male?")(possible-answers "YES;NO")))
)

(defrule ask_if_like_arts_and_crafts
  (fact (content "Are you male?")(answer "NO"))
  =>
  (assert (question (content "Do you like arts and crafts?")(possible-answers "YES;NO")))
)

;==================================================
;================== rozwiazania ===================
;==================================================

(defrule solution_game_critic
  (fact (content "Are you bitter about it?")(answer "YES"))
  =>
  (assert (solution (content "Game Critic")))
)

(defrule solution_game_reviewer
  (fact (content "Are you bitter about it?")(answer "NO"))
  =>
  (assert (solution (content "Game Reviewer")))
)

(defrule solution_programmer
  (fact (content "Can you code?")(answer "YES"))
  =>
  (assert (solution (content "Programmer")))
)

(defrule solution_marketer
  (fact (content "Can you get excited for other peoples' ideas?")(answer "Nah, but I can fake it"))
  =>
  (assert (solution (content "Marketer")))
)

(defrule solution_technical_lead
  (fact (content "Can you code?")(answer "Well... it's been a while"))
  =>
  (assert (solution (content "Technical Lead")))
)

(defrule solution_shit_out_of_luck
  (fact (content "Can you code?")(answer "NO"))
  =>
  (assert (solution (content "You're shit out of luck")))
)

(defrule solution_social_games_studio_employee
  (fact (content "Do you think games are important?")(answer "NO"))
  =>
  (assert (solution (content "Social Games Studio Employee")))
)

(defrule solution_indie_developer
  (fact (content "Can you make games on your own?")(answer "YES"))
  =>
  (assert (solution (content "Indie Developer")))
)

(defrule solution_creative_director
  (fact (content "Do you have a grand vision?")(answer "YES"))
  =>
  (assert (solution (content "Creative Director")))
)

(defrule solution_producer
  (fact (content "Do you have any money?")(answer "NO"))
  =>
  (assert (solution (content "Producer")))
)

(defrule solution_blogger
  (fact (content "Do you know basic grammar?")(answer "YES"))
  =>
  (assert (solution (content "Blogger")))
)

(defrule solution_social_games_studio_head
  (fact (content "Do you have a conscience?")(answer "NO"))
  =>
  (assert (solution (content "Social Games Studio Head")))
)

(defrule solution_gamer
  (or
  (fact (content "Are you at least good at playing games?")(answer "NO"))
  (fact (content "Are you from Asia?")(answer "NO"))
  )
  =>
  (assert (solution (content "Gamer")))
)

(defrule solution_starcraft_cyberathlete
  (fact (content "Are you from Asia?")(answer "Yes, Korea"))
  =>
  (assert (solution (content "Starcraft Cyberathlete")))
)

(defrule solution_gold_farmer
  (fact (content "Are you from Asia?")(answer "Yes, China"))
  =>
  (assert (solution (content "Gold Farmer")))
)

(defrule solution_studio_head
  (fact (content "Do you have a conscience?")(answer "YES"))
  =>
  (assert (solution (content "Studio Head")))
)

(defrule solution_consultant
  (fact (content "Are you afraid of responsibility?")(answer "YES"))
  =>
  (assert (solution (content "Consultant")))
)

(defrule solution_level_designer
  (fact (content "Do you like to work with unfinished tools?")(answer "YES"))
  =>
  (assert (solution (content "Level Designer")))
)

(defrule solution_art_director
  (fact (content "Do you prefer working over talking?")(answer "NO"))
  =>
  (assert (solution (content "Art Dir")))
)

(defrule solution_writer
  (fact (content "Do you speak Spreadsheet?")(answer "NO"))
  =>
  (assert (solution (content "Writer")))
)

(defrule solution_comic_artist
  (fact (content "Are you French?")(answer "YES"))
  =>
  (assert (solution (content "Comic Artist")))
)

(defrule solution_lead_game_designer
  (fact (content "Do you want to be told what to do?")(answer "NO"))
  =>
  (assert (solution (content "Lead Game Designer")))
)

(defrule solution_concept_artist
  (fact (content "Asian?")(answer "YES"))
  =>
  (assert (solution (content "Concept Artist")))
)

(defrule solution_event_scripter
  (fact (content "Do you obsess excessively over even the tiniest details?")(answer "NO"))
  =>
  (assert (solution (content "Event Scripter")))
)

(defrule solution_2d_artist
  (fact (content "Do you enjoy crafting crates?")(answer "NO"))
  =>
  (assert (solution (content "2d artist")))
)

(defrule solution_envinronmental_art
  (fact (content "Do you enjoy crafting crates?")(answer "YES"))
  =>
  (assert (solution (content "Environmental Artist")))
)

(defrule solution_game_designer
  (fact (content "Do you have a fixiation on gore and blood?")(answer "NO"))
  =>
  (assert (solution (content "Game Designer")))
)

(defrule solution_combat_designer
  (fact (content "Do you have a fixiation on gore and blood?")(answer "YES"))
  =>
  (assert (solution (content "Combat Designer")))
)

(defrule solution_animator
  (fact (content "Want to spend two weeks on two seconds?")(answer "YES"))
  =>
  (assert (solution (content "Animator")))
)

(defrule solution_3d_artist
  (fact (content "Want to spend two weeks on two seconds?")(answer "NO"))
  =>
  (assert (solution (content "3d Artist")))
)

(defrule solution_office_it
  (fact (content "Are you musical?")(answer "NO"))
  =>
  (assert (solution (content "Office It")))
)

(defrule solution_sound_designer
  (fact (content "Do you like to shoot or blow things up?")(answer "YES"))
  =>
  (assert (solution (content "Sound Designer")))
)

(defrule solution_composer
  (fact (content "Do you like to shoot or blow things up?")(answer "NO"))
  =>
  (assert (solution (content "Composer")))
)

(defrule solution_quality_assurance
  (fact (content "Did you mind the errors in this graph?")(answer "YES"))
  =>
  (assert (solution (content "Quality Assurance")))
)

(defrule solution_voice_actor
  (fact (content "You a TV or movie celebrity?")(answer "YES"))
  =>
  (assert (solution (content "Voice Actor")))
)

(defrule solution_guild_leader
  (fact (content "Do you want to chose who to hang out with?")(answer "YES"))
  =>
  (assert (solution (content "Guild Leader")))
)

(defrule solution_community_manager
  (fact (content "Do you want to chose who to hang out with?")(answer "NO"))
  =>
  (assert (solution (content "Community Manager")))
)

(defrule solution_motion_capture_actor
  (fact (content "Are you young, caucascian and hot?")(answer "NO"))
  =>
  (assert (solution (content "Motion Capture Actor")))
)

(defrule solution_military_shooter_packaging_model
  (fact (content "Are you male?")(answer "YES"))
  =>
  (assert (solution (content "Military Shooter Packaging Model")))
)

(defrule solution_cosplayer
  (fact (content "Do you like arts and crafts?")(answer "YES"))
  =>
  (assert (solution (content "Cosplayer")))
)

(defrule solution_booth_babe
  (fact (content "Do you like arts and crafts?")(answer "NO"))
  =>
  (assert (solution (content "Booth Babe")))
)