require('minitest/autorun')
require('minitest/rg')
require_relative('../daily_entry')

class DailyEntryTest < Minitest::Test

  def setup
    options = {'id' => 1,
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
    }
    @entry = DailyEntry.new(options)
  end

  def test_id()
    assert_equal(1, @entry.id())
  end

  def test_datetime()
    assert_equal('2019-09-01 14:00:00', @entry.datetime())
  end

  def test_progress()
    assert_equal('I made some progress', @entry.progress())
  end

  def test_reputation()
    assert_equal('I turned up', @entry.reputation())
  end

  def test_feeling_supported()
    assert_equal('I got by with a little help from my friends', @entry.feeling_supported())
  end

  def test_supporting_others()
    assert_equal('I helped.', @entry.supporting_others())
  end

  def test_time_management()
    assert_equal('I used my time well.', @entry.time_management())
  end

  def test_problem_solving()
    assert_equal('Eureka', @entry.problem_solving())
  end

  def test_long_term_priorities()
    assert_equal('I found a great book!', @entry.long_term_priorities())
  end

def test_personal_life()
assert_equal('I chilled out.', @entry.personal_life())
end

def test_happiness()
assert_equal('I loved the weather!', @entry.happiness())
end


  #FINAL END
end
