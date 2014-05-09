# dashing-codeship

Code Ship widget to Shopify Dashing (http://shopify.github.io/dashing/).


##  Setup


- Copy the contents of the *jobs*, *widgets* and *config* folder into the the jobs, widgets and config (maybe you need create it) folders in your dashing project.

- Edit the codeship.yml file to configure the repository name and ID. The configuration looks like this:

```yaml
projects:
  project_name: project_id
```

## Appearance

![image](https://cloud.githubusercontent.com/assets/496442/2929453/86347c28-d789-11e3-9c42-8ae0569df391.png)


## Adding this widget to your dashboard

Add the following to your *dashboard.erb* file, and adjust the attributes to place it where you want. The *data-id* value is ended by the repository name (same used in codeclimate.yml).

```html
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="codeship-ProjectName" data-view="Codeship" data-title="Project title Build"></div>
</li>
```

## For best viewing

The layout of these widgets is inspired by [Geckoboard](http://geckoboard.com). So, for best viewing is strongly recommended to change the dimensions of standard widgets. To do this, edit the file `assets/application.coffee` for something like:

```coffee
Dashing.widget_base_dimensions ||= [230, 230]
Dashing.numColumns ||= 5
```

## Dependences

This widget use Font Awesome 3.2.1
- http://fortawesome.github.io/Font-Awesome/3.2.1/


## Licence

This widget is released under the [MIT License](http://www.opensource.org/licenses/MIT).
