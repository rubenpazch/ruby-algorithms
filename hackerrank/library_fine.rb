# book returned <= expected date  fine = 0
# book returned >  expected date  fine = 15* days late      ==>  same Month and year
# book returned >  expected date  fine = 500* months late   ==>  same year different month
# book returned >  expected date  fine = 10000* years late
#
# returned 9 6 2015
# expected 6 6 2015
#
#
# returned  5 5 2014
# expected  23 2 2014
#
# marzo abril 23 - 5
#
#
# returned  25 5 2014
# expected  23 2 2014
#
# marzo abril may

# !/bin/ruby

# require 'json'
# require 'stringio'

# Complete the libraryFine function below.
# def libraryFine(d1, m1, y1, d2, m2, y2)
#
#   if d1 <= d2 && m1 <= m2 && y1 <= y2
#     return 0
#   elsif m1 == m2 && y1 == y2
#     return daysToPay(d1, d2)
#   elsif y1 == y2
#     return monthsToPay(m1, m2, d1, d2)
#   elsif y1 > y2
#     return (10000* (y1 - y2)) +  monthsToPay(m1, m2, d1, d2) +   daysToPay(d1, d2)
#   else
#     return 0
#   end
# end
#
# def daysToPay(d1, d2)
#   if (d1 - d2) > 0
#     return (d1 - d2) * 15
#   else
#     return 0
#   end
# end
#
# def monthsToPay(m1, m2, d1, d2)
#   if m1 > m2 && d1 > d2
#     return (500 * (m1 - m2 - 1)) + daysToPay(d1, d2)
#   elsif m1 > m2 && d1 <= d2
#     return (500 * (m1 - m2 - 1))
#   else
#     return 0
#   end
# end
#
# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
#
# d1M1Y1 = gets.rstrip.split
#
# d1 = d1M1Y1[0].to_i
#
# m1 = d1M1Y1[1].to_i
#
# y1 = d1M1Y1[2].to_i
#
# d2M2Y2 = gets.rstrip.split
#
# d2 = d2M2Y2[0].to_i
#
# m2 = d2M2Y2[1].to_i
#
# y2 = d2M2Y2[2].to_i
#
# result = libraryFine d1, m1, y1, d2, m2, y2
#
# fptr.write result
# fptr.write "\n"
#
# fptr.close()

def libraryFine(d1, m1, y1, d2, m2, y2)
  if d1 <= d2 && m1 <= m2 && y1 <= y2
    0
  elsif m1 == m2 && y1 == y2
    daysToPay(d1, d2)
  elsif y1 == y2
    monthsToPay(m1, m2, d1, d2)
  elsif y1 > y2
    yearToPay(d1, m1, y1, d2, m2, y2)
  else
    0
  end
end

def daysToPay(d1, d2)
  if (d1 - d2) > 0
    ((d1 - d2) * 15).abs
  else
    0
  end
end

def monthsToPay(m1, m2, d1, d2)
  if d1 == d2

    (500 * (m1 - m2))
  elsif d1 > d2

    (500 * (m1 - m2)) + ((d2 - d1) * 15)
  else
    (500 * (m1 - m2 - 1)) + (((31 - d2) + d1) * 15)
  end
end

def yearToPay(d1, m1, y1, d2, m2, y2)
  if m1 == m2 && d1 == d2
    (10_000 * (y1 - y2))
  elsif m1 > m2
    if d1 == d2
      (10_000 * (y1 - y2)) + ((m1 - m2) * 500)
    elsif d1 > d2
      (10_000 * (y1 - y2)) + ((m1 - m2) * 500) + ((d2 - d1) * 15)
    else
      (10_000 * (y1 - y2)) + ((m1 - m2) * 500) + (((31 - d2) + d1) * 15)
    end
  elsif m1 < m2
    if d1 == d2
      (10_000 * (y1 - y2 - 1)) + (((12 - m2) + m1) * 500)
    elsif d1 > d2
      (10_000 * (y1 - y2 - 1)) + (((12 - m2) + m1) * 500) + ((d2 - d1) * 15)
    else
      (10_000 * (y1 - y2 - 1)) + (((12 - m2) + m1) * 500) + (((31 - d2) + d1) * 15)
    end
  else
    (10_000 * (y1 - y2))
  end
end

p '45500 == ' + libraryFine(1, 7, 2019, 1, 8, 2014).to_s
p '50000 == ' + libraryFine(1, 8, 2019, 1, 8, 2014).to_s
p '40500 == ' + libraryFine(1, 9, 2019, 1, 8, 2014).to_s

p '5500 == ' + libraryFine(1, 7, 2019, 1, 8, 2018).to_s
p '10000 == ' + libraryFine(1, 8, 2019, 1, 8, 2018).to_s
p '10500 == ' + libraryFine(1, 9, 2019, 1, 8, 2018).to_s

# !/bin/ruby

require 'json'
require 'stringio'

# Complete the libraryFine function below.

def libraryFine(d1, m1, y1, d2, m2, y2)
  if d1 <= d2 && m1 <= m2 && y1 <= y2
    0
  elsif m1 == m2 && y1 == y2
    daysToPay(d1, d2)
  elsif y1 == y2
    monthsToPay(m1, m2, d1, d2)
  elsif y1 > y2
    yearToPay(d1, m1, y1, d2, m2, y2)
  else
    0
  end
end

def daysToPay(d1, d2)
  if (d1 - d2) > 0
    ((d1 - d2) * 15).abs
  else
    0
  end
end

def monthsToPay(m1, m2, d1, d2)
  if d1 == d2

    (500 * (m1 - m2))
  elsif d1 > d2

    (500 * (m1 - m2)) + ((d2 - d1) * 15)
  else
    (500 * (m1 - m2 - 1)) + (((31 - d2) + d1) * 15)
  end
end

def yearToPay(d1, m1, y1, d2, m2, y2)
  if m1 == m2 && d1 == d2
    (10_000 * (y1 - y2))
  elsif m1 > m2
    if d1 == d2
      (10_000 * (y1 - y2)) + ((m1 - m2) * 500)
    elsif d1 > d2
      (10_000 * (y1 - y2)) + ((m1 - m2) * 500) + ((d2 - d1) * 15)
    else
      (10_000 * (y1 - y2)) + ((m1 - m2) * 500) + (((31 - d2) + d1) * 15)
    end
  elsif m1 < m2
    if d1 == d2
      (10_000 * (y1 - y2 - 1)) + (((12 - m2) + m1) * 500)
    elsif d1 > d2
      (10_000 * (y1 - y2 - 1)) + (((12 - m2) + m1) * 500) + ((d2 - d1) * 15)
    else
      (10_000 * (y1 - y2 - 1)) + (((12 - m2) + m1) * 500) + (((31 - d2) + d1) * 15)
    end
  else
    (10_000 * (y1 - y2))
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

d1M1Y1 = gets.rstrip.split

d1 = d1M1Y1[0].to_i

m1 = d1M1Y1[1].to_i

y1 = d1M1Y1[2].to_i

d2M2Y2 = gets.rstrip.split

d2 = d2M2Y2[0].to_i

m2 = d2M2Y2[1].to_i

y2 = d2M2Y2[2].to_i

result = libraryFine d1, m1, y1, d2, m2, y2

fptr.write result
fptr.write "\n"

fptr.close
