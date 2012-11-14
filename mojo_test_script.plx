#!/usr/bin/perl

use Mojolicious::Lite;

# Default route
get '/' => sub {
    my $self = shift;
    $self->render(text => "Hello World!");
};

# Route with placeholder
get '/:method' => sub {
    my $self = shift;
    my $method = $self->param('method');

    $self->render(text => "Calling $method...");
};

# Start the Mojolicious command system
app->start;

__END__

# /
get '/' => sub {
    my $self = shift;
    $self->render;
} => 'index';

# /hello
get '/hello';

# Start the Mojolicious command system
app->start;

__DATA__

@@ index.html.ep
<%= link_to Hello  => 'hello' %>.
<%= link_to Reload => 'index' %>.

@@ hello.html.ep
Hello World!
