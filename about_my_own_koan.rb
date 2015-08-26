require File.expand_path(File.dirname(__FILE__) + '/neo')

class MyOwnKoan < Neo::Koan
  
  #FIX DIFERENTS ERRORS
  #Fix this ArgumentError. maybe we have many numbers
  #[1, 2, 3].first(4, 6)
  

  #Fix this SystaxError. Could be eval doesn't take some simbol
  #eval(1+1=2)

  #Fix this NameError, I missed something
  #__ = "wag"
  #puts dog

  #Fix this TypeError. Integers and strings, I don't know.
  #[1, 2, 3].first("two")

  #Fix this NoMethodError. Could be to_array does't exist
  #dog = "wag".to_array

end
