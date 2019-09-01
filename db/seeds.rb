#requires will go here
require_relative('../models/daily_entry')
require('pry')

#DELETE ALL method

#new instances of the member class
daily_entry1 = DailyEntry.new( {
  'datetime' => '2019-09-01 14:00:00',
  'progress' => 'I made some progress',
  'reputation' => 'I turned up',
  'feeling_supported' => 'I got by with a little help from my friends',
  'supporting_others' => 'I helped.',
  'time_management' => 'I used my time well.',
  'problem_solving' => 'Eureka',
  'long_term_priorities' => 'I found a great book!',
  'personal_life' => 'I chilled out.',
  'happiness' => 'I loved the weather!'
  })

#creating instances of the daily_entry class (save method)
daily_entry1.save()

binding.pry
nil
