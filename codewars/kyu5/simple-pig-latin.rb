def pig_it text
    text.gsub(/\b(\w){1}(\w*)/) { "#{$2}#{$1}ay"}
end
  
# The '$' in the output indidcates the capture groups
# So this switches the first capture group (\b(\w){1}) which is the first letter with the other letters.