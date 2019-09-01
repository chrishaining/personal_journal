require_relative('../db/sql_runner')
class DailyEntry

attr_reader :id, :datetime
attr_accessor :progress, :reputation, :feeling_supported, :supporting_others, :time_management, :problem_solving, :long_term_priorities, :personal_life, :happiness

def initialize(options)
  @id = options['id'].to_i if options['id']
    @datetime = options['datetime']
    @progress = options['progress']
    @reputation = options['reputation']
    @feeling_supported = options['feeling_supported']
    @supporting_others = options['supporting_others']
    @time_management = options['time_management']
    @problem_solving = options['problem_solving']
    @long_term_priorities = options['long_term_priorities']
    @personal_life = options['personal_life']
    @happiness = options['happiness']
  end

#CREATE A NEW ENTRY
def save()
  sql = "
    INSERT INTO daily_entries
    (datetime, progress, reputation, feeling_supported, supporting_others, time_management, problem_solving, long_term_priorities, personal_life, happiness)
    VALUES
    ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
    RETURNING *
    "
    values = [
      @datetime,
      @progress,
      @reputation,
      @feeling_supported,
      @supporting_others,
      @time_management,
      @problem_solving,
      @long_term_priorities,
      @personal_life,
      @happiness
      ]
    daily_entry = SqlRunner.run(sql, values).first
    @id = daily_entry['id'].to_i
  end

#READ all entries
def self.view_all()
  sql = "
  SELECT * FROM daily_entries"
  all_entries = SqlRunner.run(sql)
  result = all_entries.map { |entry| DailyEntry.new(entry)}
  return result
end

#READ a specific entry by date
def view

#READ a specific attribute from all entries (so, the attribute will be the argument)


#method to show the day and date. Could this be the name that the user sees onscreen?

  #FINAL END
end
