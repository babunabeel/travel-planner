def GoogleRoute
  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def find
    HTTParty.get("https://maps.googleapis.com/maps/api/directions/json?origin=#{@origin}&destination=#{@destination }&key=AIzaSyAp3Z0ksMQ7SAaTBtBnEp0Qq1Htvk3LRAg")
  end
end