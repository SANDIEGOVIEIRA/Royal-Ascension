// Step event
var gui_height = display_get_gui_height();
if (!animation_done) {
    rect_height_top += animation_speed;
    rect_height_bottom += animation_speed;
    
    if (rect_height_top + rect_height_bottom >= gui_height) {
        rect_height_top = gui_height / 2;
        rect_height_bottom = gui_height / 2;
        animation_done = true;
    }
}