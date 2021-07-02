# factor = Proc.new {|x| p x*2}

#or

factor = proc {|x| p x*2}

[3,2,1].each(&factor) 