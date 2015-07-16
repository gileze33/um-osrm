include_recipe 'osrm::install_git'

osrm_map 'great-britain' do
  action :create_if_missing
end

osrm_routed 'great-britain' do
  user   'osrm-routed'
  listen '0.0.0.0'
  port   5000
end