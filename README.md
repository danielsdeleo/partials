# Partials

This is a [Chef](http://www.opscode.com/chef/) cookbook to demonstrate
the new template partials feature in Chef 11.0.

It contains just a single template resource and a ruby block to print
the result.

Most of the action happens in the template files themselves. The
top-level template is [demo.txt.erb](templates/default/demo.txt.erb); it
shows partial template usage with a brief explanation of what's going on
with each example. For a more in-depth explanation of partial templates,
see the [in-line API docs](https://github.com/opscode/chef/blob/11.0.0/lib/chef/mixin/template.rb#L33-71).

## Running It

This cookbook doesn't have any real-world use beyond demonstrating the
partial template feature. If you'd like to download it and play around:

    $ mkdir /tmp/cookbooks
    $ cd /tmp/cookbooks
    $ git clone CLONE_URL
    $ echo 'cookbook_path "/tmp/cookbooks"' >> /tmp/solo.rb
    $ chef-solo -c /tmp/solo.rb -o partials

