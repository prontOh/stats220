library(magick)

canvas <- image_blank(300, 30, color = "blue") %>% 
  image_annotate( text = "My crypto wallet rn", color = "#FFFFFF", size = 20, gravity = "center")

stonk <- image_read("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHxqIncrc3eqZutXggAjwvAvdins_IrB1_og&usqp=CAU")

stonk <- image_scale(stonk, "300x300!")

# This is a comment to show i can comment

stonk_man <- image_read("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmO3rkSHlyDOmVpVBZl6a0sEsJkDXZ3p0iHw&usqp=CAU")
overlay <- image_scale(stonk_man, "230x170")

meme <- image_composite(stonk, overlay, offset = "+170+120")

meme <- c(canvas, meme)
meme <- image_append(meme, stack = TRUE)

meme

image_write(meme, "my_meme.png")

#animation
img1 <- image_read("img1.jpeg")
img2 <- image_read("img2.jpeg")
img3 <- image_read("img3.png")
img4 <- image_read("img4.jpeg")

frames <- c(img2, img3, img1, img4)

gif <- frames %>% image_animate(fps=1)
gif
image_write(gif, "my_animation.gif")


