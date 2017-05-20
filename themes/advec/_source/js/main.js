/** $(window).scroll(function() {
    var wScroll = $(this).scrollTop();

    if(wScroll > $('.prsilas').offset().top - $(window).height()){
        var offset = (Math.min(0, wScroll - $('.prsilas').offset().top +$(window).height() - 550)).toFixed();
        $('.prsilas__block__container__col').css({'transform': 'translate('+ offset +'px, '+ Math.abs(offset * 0.2) +'px)'});
        console.log(offset);
    }
}); **/