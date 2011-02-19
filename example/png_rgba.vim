let canvas = paint#canvas#new(128, 128)

for x in range(canvas.width)
  for y in range(canvas.height)
    call canvas.set_pixel(x, y, [x, y, 0, 255 - y / 3])
  endfor
endfor

let fixed = paint#bdf#loadfile(globpath(&rtp, 'font/mplus/mplus_f12r.bdf'))
call canvas.draw_text("PNG GENERATED BY VIM", [0, 10], fixed, [255, 255, 255])

call canvas.save('example_png_rgba.png', "RGBA")
