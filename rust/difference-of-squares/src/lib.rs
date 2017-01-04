pub extern fn square_of_sum(val: u64) -> u64 {
  (1..(val+1)).fold(0, |sum, x| sum + x).pow(2)
}

pub extern fn sum_of_squares(val: u64) -> u64 {
  (1..(val+1)).fold(0, |sum, x| sum + x.pow(2))
}

pub extern fn difference(val: u64) -> u64 {
  square_of_sum(val) - sum_of_squares(val)
}
