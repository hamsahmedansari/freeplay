$(document).ready(function () {
    $(".song_name").click(function () {
        var audio = document.getElementById('player_now_music_audio');
        $(".current_playing_song").html($(this).html());
        $("#player_now_music_audio source").attr('src', $(this).siblings().find(".song-320").attr('href'));
        audio.load();
        audio.play();
    });
});
