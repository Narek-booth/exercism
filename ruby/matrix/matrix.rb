class Matrix
attr_accessor :rows, :columns, :imax, :jmax

    def initialize(string)
        string = string.split("\n")
        @imax = string.length - 1
        @jmax = string[0].split.length - 1
        @rows = Array.new
        @columns = Array.new
        i, j = 0, 0
        while i <= @imax
            @rows[i] = string[i].split.map(&:to_i)

            # while j < @jmax
            #       @columns[j] = @rows[i][j]
            #   j = j+1
            # end
            # j = 0
            i = i+1
        end
        @columns = @rows.transpose
    end
