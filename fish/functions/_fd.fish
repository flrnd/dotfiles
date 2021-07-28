function fd
    switch (uname)
        case Linux
            set cmd fdfind
        case Darwin
            set cmd fd
    end

    $cmd $argv
end
