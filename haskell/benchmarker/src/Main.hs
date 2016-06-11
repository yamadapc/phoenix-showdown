{-# LANGUAGE FlexibleContexts    #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}
import           Control.Monad
import           Data.Monoid
import           Lucid
import           Lucid.Base
import           Web.Spock

d cn = div_ [ class_ cn ]

main :: IO ()
main = runSpock 3000 $ spockT id $
    get ("/" <//> var) $ \(t :: String) -> lazyBytes $ renderBS $ do
        doctypehtml_ $ do
            head_ $ do
                meta_ [ charset_ "utf-8" ]
                meta_ [ makeAttribute "http-equiv" "utf-8"
                      , content_ "IE=edge"
                      ]
                meta_ [ name_ "viewport"
                      , content_ "width=device-width, initial-scale=1"
                      ]
                meta_ [ name_ "description"
                      , content_ ""
                      ]
                meta_ [ name_ "author"
                      , content_ ""
                      ]
                title_ "Hello Phoenix!"
            body_ $ do
                d "container" $
                    d "header" $ ul_ [class_ "nav nav-pills pull-right"] $
                        li_ $ a_ [ href_ "https://github.com/phoenixframework/phoenix" ] "Get Started"
                index_ t
                d "footer" $
                    p_ $ a_ [href_ "http://phoenixframework.org"] "phoenixframework.org"

index_ :: String -> Html ()
index_ title = do
    d "jumbotron" $ do
        h2_ "Welcome to Phoenix!"
        p_ [ class_ "lead" ] "Phoenix is an Elixir Web Framework targeting full-featured, fault tolerant applications with realtime functionality."
    d "row-marketing" $ do
        d "col-lg-6" $ do
            h4_ (toHtml ("Resources " ++ title))
            ul_ $ do
                li_ $ a_ [ href_ "http://api.phoenixframework.org/" ] "Docs"
                li_ $ a_ [ href_ "https://github.com/phoenixframework/phoenix" ] "Source"
        d "col-lg-6" $ do
            h4_ "Help"
            ul_ $ do
                li_ $ a_ [ href_ "https://github.com/phoenixframework/phoenix/issues?state=open" ] "Issues"
                li_ $ a_ [ href_ "irc://irc.freenode.net/elixir-lang" ] "#elixir-lang on freenode IRC"
                li_ $ a_ [ href_ "https://twitter.com/chris_mccord" ] "@chris_mccord"
            h4_ "Team Members"
            ul_ $ forM_ members $ \m ->
                li_ $ b_ ("Name: " <> m)

      -- ul
      --   li
      --     a(href="https://github.com/phoenixframework/phoenix/issues?state=open") Issues
      --   li
      --     a(href="irc://irc.freenode.net/elixir-lang") #elixir-lang on freenode IRC
      --   li
      --     a(href="https://twitter.com/chris_mccord") @chris_mccord

      -- h4 Team Members

      -- ul
      --   - foreach(member; members)
      --     li
      --       b Name:
      --       | #{member.name}



members = [ "Chris McCord"
          , "Matt Sears"
          , "David Stump"
          , "Ricardo Thompson"
          ]
