live_loop :flibble do
  ##| stop
  sample :bd_haus, rate: 1
  sleep 0.5
end
live_loop :bitter do
  ##| stop
  4.times do
    sample :bd_haus, rate: 2
    sleep 0.25
  end
  sleep 1
end
live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 8
end
live_loop :music1 do
  ##| stop
  sample :ambi_lunar_land, rate: rrand(0.1, 5)
  sleep [0.25, 0.5, 0.5, 0.5, 1, 1].choose
end
live_loop :music2 do
  ##| stop
  use_synth :tb303
  sample :drum_bass_hard, rate: rrand(0.5, 2)
  play choose(chord(:a, :minor)), release: 0.05, cutoff: rrand(60, 130)
  sleep 0.25
end
live_loop :chord do
  ##| stop
  use_synth :prophet
  play chord(:a2, :minor).choose, release: 4, cutoff: rrand(70, 130)
  sleep 4
end