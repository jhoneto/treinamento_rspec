require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  describe "#index" do
    it "responds successfully" do
      get :index
      expect(response).to be_success
    end

    it "returns a 200 response" do
      get :index
      expect(response).to have_http_status "200"
    end    
  end

  describe "#new" do
    it "add student with success" do
      student_params = attributes_for(:student)
      expect {
        post :create, params: {student: student_params }
      }.to change(Student, :count).by(1)
    end

    it "add student with unsuccess" do
      student_params = attributes_for(:student, name: nil)
      expect {
        post :create, params: {student: student_params }
      }.to_not change(Student, :count)
    end    
  end
end
