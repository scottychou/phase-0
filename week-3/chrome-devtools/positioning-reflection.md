![3.1](imgs/3.1.jpg)
![3.2](imgs/3.2.jpg)
![3.3](imgs/3.3.jpg)
![3.4](imgs/3.4.jpg)
![3.5](imgs/3.5.jpg)
![3.6](imgs/3.6.jpg)
![3.7](imgs/3.7.jpg)
![3.8](imgs/3.8.jpg)
![3.9](imgs/3.9.jpg)    


    How can you use Chrome's DevTools inspector to help you format or position elements?
    When you open Chrome DevTools, there should be a window on the right side where you can modify the elements.  You can style anywhere in the code such as the head, body, paragraphs etc.  You type in a property and a value, and it'll set itself.  For the purpose of this challenge, we used a lot of margins and positions.


    How can you resize elements on the DOM using CSS?
    Height - how much vertical space you want to take up
    Width - how much horizontal space you want to take up
    Margin-top/left/right/bottom - helps with positioning and spacing depending on your position property
    Position - you can set it to fixed, static, relative, absolute etc.


    What are the differences between Absolute, Fixed, Static, and Relative positioning? Which did you find easiest to use? Which was most difficult?

static
    This keyword lets the element use the normal behavior, that is it is laid out in its current position in the flow.  The top, right, bottom, left and z-index properties do not apply.
relative
    This keyword lays out all elements as though the element were not positioned, and then adjust the element's position, without changing layout (and thus leaving a gap for the element where it would have been had it not been positioned). The effect of position:relative on table-*-group, table-row, table-column, table-cell, and table-caption elements is undefined.
absolute
    Do not leave space for the element. Instead, position it at a specified position relative to its closest positioned ancestor or to the containing block. Absolutely positioned boxes can have margins, they do not collapse with any other margins.
fixed
    Do not leave space for the element. Instead, position it at a specified position relative to the screen's viewport and don't move it when scrolled. When printing, position it at that fixed position on every page. This value always create a new stacking context. 

    -It was easiest to use fixed positioning, because it means that it is always in the same spot and doesn't move.  Relative positioning is the most difficult because it has the most variables involved.

    What are the differences between Margin, Border, and Padding?
    -The space outside of, or between, elements is what comprises the margin areas. This area would also be outside of any borders set on elements. margin = space around (outside) the element from border outwards. padding = space around (inside) the element from text to border

    What was your impression of this challenge overall? (love, hate, and why?)
    I am indifferent to this challenge.  I use Firefox so doing this challenge meant that I had to download Chrome.  I don't ever use chrome, so I felt like it was a browser I was less familiar with, and more unlikely to ever use.