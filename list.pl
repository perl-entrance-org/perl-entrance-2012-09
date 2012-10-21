use Mojolicious::Lite;
use utf8;

get '/' => 'index';

post '/data' => sub {
	my $self = shift;

	my $name   = $self->param('name');
	my $height = $self->param('height');
	my $weight = $self->param('weight');
	my $age    = $self->param('age');
	my $hobby  = $self->param('hobby');

	$self->stash( name => $name, height => $height, weight => $weight, age => $age, hobby => $hobby );
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
		身長: <input type="text" name="height" size="4">cm<br>
		体重: <input type="text" name="weight" size="4">kg<br>
		年齢: <input type="text" name="age" size="4"><br>
		趣味: <input type="text" name="hobby" size="20"><br>
		<input type="submit" name="submit" value="送信"><br>
	</form>
</body>
</html>

@@ data.html.ep
<html>
<head><title>Output</title></head>
<body style='padding: 30px;'>
	<table>
		<tr>
			<td>名前</td>
			<td><%= $name %></td>
		<tr>
		<tr>
			<td>身長</td>
			<td><%= $height %></td>
		<tr>
		<tr>
			<td>体重</td>
			<td><%= $weight %></td>
		<tr>
		<tr>
			<td>年齢</td>
			<td><%= $age %></td>
		<tr>
		<tr>
			<td>趣味</td>
			<td><%= $hobby %></td>
		<tr>
	</table>
</body>
</html>
