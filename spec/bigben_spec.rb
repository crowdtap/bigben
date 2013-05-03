require 'spec_helper'

describe BigBen do
  subject do
    BigBen.new('test', 1) do
      @counter += 1
    end
  end

  before { @counter = 0 }

  it "runs a callback every n seconds" do
    @counter.should == 0

    subject.start

    eventually { @counter.should == 2 }

    subject.reset
    sleep 2

    @counter.should == 2
  end

  context 'with an exception notifier' do
    subject do
      BigBen.new('test', 1) do
        raise Exception.new
      end
    end

    before { BigBen.notifier = lambda { |ex| @ex = ex } }
    after  { BigBen.notifier = nil }
    after  { subject.reset }

    it "calls the exception notifier when an exception is thrown" do
      subject.start

      eventually { @ex.should_not be_nil }
    end
  end
end
