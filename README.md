# SOFA, so good

This is the code from a lightning talk I'm about to have given at Xworld 2024.

Don't use this code as-is. This is not very good code (it was written quickly for a lightning talk idea I had).

Instead, use this project as ✨inspiration✨ for the tasks in your life that could be easily automated by computers.

## Usage

If you still want to use this as the basis for your project, I might as well tell you how to run it.

1. Ensure you have a recent-ish version of Ruby installed.
2. Connect to the internet. This makes live calls to the SOFA API and doesn't implement any form of caching or local storage of the response.
3. Run `./script.rb` in your terminal app of choice.

## Exercises left to the reader

- Customise the profile to include your organisation's details
- Save the generated config profile to a file
- Upload the outputted config profile to your MDM provider of choice, testing in a non-production environment, naturally.
- Add some better error checks (what happens if your computer is offline or the SOFA website is down?)
