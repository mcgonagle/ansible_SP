when HTTP_REQUEST {
	if { [HTTP::uri] starts_with "/broken" } {
		HTTP::redirect "http://isitthef5.com"
	}
}
