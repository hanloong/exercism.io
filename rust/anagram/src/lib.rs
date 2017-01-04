pub extern fn anagrams_for(word: &'static str, inputs: &[&'static str]) -> Vec<&'static str> {
  let word_chars = to_chars(word);
  let sorted_word = to_sorted(word);
  inputs
    .to_vec().into_iter()
    .filter(|&i| is_anagram(&sorted_word, &word_chars, &to_chars(i)) )
    .collect()
}

fn is_anagram(left: &Vec<char>, left_raw: &Vec<char>, right: &Vec<char>) -> bool {
  same_chars(left, right) && left_raw != right
}

fn same_chars(left: &Vec<char>, right: &Vec<char>) -> bool {
  left == to_sorted(right)
}

fn to_chars(input: &'static str) -> Vec<char> {
  input.to_lowercase().chars().collect()
}

fn to_sorted(input: &Vec<char>) -> Vec<char> {
  let mut chars: Vec<char> = input.clone();
  chars.sort();
  chars
}
