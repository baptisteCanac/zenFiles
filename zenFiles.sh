clear

if [ $# -eq 0 ]; then
    echo "mode sans parametres"
elif [ $# -eq 2 ]; then
    echo "mode deux parametre"
    for i in $(ls $1); do
        mkdir $2/${i##*.}
        echo $2/${i##*.}
    done

    for i in $(ls $1); do
        cp $1/$i $2/${i##*.}
    done
elif [ $1 == "--help" ]; then
    echo "
- zenFiles.sh source_directory_path target directory_path

- zenFiles.sh

- go on https://github.com/baptisteCanac/zenFiles to get better informations
    "
else
    echo "Nombre de parametres incorrect"
    exit
fi