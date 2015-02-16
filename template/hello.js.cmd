@if (1==0) /*
@echo off

cscript "%0" //E:JScript //Nologo // %*
goto :EOF

*/ @end
var console = { log:function(s){WScript.Echo(s);} };

var options = (function(){
	var o = {};
	var e = new Enumerator(WScript.Arguments.Named);
	e.moveFirst();
	for (; !e.atEnd(); e.moveNext())
	{
		var key = e.item();
		var val = WScript.Arguments.Named.Item(key);
		o[key] = val;
	}
	return o;
})();

var args = (function(){
	var a = [];
	var e = new Enumerator(WScript.Arguments.Unnamed);
	e.moveFirst();
	for (var i=0; !e.atEnd(); i++, e.moveNext())
	{
		var val = e.item();
		a.push(val);
	}
	return a;
})();

console.log('Hello, JScript!');

for (var key in options) {
	console.log('ƒIƒvƒVƒ‡ƒ“['+ key +']:' + options[key]);
}

for (var i=0; i < args.length; i++) {
	console.log('ˆø”['+ i + ']:' + args[i]);
}
