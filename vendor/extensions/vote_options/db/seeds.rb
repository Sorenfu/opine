Refinery::I18n.frontend_locales.each do |lang|
  I18n.locale = lang
=begin
  Refinery::User.find_each do |user|
    user.plugins.where(name: 'refinerycms-vote_options').first_or_create!(
      position: (user.plugins.maximum(:position) || -1) +1
    )
  end if defined?(Refinery::User)

  Refinery::Page.where(link_url: (url = "/vote_options")).first_or_create!(
    title: 'Vote Options',
    deletable: false,
    menu_match: "^#{url}(\/|\/.+?|)$"
  ) do |page|
    Refinery::Pages.default_parts.each_with_index do |part, index|
      page.parts.build title: part[:title], slug: part[:slug], body: nil, position: index
    end
  end if defined?(Refinery::Page)
=end
end