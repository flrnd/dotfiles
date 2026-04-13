function run_catgirl
    while true
        proxychains4 catgirl $argv
        set status $status
        if test $status -ne 69
            return $status
        end
    end
end
