class SDGManagement::Homepage::ShowComponent < ApplicationComponent
  include Header

  attr_reader :phases, :cards

  def initialize(phases, cards)
    @phases = phases
    @cards = cards
  end

  private

    def sdg_web_section
      @sdg_web_section ||= WebSection.find_by!(name: "sdg")
    end

    def title
      t("sdg_management.homepage.title")
    end

    def create_card_text(phase)
      t("sdg_management.homepage.create_card", phase: phase.title.downcase)
    end

    def no_cards_message
      t("sdg_management.homepage.no_cards")
    end
end
