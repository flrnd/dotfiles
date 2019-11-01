function bench_shell
  for i in (seq $argv[2])
    /usr/bin/time -f "\t%E real, %U user, %S sys, %P CPU" $argv[1] -i -c exit
  end
end

