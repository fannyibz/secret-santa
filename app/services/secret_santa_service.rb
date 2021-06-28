class SecretSantaService

  def initialize(args = {})
    @event = args[:event]
    @participants = @event.participants
    @ids = @participants.map(&:id)
  end

  def call
    @participants.each do |participant|
      # Reject owner id from @ids & Select an id item randomly
      gift_participant_id = @ids.reject { | partcipant_id | partcipant_id == participant.id }.sample
      # Add it to column
      participant.update(gift_participant: gift_participant_id)
      # Ensur nobody gone pich the same gift_partcipant
      @ids.reject! { | partcipant_id | partcipant_id == gift_participant_id }
      # Send email to the participant with all infos
      participant.send_event_creation
    end

  end
end