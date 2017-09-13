# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
# an adjective and injects those into a story that you create.

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

def prompt(string)
  puts "=> #{string}"
  gets.chomp
end

noun = prompt("Enter a noun:")
verb = prompt("Enter a verb:")
adj = prompt("Enter an adjective:")
adv = prompt("Enter an adverb:")

sentence_1 = "=> You #{verb} your #{adj} #{noun} #{adv}? That's hilarious!"
sentence_2 = "=> I #{adv} #{verb} the #{adj} #{noun}...like a normal person."
sentence_3 = "=> Don't stop #{adv}! I like the way you #{verb}. I want a #{adj} #{noun}."

sentences = [sentence_1, sentence_2, sentence_3]
puts sentences.sample
