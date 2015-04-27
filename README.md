# xamarin project
Xamarin Project

## Notes
I have not refactored to use Screen objects yet. Time permitting, I'll try to complete this refactor by Wednesday.

So far, my tests have not caused any app crashes. Time permitting, I'd like to try to explore that more. 

# Code structure
I've broken my code up into 3 features: logging in with valid username/password, attempting to register, and forgetting password. 

The corresponding step implemetations files are login_steps.rb, new_account_steps.rb, and forgot_password_steps.rb respectively. The implementations are very basic: 

In new_account_steps, we have a handler for being on the registration screen, which is the first screen of the app and also the place where the user will find system dialogues for allowing push notifications and location monitoring. There is some boiler plate code to handle these alerts. 

Very little code was needed for login_steps and forgot_password steps, as most of the .feature lines were found in calabash_steps.rb. The more I write these tests, however, the more I realize it may make sense to abstract some common functionality out into either a common_steps.rb file or into Screen objects. For example, `Given I am on the ___ screen` seems redundant to handle in multiple places, and the implementation may get a little involved depending on which screen the feature is specifying (as with the registration screen, noted above). 



## New Feedback

- I found it somewhat tedious to discover how to query every view, especially when there seem to be arbitrary inconsistencies for how views are labeled. For example, I've got two buttons, "Have An Account?" and "Forgot Password?" which are identical except for their labels, yet I need to query the first with `button marked:'HaveAccount'` and the second with `buttonMarked:'Forgot Password?'`. Thefore, the pre-existing calabash steps aren't as pretty as would be ideal (to use them I have to have a line that says 'And I touch the 'HaveAccount' button'). What would be nice is if there were so graphical tool (like an overlay on the app itself) that would allow a user to interact with different elements and discover how to query them. Taking guesses at the command line (e.g., `query "label"`) seems inefficient. 
- System Alerts. It took about an hour to find out how to navigate system alerts - the most common answer to the problem on the Google groups was to just disable the app from using location etc. such that the alerts do not occur. The app I was testing in particular is nearly useless withouth the user's location. When I finally discovered the `uia_query(:alert)` command, I couldn't find any corresponding documentation (perhaps it exists, but I didn't see it) so I wasn't able to refactor my code as much as I would have liked. 
- On TestCloud, I don't get a sense of continuity from one test run to the next. What I mean by this is that I don't easily see how I can track over time how device X did on test A. I realize there are some difficulties because test A on a run #1 can be irrecognizably altered for a run #2, but perhaps there is some way to do automatic test versioning such that charts could be created but also demarcated by test version number? E.g. device X passes Test A on 4 consecutive days but fails on the 5th, however there is a demarcation that between days 4 and 5 Test A was changed from version 1.0 to 2.0. Suppose we were testing server-side changes to an application (or doing something like load testing) and validating that the client was responding correctly by automating test runs every hour. It'd be nice to see a graph of success/failure over time. 
