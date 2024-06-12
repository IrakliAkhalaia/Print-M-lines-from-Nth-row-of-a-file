     #!/bin/zsh

     if [ $# -ne 3 ]
     then
          echo "The number of arguments passed is less or more than allowed."
          exit
     fi

     start_row="$1"
     num_of_del_rows="$2"
     file="$3"

     if [ ! -f "$file" ]
     then
          echo ""$file" file doesn't exist."
          exit
     fi

     tail -n +"$start_row" "$file" | head -n "$num_of_del_rows"
