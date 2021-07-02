# def solution(a)
#     end_points = []
#     a.each_with_index do |ai, i|
#         end_points << [i - ai, i + ai]
#     end

#     end_points = end_points.sort_by { |points| points[0]}

#     p "circles end points #{end_points}"

#     intersecting_pairs = 0
#     end_points.each_with_index do |point, index|
#         lep, hep = point
#         pairs = bsearch(end_points, index, end_points.size - 1, hep)
#         return -1 if 10000000 - pairs + index < intersecting_pairs
#         intersecting_pairs += (pairs - index)
#     end
#     return intersecting_pairs
# end

# # This method returns the maximally appropriate position
# # where the higher end-point may have been inserted.
# def bsearch(a, l, u, x)
#     p "l is #{l} u is #{u} x is #{x}"
#     if l == u
#         if x >= a[u][0]
#             p u
#             return u
#         else
#             return l - 1 
#         end
#     end
#     mid = (l + u)/2
#     p "mid is #{mid}"
#     # Notice that we are searching in higher range
#     # even if we have found equality.
#     if a[mid][0] <= x
#         return bsearch(a, mid+1, u, x)
#     else
#         return bsearch(a, l, mid, x)
#     end
# end


def solution(a)
# First we get all of the points where the circles open and close. It doesn't matter which circle is actually opening or closing, just how many are open at this point in the number line
    left = []
    right = []
    a.each_with_index do |r, i|
    left << i - r
    right << i + r
    end
    # To be sure we're scanning the number line from left to right, we need to sort these arrays of positions.
    left.sort!
    right.sort!
    # Next, whenever we encounter a disc opening, we increment the number of intersections by the number of discs already open, then we increment the number of open discs by one. Whenever we encounter a disc closing we decrement the number of open discs by one.
    open_discs = 0
    intersections = 0
    until left.empty? do
#Codility wants us to return -1 if the number of intersections exceeds 10,000,000. So, we'll do that here.
      return -1 if intersections > 10_000_000
      p "left is #{left}"
      p "right is #{right}"
      if left.first <= right.first
        intersections += open_discs
        p "if intersections is #{intersections}"
        open_discs += 1
        p "if open_discs is #{open_discs}"
        left.shift
        p "left is #{left}"
      else
        open_discs -= 1
        p "else open_discs is #{open_discs}"
        right.shift
        p "right is #{right}"
      end
      p ""
  end
# And that's it, now just return the number of intersections!
  return intersections
end

p solution([1,5,2,1,4,0])