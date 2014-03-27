class Employee < ActiveRecord::Base
  acts_as_reportable
  puts Employee.report_table
end
