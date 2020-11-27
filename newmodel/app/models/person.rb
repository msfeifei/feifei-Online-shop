class Person < ApplicationRecord
  def full_name
    [first_name,last_name].join(' ')#我们在Person中有一个full_name方法
  end  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
end



#Add fields in people:
# rails g migration add_column_to_person gender:string mobile:integer address:string
# 更新值
# user5 = Person.find_by(id: '5')
# user5.update(gender: 'Female', mobile: '+12019988776', address: 'Henan')
# 添加验证代码在model里

#   validates :first_name,
#             :presence => true
#             length: { minimum: 5}

#   validates :last_name,
#             :presence => true
#             length: { minimum: 2}
# 添加controller和views
