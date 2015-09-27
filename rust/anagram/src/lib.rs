pub extern fn anagrams_for(word: &'static str, inputs: &[&'static str]) -> Vec<&'static str> {
  inputs
    .to_vec()
    .into_iter()
    .filter(|&i| is_anagram(word, i) )
    .collect()
}

fn is_anagram(left: &'static str, right: &'static str) -> bool {
  same_chars(left, right) && !same_word(left, right)
}

fn same_chars(left: &'static str, right: &'static str) -> bool {
  to_sorted(left) == to_sorted(right)
}

fn same_word(left: &'static str, right: &'static str) -> bool {
  left.to_lowercase() == right.to_lowercase()
}

fn to_chars(input: &'static str) -> Vec<char> {
  input.to_lowercase().chars().collect()
}

fn to_sorted(input: &'static str) -> Vec<char> {
  let mut chars: Vec<char> = to_chars(input);
  chars.sort();
  chars
}
