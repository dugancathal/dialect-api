RSpec.describe 'Playing a full game' do
  it 'results in a great time' do
    start_a_new_game ['Musa', 'Holly', 'Sam']

    decide_on_a_backdrop 'The Outpost'
    define_the_aspects [
      'We are running from the past',
      'Martian Sandstorms',
      'Space Freight Truckers',
    ]

    answer_community_questions [
      'A terrible "accident"... a comms module exploded and we cannot communicate w/ Earth',
      'We have no choice but to live far away from where we can grow food',
      'We live in large communes, but truckers basically live in their trucks',
    ]

    name_the_isolation 'The Dust Bail'

    ########### Game setup is complete

    deal_archetype_cards

    select_archetype 'Musa',
      archetype: 'Explorer',
      context: 'Trucker exploring the martian landscape'
    select_archetype 'Holly',
      archetype: 'Oracle',
      context: 'Understands how the sandstorms move'
    select_archetype 'Sam',
      archetype: 'Scrounger',
      context: 'Scrappy and good at managing contraband'
    
    introduce_character 'Musa',
      common_name: 'Salazar Acaba',
      secret_name: 'First Runner',
      role: 'Out and about - facing down the dangers of Mars',
      aspect_relationships: 'Ties to 1 & 2 pretty blah blah blah'
    introduce_character 'Holly',
      common_name: 'Annett Kennedy',
      secret_name: 'Nan',
      role: 'The eye in the sky',
      aspect_relationships:
    introduce_character 'Sam',
      common_name: 'Laika Timmons',
      secret_name: 'Stray',
      role:, 
      aspect_relationships:

    ########## Characters are defined

    deal_turn_cards

    make_a_connection 'Musa', 'Friend', 'Martian Sandstorms'
    build_a_word 'Musa', 'Essie'
    converse
    draw_age_card 'Musa', 2

    make_a_connection 'Holly', 'Money', 'Space Freight Truckers'
    build_a_word 'Holly', 'Surband'
    converse
    draw_age_card 'Holly', 2

    make_a_connection 'Sam', 'Greeting', 'Running from the past'
    build_a_word 'Sam', 'Pardon'
    converse
    draw_age_card 'Sam', 2
    
    ########## End of age 1

    read_age_transition 2
    choose_backdrop_pathway 2
    evolve_an_aspect 'We are running from the past' => 'We are fighting the past'

    make_a_connection 'Musa', 'TODO', 'TODO'
    build_a_word 'Musa', 'TODO'
    converse
    draw_age_card 'Musa', 3

    make_a_connection 'Holly', 'TODO', 'TODO'
    build_a_word 'Holly', 'TODO'
    converse
    draw_age_card 'Holly', 3

    make_a_connection 'Sam', 'TODO', 'TODO'
    build_a_word 'Sam', 'TODO'
    converse
    draw_age_card 'Sam', 3

    ########## End of age 2

    read_age_transition 3
    choose_backdrop_pathway 1
    evolve_an_aspect 'TODO' => 'TODO'

    make_a_connection 'Musa', 'TODO', 'TODO'
    build_a_word 'Musa', 'TODO'
    converse

    make_a_connection 'Holly', 'TODO', 'TODO'
    build_a_word 'Holly', 'TODO'
    converse

    make_a_connection 'Sam', 'TODO', 'TODO'
    build_a_word 'Sam', 'TODO'
    converse

    ########## End of age 3

    deal_legacy_cards

    give_epilogue 'Musa'
    give_epilogue 'Holly'
    give_epilogue 'Sam'
  end
end
