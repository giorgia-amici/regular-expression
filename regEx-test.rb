#a regexp describes the content of a string. They test if that strings contains that specific pattern

#you recognise it with the  /pattern/

/g/.match('gio')
#<MatchData "g"> 

/p/.match('gio')
#nil: this is the return of a failed match


/ab/.match("abbcccddddeeeee")
#<MatchData "ab"> => it will return only the pattern in which the 'a' if followed by 'b'

/1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')
#<MatchData "1 + 2 = 3?">
#o match them literally they must be backslash-escaped


/bc+/.match("abbcccddddeeeee")
#<MatchData "bccc"> 
#because it will return where the pattern has been found plus
#all the other 'c' in this case. Another example might be:


/bc+/.match("abbcccccccccccccccccccccccccccccddddeeeee")
#<MatchData   "bccccccccccccccccccccccccccccc"> 
#I indednted it so you can see that is taking all the 'c' after the pattern /bc/


/ab*/.match("abbcccddddeeeee")
#<MatchData "abb">


/az*/.match "abbccc az"

animals = ['cat', 'bat', 'rat']
animals.select{ |a| a[/[cbr]at/] }
#['cat','bat','rat']

[/[0123456789]+/].match('42')
