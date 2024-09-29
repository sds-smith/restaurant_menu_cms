# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Role.create(name: "SuperUser")
Role.create(name: "StaffUser")

# User.create(email: 'sds.smith24@gmail.com', username: 'Admin', user_type: 0, password: '\~/PaPsPdPcPvPb3--', role_id: 1)