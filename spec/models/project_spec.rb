require 'spec_helper'

describe Project do
  it { should have_many :assignments }
  it { should have_many :users }
  it { should respond_to :client_name }
  it { should respond_to :email }
  it { should respond_to :initial_payment }
  it { should respond_to :final_payment }
  it { should respond_to :winning_designer }
  it { should respond_to :scope }
  it { should respond_to :moodboard_payment }
  it { should respond_to :dropbox }
  it { should respond_to :completed }
end