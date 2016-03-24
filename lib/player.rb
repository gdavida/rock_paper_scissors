

class Player

attr_accessor :name, :moves

def initialize(options={})
	@name			=	options[:name]
	@moves		=	options[:moves]
	@wins			= options[:wins]
	@ties			= options[:ties]
	@loses		= options[:loses]
end

