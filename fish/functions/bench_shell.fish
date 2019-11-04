function bench_shell
  set -l time ''
  switch (uname)
    case Linux
      set time '/usr/bin/time'
    case Darwin
      set time 'gtime'
  end

  for i in (seq $argv[2])
    $time -f "\t%E real, %U user, %S sys, %P CPU" $argv[1] -i -c exit
  end
end

