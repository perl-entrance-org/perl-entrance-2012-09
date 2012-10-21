use Mojolicious::Lite;
use utf8;

get '/' => 'index';

post '/do' => sub {
	my $self = shift;

	$self->stash( input => $self->param('data') );
	$self->render();
} => 'do';

app->start;

__DATA__
@@ index.html.ep
<html>
<head><title>Question 02</title></head>
<body style='padding: 30px;'>
	<form action="/do" method="post">
		<input type="text" name="data" size="20"><br>
		<input type="submit" name="submit" value="送信"><br>
	</form>
</body>
</html>

@@ do.html.ep
<html>
<head><title>Question 02</title></head>
<body style='padding: 30px;'>

</body>
</html>
