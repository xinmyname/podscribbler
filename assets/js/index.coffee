$ ->
    audio = document.createElement('audio')

    load = ->
        audio.setAttribute 'src', $('#audioUrl').val()
        audio.load()
        audio.volume = 0.25
        $('#header').css 'background-color', 'green'

    play = ->
        if audio.paused
            audio.play()
            $('#play').text 'Pause'
            $('#header').css 'background-color', 'red'
        else
            audio.pause()
            $('#play').text 'Play'
            $('#header').css 'background-color', 'green'

    nextTrack = ->
        $prevTrack = $('input:focus')

        if not $prevTrack
            $prevTrack = $('input[0]')

        console.log($prevTrack)

    prevTrack = ->
        play()

    $('#load').click load
    $('#play').click play
    
    shortcut.add "Ctrl+G", play
    shortcut.add "Enter", nextTrack
    shortcut.add "Ctrl+Enter", prevTrack

    

