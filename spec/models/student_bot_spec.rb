require 'rails_helper'

RSpec.describe Student, type: :model do
  it "is valid with name and register" do
    student = build(:student)
    expect(student).to be_valid
  end

  it "is invalid without a name" do
    student = build(:student, name: '')
    student.valid?
    expect(student.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a duplicate register" do
    student = create(:student)
    
    student2 = build(:student_2)
    student2.valid?
    expect(student2.errors[:register]).to include("has already been taken")
  end

  it "is invalid without a register"
  #it {is_expected.to validate_presence_of :register}

  it "is invalid with a invalid email" do
    student = build(:student, email: 'teste')
    student.valid?
    expect(student.errors[:email]).to include("is invalid")
  end

end
