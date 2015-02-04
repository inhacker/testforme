
=begin
  Diwen Hu
  I create a class named Arraydeck which included two methods. One is collectarray,
  which collects the total 81 sets of cards for the game. Then I create another method
  named makerandomarray, which selects 12 random sets of cards from the total 81.
=end

class Arraydeck
  #create class variable totalarray
  @@totalarray=Array.new
  #using for loop to make each array with 4 features to the totalarray
  def collectarray
  #usig four for loops to make 3^4 sets of cards with different features
    for a in 0..2
      for b in 0..2
        for c in 0..2
          for d in 0..2
            arr=Array.new{4}
            #describe different features of defferent sets of card
            arr.insert(0, 'solid') if d==0
            arr.insert(0, 'striped') if d==1
            arr.insert(0, 'open') if d==2
            arr.insert(0, 'diamond') if c==0
            arr.insert(0,'squiggle') if c==1
            arr.insert(0,'oval') if c==2
            arr.insert(0,'red') if b==0
            arr.insert(0,'green') if b==1
            arr.insert(0,'purple') if b==2
            arr.insert(0,'one') if a==0
            arr.insert(0,'two') if a==1
            arr.insert(0,'three') if a==2
            @@totalarray.insert(-1,arr)
          end

        end

      end

    end

  return @@totalarray

  end

  #make another method to get 12 random sets of cards
  def makerandomarray

    @randomarray=Array.new
    #make a random number from 0 to 80
    randomnum=rand(max=80)
    #using for loop to make 12 random sets from totalarray
    for e in 0..11
      @randomarray.insert(-1,@@totalarray[randomnum])
    end

    return @randomarray
  end

end

#create a object to use class
getarray=Arraydeck.new

#get 12 random arrays to here from method makerandomarray
here=getarray.collectarray
#puts"#{here}"

here2=getarray.makerandomarray
#puts"#{here2}"
