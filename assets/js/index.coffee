$ ->
    audio = document.createElement('audio')

    load = ->
        audio.setAttribute 'src', $('#audioUrl').val()
        audio.load()
        audio.volume = 0.25

    play = ->
        if audio.paused
            audio.play()
            $('#play').text 'Pause'
            $('#header').css 'background-color', 'green'
        else
            audio.pause()
            $('#play').text 'Play'
            $('#header').css 'background-color', 'yellow'

    $('#load').click load
    $('#play').click play
    

