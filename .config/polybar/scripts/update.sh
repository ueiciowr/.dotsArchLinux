
#!/bin/sh

updates_arch=$(checkupdates |perl -lne 'END { print $. }')

if ! updates_aur=$(trizen -Su --aur 2> /dev/null |perl -lne 'END { print $. }'); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" != "0" ]; then
    echo "%{F#b30059} %{F-} $updates"
else
    echo "%{F#b30059} %{F-}Updated"
fi