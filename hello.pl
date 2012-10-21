use Mojolicious::Lite;
use utf8;

get '/' => sub {
	my $self = shift;

	# ここを埋めよう!
	
	$self->render();
} => 'profile';

app->start;

__DATA__

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
私の名前は<%= $name %>です.<br>
</body>
</html>

