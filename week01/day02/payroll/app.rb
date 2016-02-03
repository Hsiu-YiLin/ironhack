#Partner Programming, Payroll
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh','joshemail@email.com',34,2343)

josh2 = SalaryEmployee.new("name","email",23423423)

ted = MultiPaymentEmployee.new("Ted","ted@email.com",60000 ,275 ,55)

pete = SalaryEmployee.new("Pete", "Pete@pete.com", 1000)

hsiuyi = MultiPaymentEmployee.new("Hsiuyi", "Hsiuyi@email.com", 4566, 444, 45)

# employee=[josh.calculatesalary, josh2.calculatesalary, ted.calculatesalary, pete.calculatesalary, hsiuyi.calculatesalary]
employee=[josh, josh2, ted, pete, hsiuyi]


payroll = Payroll.new(employee)
payroll.pay_employees
payroll.notify_employees