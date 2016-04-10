use v6;
use Panda::Common;
use Panda::Builder;
use Shell::Command;
use LibraryMake;

class Build is Panda::Builder {
	method build($dir) {
		my Str $ext = "$dir/ext/crypt_blowfish-1.3";
		my Str $res = "$dir/resources";
		rm_f("$ext/crypt_blowfish.so");
		rm_f("$ext/crypt_blowfish.o", "$ext/crypt_gensalt.o");
		rm_f("$ext/wrapper.o", "$ext/x86.o");
		make($dir, "$res");
	}
}

# vim: ft=perl6
