# xamarin project
Xamarin Project

## Notes
I have not refactored to use Screen objects yet. Time-permitting, I'll complete this refactor by Wednesday.

So far, my tests have not caused any app crashes. Time permitting, I'd like to try to explore that more. 

## New Feedback

- I found it somewhat tedious to discover how to query every view, especially when there seem to be random inconsistencies for how views are labeled. For example, I've got two buttons, "Have An Account?" and "Forgot Password?" which are identical except for their labels, yet I need to query the first with `button marked:'HaveAccount'` and the second with `buttonMarked:'Forgot Password?'`. Thefore, the pre-existing calabash steps aren't as pretty as would be ideal (to use them I have to have a line that says 'And I touch the 'HaveAccount' button'). What would be nice is if there were so graphical tool (like an overlay on the app itself) that would allow a user to interact with different elements and discover how to query them. Taking guesses at the command line (e.g., `query "label"`) seems inefficient. 
- System Alerts. It took about an hour to find out how to navigate system alerts - the most common answer to the problem on the Google groups was to just disable the app from using location etc. such that the alerts do not occur. The app I was testing in particular is nearly useless withouth the user's location. When I finally discovered the `uia_query(:alert)` command, I couldn't find any corresponding documentation (perhaps it exists, but I didn't see it) so I wasn't able to refactor my code as much as I would have liked. 
- On TestCloud, I don't get a sense of continuity from one test run to the next. What I mean by this is that I don't easily see how I can track over time how device X did on test A. I realize there are some difficulties because test A on a run #1 can be irrecognizably altered for a run #2, but perhaps there is some way to do automatic test versioning such that charts could be created but also demarcated by test version number? E.g. device X passes Test A on 4 consecutive days but fails on the 5th, however there is a demarcation that between days 4 and 5 Test A was changed from version 1.0 to 2.0. Suppose we were testing server-side changes to an application (or doing something like load testing) and validating that the client was responding correctly by automating test runs every hour. It'd be nice to see a graph of success/failure over time. 
