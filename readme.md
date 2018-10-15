# alasdairmonk.com
This is the repo of my personal site. It's built on a extremely simple custom CMS (found in `site.rb`) and hosted on GitHub Pages.


## How the CMS functions

The folder structure looks like this:

```ruby
site.rb # The main entry point
data/
  site.yaml # All data to be rendered
index.html # The build site
templates/
  # Where ERB templates are
static/
  # Static assets like images, css et al
```

### Building the site locally
```bash
$ bundle install
$ ruby site.rb
```

### Template methods
**Rendering a template partial**
```erb
<%= render template_name, data %>
```

**Rendering a section header**
```erb
<%= section "Heading name", "Optional description" %>
```