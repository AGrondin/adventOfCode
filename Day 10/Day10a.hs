module Main where

readaloud :: [Char]->[Char]
readaloud (x:xs) = show((length $ takeWhile (==x) xs)+1) ++ readaloud( drop (length(takeWhile (==x) xs)) xs)
readaloud [] = []

fortytimes :: ([Char]->[Char])->[Char]->Int->[Char]

fortytimes f xs 0=xs
fortytimes f xs n=fortytimes f (f xs) (n-1)

main=do

print $ fortytimes readaloud "3" 1