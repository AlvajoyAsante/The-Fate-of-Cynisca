var video_data = video_draw(); // get the video frames
var video_status = video_data[0]; // get the status of the video

if (video_status == 0) { // if the video is running correctly, then draw the frames
	var video_surface = video_data[1];
	draw_surface(video_surface, 0, 0);
}

var video_length = video_get_duration()/1000; // get the length of the video
var video_position = video_get_position()/1000; // get the position of the current video
// draw_text( 102, 33, string(video_position) + " / " + string(video_length)); // optional to have; this shows the progress of the video and can help fine tune the code below

if (video_position > video_length - 5.0) { // if the video is very close to ending, close the video and do something; you can change the -5.0 to a better offset number to your liking, like -2.0 or anything else
	video_close()
	room_goto(rm_level_1)
}