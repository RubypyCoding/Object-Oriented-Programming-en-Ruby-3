require 'door'

describe Door do
  #Bird tests here
  let(:door_1) { Door.new("green", 5)}

  describe "#initialize" do
    context "Door is created" do
    	subject { Door.new("blue", 10) }

    	it(:color) { should_not be_nil}
    	it(:size)  { should_not be_nil}
    	it(:status){ should_not be_nil}

    	it "creates a new Door" do
    	  expect(door_1). to be_an_instance_of Door
    	end
    end
  end

  describe "#color" do
  	context "#color is evaluated out of class" do
  	  it "#color as getter" do
  	  	expect{door_1.color}.to raise_error(NoMethodError)
  	  end
  	  it "#color as setter" do
  	  	expect{ door_1.color = "Black" }.not_to raise_error
  	  end
  	end
  end

  describe "#size" do
    context "#size is evaluated out of class" do
      it "#size as getter" do
      	expect(door_1.size).to eq(5)
      end
      it  "#size as setter" do
      	expect{door_1.size = 10}.to raise_error(NoMethodError)
      end
    end
  end

  describe "#status" do
  	context "#status is evaluated out of class" do
  	  it "#status as getter with default parameter" do
  	  	expect(door_1.status).to eq("Cerrado")
  	  end
  	  it "#status as setter" do
  	  	expect{door_1.status = "Abierto"}.not_to raise_error
  	  end
  	end
  end

  describe "#open" do
  	context "Checks if open returns a correct message" do
  	  it "if status is 'Cerrado' then open returns 'Business is closed'" do
  	  	door_1.status = "Cerrado"
  	  	expect(door_1.open).to eq("Business is closed")
  	  end
  	  it "if status is 'Abierto' then open returns 'open red door'" do
  	  	door_1.color = "red"
  	  	door_1.status = "Abierto"
  	  	expect(door_1.open).to eq("open red door")
  	  end
  	end
  end

  describe "#close" do
  	context "Checks if close returns a correct message" do
  	  it "if status is 'Cerrado' then close returns 'Door is closed'" do
  	    door_1.status = "Cerrado"
  	    expect(door_1.close).to eq("Door is closed")
  	  end
  	  it "if status is 'Abierto' then close returns 'close door of 5 meters'" do
  	  	door_1.status = "Abierto"
  	  	expect(door_1.close).to eq("close door of 5 meters")
  	  end
  	end
  end
end