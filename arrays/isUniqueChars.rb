def isUniqueChar?(str)
    return false if str.length > 128
    arr = Array.new(128, false)

    str.each_byte do |byte|
        if arr[byte]
            return false 
        end 
        arr[byte]=true
    end
    return true
end

p isUniqueChar?('casi')
