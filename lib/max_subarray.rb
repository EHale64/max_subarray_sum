class MaxSubarray
    def find_max(array)
        max_sum = array[0]
        current_sum = max_sum
        i = 1

        return 0 if max_sum.nil?

        until i == array.size
            current_sum = [current_sum + array[i], array[i]].max
            max_sum = [current_sum, max_sum].max
            i += 1
        end

        if max_sum.negative?
            return 0
        else
            max_sum
        end
    end
end