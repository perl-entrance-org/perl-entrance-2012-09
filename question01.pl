use Mojolicious::Lite;
use utf8;

get '/' => 'index';

post '/bmi' => sub {
	my $self = shift;

	$self->render();
} => 'bmi';

app->start;

__DATA__
@@ index.html.ep
<html>
<head><title>BMI calculator</title></head>
<body style='padding: 30px;'>
	<form action="/bmi" method="post">
		名前: <input type="text" name="name" size="20"><br>
		身長: <input type="text" name="height" size="4">cm<br>
		体重: <input type="text" name="weight" size="4">kg<br>
		<input type="submit" name="submit" value="送信"><br>
	</form>
</body>
</html>

@@ bmi.html.ep
<html>
<head><title>BMI calculator</title></head>
<body style='padding: 30px;'>
	<%= $name %>さんのBMIは<%= $bmi %>です!
</body>
</html>
