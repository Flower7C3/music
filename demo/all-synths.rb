use_bpm 120

define :test do |s|
  use_synth s
  play :a3, release: 3
  sleep 4
end

test :beep
test :blade
test :bnoise
test :chipbass
test :chiplead
test :chipnoise
test :cnoise
test :dark_ambience
test :dpulse
test :dsaw
test :dtri
test :dull_bell
test :fm
test :gnoise
test :growl
test :hollow
test :hoover
test :mod_beep
test :mod_dsaw
test :mod_fm
test :mod_pulse
test :mod_saw
test :mod_sine
test :mod_tri
test :noise
test :piano
test :pluck
test :pnoise
test :pretty_bell
test :prophet
test :pulse
test :saw
test :sine
test :sound_in
test :sound_in_stereo
test :square
test :subpulse
test :supersaw
test :tb303
test :tech_saws
test :tri
test :zawa
