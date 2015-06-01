$(window).load(function () {
    $('img.bgfade').hide();
    var dg_H = $(window).height();
    var dg_W = $(window).width();
    $('#wrap').css({ 'height': dg_H, 'width': dg_W });
    function anim() {
        $("#wrap img.bgfade").first().appendTo('#wrap');
        $("#wrap img").first().fadeIn(2000);
    }
    anim();
})
$(window).resize(function () { window.location.href = window.location.href })