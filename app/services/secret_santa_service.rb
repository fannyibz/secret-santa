class SecretSantaService

  def initialize(args = {})
    @event = args[:event]
    @participants = @event.participants
    @ids = @participants.map(&:id)
  end

  def call
    @participants.each do |participant|
      if participant.id ==  @participants.first.id
        # Assign last partcipant to the the first one
        gift_participant_id = @ids.last
      else
        # Reject owner id from @ids & Select an id item randomly
        gift_participant_id = @ids.reject { | participant_id | participant_id == participant.id }.sample
      end
      # Add it to column
      participant.update(gift_participant: gift_participant_id)
      # Ensur nobody gone pich the same gift_partcipant
      @ids.reject! { | participant_id | participant_id == gift_participant_id }
      # Send email to the participant with all infos
      participant.send_event_creation
    end

  end
end
