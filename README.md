# Testing Boilerplate


### Setup

1. Clone this repo `git clone git@git.mgmt.local:radi.totev/testing-boilerplate.git your-project-name`
:exclamation: Make sure to replace `your-project-name`

2. Change to newly created folder `cd your-project-name`

3. Create new project on Git `your-project-name`

4. Remove/ Edit README

5. Add changes `git add .`

6. Commit changes `git commit -m 'first commit'`

7. Remove existing remote origin `git remote remove origin`

8. Add new remote repository (get address from projects home page). Example: `git remote add origin git@git.mgmt.local:git-group-or-username/your-project-name.git`  

9. Push changes to remote `git push -u origin master`

### Use

Run `bundle install` in order to install the gems

Run `cucumber` as a smoke test. There is a dummy test to ensure the boilerplate is functioning. Default browser is **chrome**. If you want to change to Firefox or any other go to `cucmber.yml` and add your changes. Alternatively set your browser as environmental variable BROWSER, e.g. BROWSER=firefox.

`root/config/cucumber.yml`
Add all your profiles, commonly used command line arguments, environment variables etc.

`root/features/support/env.rb`
Basic Capybara, Selenium and SitePrism configuration is already set. Adjust as you see fit for the needs of your project.

`root/features/support/pages`
Create all your SitePrism Page classes in this folder. There is no need to do anything else. New instances of all pages are created at runtime. You can start using your page objects from the step definitions by just entering the name of the page e.g. `home_page.some_element`. There is already placeholder `HomePage` class you can edit to suit your needs and it is a good example to start with.

`root/features/support/hooks.rb`
For convenience number of hooks are provided. Uncomment and use the ones you need.
