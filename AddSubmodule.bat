rem %1 = URL repo remota (es: https://github.com/SergiusTheBest/plog.git)
rem %2 nome cartella locale del submodule (es: plog)
git submodule add %1 || (git submodule deinit -f %2 && rmdir /s /q .git\modules\%2)
git submodule update --init --recursive
