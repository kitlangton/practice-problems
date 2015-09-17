def rec_intersection(rect1, rect2)
  area1 = []
  (rect1[0][0]..rect1[1][0]).each do |x|
    (rect1[0][1]..rect1[1][1]).each do |y|
      area1 << [x,y]
    end
  end
  area2 = []
  (rect2[0][0]..rect2[1][0]).each do |x|
    (rect2[0][1]..rect2[1][1]).each do |y|
      area2 << [x,y]
    end
  end
  overlap = area1 & area2
  return nil if overlap.all?(&:nil?)
  [overlap[0], overlap[-1]]
end
