require('rspec')
require('title_case')

describe('#title') do

  it("capitalizes the first letter of a single word") do
    expect('dog'.cap).to(eq('Dog'))
  end

  it("capitalizes the first letter of multiple words") do
    expect('dogs run fast'.cap).to(eq('Dogs Run Fast'))
  end

  it("does not capitalize certain bank words") do
    expect('dog is in the park'.cap()).to(eq('Dog is in the Park'))
  end

  it("capitalizes certain bank words if they are the first word in a string") do
    expect('the dog is in the park'.cap()).to(eq('The Dog is in the Park'))
  end

end
