require 'spec_helper'

describe Assignment do

  it { should belong_to :project }
  it { should belong_to :user }
  it { should respond_to :user }
  it { should respond_to :project }
  
end