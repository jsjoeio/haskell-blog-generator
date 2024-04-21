module Main where

main :: IO ()
main = putStrLn myhtml

myhtml :: String
myhtml = makeHtml "Hello title" "Hello, world!"

makeHtml :: String -> String -> String
makeHtml title content = html_ (head_ (title_ title)) <> body_ content

html_ :: String -> String
html_ content = "<html>" <> content <> "</html>"

body_ :: String -> String
body_ content = "<body>" <> content <> "</body>"

head_ :: String -> String
head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String
title_ content = "<title>" <> content <> "</title>"
