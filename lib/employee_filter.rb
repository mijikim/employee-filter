class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    before_2006 = []
    @employees.each do |employee_hashes|
      if employee_hashes[:start_date].year < 2006
        before_2006.push employee_hashes
      end
    end
    before_2006
  end


  def all_with_start_date
    with_start_date = []
    @employees.each do |employee_hashes|
      fname = employee_hashes[:first_name]
      lname = employee_hashes[:last_name]
      title = employee_hashes[:title]
      year = employee_hashes[:start_date].year
      month = employee_hashes[:start_date].month
      date = employee_hashes[:start_date].day

      if employee_hashes[:start_date]
        with_start_date.push "#{fname} #{lname} (#{title}) - #{month}/#{date}/#{year}"
      end
    end
    with_start_date
  end

end
