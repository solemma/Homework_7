# def combine_two_arrays(array_one, array_two)
# 	combine_hash-{}
# 	array_one.each do |array_item|
# 		combine_hash[array_item]=array_two[]
# 		counter=counter+1
# 	end 
# 	combine_hash
# end
large_block_of_text="Yes we are laughing at your
naked body airport security officer confesses.  
Staff would make fun of images from full-body 
scanners and target passengers from 12 countries, 
a former US airport security worker has alleged.  
A former US airport security worker has confirmed the
 suspicions of many fliers by admitting that staff 
 will often laugh and gawk at the images of naked 
 passengers that appear on full body scanners.
In a candid confession for the website Politico, 
Jason Harrington, a Transportation Security Administration 
(TSA) officer from 2007 until 2013, also alleged that 
passengers were until 2010 profiled based on their
 nationality, and said that he and fellow staff accept 
 that many measures are unnecessary and ineffective.  
 'The [full-body scanners] were good at detecting just 
 about everything besides cleverly hidden explosives and 
 guns,' wrote Mr Harrington. 'Many of the images we 
 gawked at were of overweight people, their every fold 
 and dimple on full awful display. Piercings of every 
 kind were visible. Women who'd had mastectomies were 
 easy to discern their chests showed up on our screens 
 as dull, pixellated regions.'  'Hernias appeared as 
 bulging, blistery growths in the crotch area. Passengers 
 were often caught off-guard by the X-Ray scan and so 
 materialised onscreen in ridiculous, blurred poses mouths 
 agape, a la Edvard Munch. One of us in the I.O. room would 
 occasionally identify a passenger as female, only to have 
 the officers out on the checkpoint floor radio back that 
 it was actually a man. All the old, crass stereotypes 
 about race and genitalia size thrived on our secure 
 government radio channels.'"



#Creates has of words and count of frequency
def count_words_hash_create(string)
  res = Hash.new(0)
  string.downcase.scan(/\w+/).map{|word| res[word] = string.downcase.scan(/\b#{word}\b/).size}
  return res
end

print count_words_hash_create(large_block_of_text)

#Returns key with highest count
def count_words_max_value(string)
  res = Hash.new(0)
  string.downcase.scan(/\w+/).map{|word| res[word] = string.downcase.scan(/\b#{word}\b/).size}
  return res.keys.max
end

print count_words_max_value(large_block_of_text)