use Mojolicious::Lite;
use utf8;

get '/' => 'index';

post '/data' => sub {
	my $self = shift;

	my $name   = $self->param('name');
	
	$self->stash( name => $name );
	$self->render();
} => 'data';

app->start;

__DATA__
@@ index.html.ep
<html>
<head><title>Input</title></head>
<body style='padding: 30px;'>
	<form action="/data" method="post">
		名前: <input type="text" name="name" size="20"><br>
		<input type="submit" name="submit" value="send"><br>
	</form>
</body>
</html>

@@ data.html.ep
<html>
<head><title>Output</title></head>
<body style='padding: 30px;'>
	hello, <%= $name %>.
</body>
</html>
