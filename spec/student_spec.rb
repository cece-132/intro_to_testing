require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'exists and has attributes' do
      student = Student.new('Penelope')

      expect(student).to be_a Student
      expect(student.name).to eq 'Penelope'
      expect(student.cookies).to be_empty
      expect(student.cookies).to eq []
    end
    # test it can add cookies
  end

  describe '#add_cookies' do
    it 'can add cookies to array' do
      student = Student.new('Penelope')

      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq ["Chocolate Chunk", "Snickerdoodle"]
    end
  end
end
