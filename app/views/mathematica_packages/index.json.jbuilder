json.array!(@mathematica_packages) do |mathematica_package|
  json.extract! mathematica_package, :id, :owner, :repository, :description, :downloads
  json.url mathematica_package_url(mathematica_package, format: :json)
end
