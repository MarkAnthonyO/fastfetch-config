function fish_prompt
    set color_primary "404040"
    set color_secondary "787878"
    
    set_color white -b $color_primary
    echo -n "" \uf007 "" $USER "" \uf109 "" $hostname ""
    set_color $color_primary -b $color_secondary
    echo -n \ue0b0 ""
    
    set_color white -b $color_secondary  
    echo -n \uf1c0 ""
    set user_path $(string replace "/home/$USER" "~" $(pwd))
    echo -n "" $user_path ""
    
    set_color $color_secondary -b normal
    echo -n \ue0b0 ""
    set_color normal -b normal
end
