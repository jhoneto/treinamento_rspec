require 'rails_helper'

RSpec.describe Student, type: :model do
  it "is valid with name and register" do
    student = Student.new({
      register: '1234',
      name: 'Hamilton Oliveira'
    })
    expect(student).to be_valid
  end

  it "is invalid without a name" do
    student = Student.new(name: nil)
    student.valid?
    expect(student.errors[:name]).to include("can't be blank")
  end
  it {is_expected.to validate_presence_of :register}

  it "is invalid without a duplicate register" do
    student = Student.create({
      register: '1234',
      name: 'Hamilton Oliveira'
    })
    
    student2 = Student.new({
      register: '1234',
      name: 'Hamilton Oliveira 2'
    })
    student2.valid?
    expect(student2.errors[:register]).to include("has already been taken")
  end

  it "is invalid without a register"
  #

  it "is invalid with a invalid email" do
    student = Student.new({
      register: '1234',
      name: 'Hamilton Oliveira 2',
      email: 'teste'
    })
    student.valid?
    expect(student.errors[:email]).to include("is invalid")
  end

end
