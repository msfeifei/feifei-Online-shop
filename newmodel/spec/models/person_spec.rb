require 'rails_helper'
#RSpec.describe Person, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
describe Person do 
  it 'is valid with a first_name,last_name' do
    person = Person.new(first_name: 'mengru',last_name: 'Han', gender:'Female')
      expect(person).to be_valid
  end
  #创建一个person对象，并调用rspec的be_valid 皮配器验证其合法性


  it 'return a person full_name as a string' do
    person = Person.new(first_name: 'mengru',last_name: 'Han')
      expect(person.full_name).to eql 'mengru Han'
  end
end


      





# 创建一个项目

# rails new xx

# 在Gemfile配置文件中添加
# group :test, :development do
#   gem 'rspec-rails'
# end

# 执行bundle install安装这个rspec gem
# 初始化rspec/目录
# rails generate rspec:install

# 使用rspec命令运行您的规格
# bundle exec rspec

# 创建一个模型
# rails generate model person first_name:string last_name:string


# 命令运行迁移了
# bin/rails db:migrate

# 且告诉我们创建了一个person表
# rails c
# Person.create([{:first_name => 'Haichao',:last_name => 'Li'},{:first_name => 'Heping',:last_name => 'Ling'},{:first_name => 'Xiao',:last_name => 'Ling’}]),{:first_name => 'Ziqiu',:last_name => 'He'},{:first_name => 'Jianjian',:last_name => 'Li'}])

