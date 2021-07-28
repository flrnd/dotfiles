function cat
    switch (uname)
        case Linux
            batcat $argv
        case Darwin
            bat $argv
    end
end
