# Coded by Bartłomiej Jakub Kwiatek on 2020-12-10 #
# Loop coded with Sonic Pi (https://sonic-pi.net/)
# Availiable on SoundCloud: https://soundcloud.com/flower7c3/garzul-intensity

# CONFIG ############
speed = 120.0
use_bpm speed

arp_volume = 0.2
arp_note_size_factor = 0.6
garzul_volume = 0.2
prophet_note_size_factor = 4
prophet_volume = 0.2

##| arp_volume = 0
##| garzul_volume = 0
##| prophet_volume = 0


# PLAYERS ############
define :play_arp do |tone_name, note_size = 0.5|
  arp_release_time = note_size*arp_note_size_factor
  play (scale tone_name, :minor_pentatonic).tick, release: arp_release_time, amp: arp_volume
  sleep_note note_size
end

define :play_prophet do |tone_name, note_size|
  sound_release_time = note_size*prophet_note_size_factor
  play tone_name, reease: sound_release_time, cutoff: rrand(70, 130), amp: prophet_volume
  sleep_note note_size
end

define :sleep_note do |note_size|
  sleep note_size
end


# LOOPS ############
live_loop :garzul do
  sample :loop_garzul, amp: garzul_volume, beat_stretch: 16
  sleep_note 16
end

live_loop :arp do
  6.times do
    play_arp :e3
  end
end

live_loop :prophet do
  use_synth :prophet
  
  play_prophet :e2, 2
  play_prophet :e1, 2
  play_prophet :e2, 4
  
  play_prophet :c2, 2
  play_prophet :c1, 2
  play_prophet :c2, 4
  
  play_prophet :a1, 2
  play_prophet :a0, 2
  
  play_prophet :b1, 2
  play_prophet :b0, 2
  
  play_prophet :e2, 2
  play_prophet :e1, 2
  play_prophet :e2, 4
end
