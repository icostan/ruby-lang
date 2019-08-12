#!/usr/bin/env ruby

require 'csv'

CSV.open('bitwarden.csv', 'w') do |csv|
  csv << ['folder', 'favorite', 'type', 'name', 'notes', 'fields', 'login_uri', 'login_username', 'login_password', 'login_totp']

  CSV.open('~/Desktop/pm_export.csv', headers: true).each do |row|
    data = ['', 0, 'login', row['Title'], '', '', row['Login URL'], row['Login Username'], row['Login Password'], '']
    csv << data
  end
end
