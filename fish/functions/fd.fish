function fd
    switch (uname)
        case Linux
            fdfind $argv
        case Darwin
            fd $argv
    end
end
