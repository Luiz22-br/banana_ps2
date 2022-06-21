Music.volume(128) -- music volume: 0 to 128
Music.playFile("music.xm", true) -- ¡necesary for play wav sounds!

background = Image.load("background.jpg")  -- load background
screen:blit(0,0, background)               -- put background

banana = Image.load("banana.png")  -- load banana

x  = 176 -- banana x
y  = 72  -- banana y
v  = 2 -- speed

Blue = Color.new(0, 0, 128)
White = Color.new(0, 0, 0)

screen:clear(Blue)


while true do

  screen:blit(0,0, background) -- put background

  pad = Controls.read()  -- joystick reading
  x = screen:width()/2 - banana:width()/2;y = screen:height()/2 - banana:height()/2


  screen:blit(x,y, banana, true)
  screen.flip()
  screen.waitVblankStart()

end

