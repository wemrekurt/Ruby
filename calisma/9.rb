def users
  users = File.readlines 'users.txt'
  auth = {}
  users.each do |v|
    con = v.split ','
    auth[con[0]] = con[1].chomp
  end
  auth
end

def check user,pass 
  if pass == users[user]
    true
  else
    false
  end
end

print 'username: '
us = gets.chomp

print 'pass: '
ps = gets.chomp

puts check us,ps
