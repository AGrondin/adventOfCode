module Main where

numCmb:: [Integer]->Integer->[[Integer]]

numCmb xs 0   = [[]]
numCmb xs y   = concat [[bs| bs<-numCmb ((take n xs)++(drop (n+1) xs)) (y-(xs!!n)), bs/=[]]| n<-[0..(length xs -1)]]
           
   
main=do

print $ '3'
   
