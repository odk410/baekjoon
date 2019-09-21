N = gets.chomp().to_i;

info = [] # 입력받을 정보
result = Array.new(N, 1) # 출력할 결과

N.times do
	arr = gets.chomp()
	info << arr.split(" ")
end

info.each_with_index do |i, index|
	break if N-1 == index
	(index+1).upto(N-1) do |x|
		# 비교 후 덩치가 작은 쪽 등수를 +1
		# 비교할 수 없는 덩치라면 등수 변화 없음
		result[x] += 1 if i[0] > info[x][0] && i[1] > info[x][1] 
		result[index] += 1 if i[0] < info[x][0] && i[1] < info[x][1] 
	end
end

result.map {|r| print (r.to_s + ' ')}
