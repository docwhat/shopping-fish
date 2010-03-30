
Factory.sequence :title do |n|
  "#{n}% Milk"
end

Factory.define :item do |f|
  f.title { Factory.next(:title) }
end
