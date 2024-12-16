{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
	nativeBuildInputs = with pkgs.buildPackages; [
		clang
		gnumake
		pkg-config
		bear
		
		wayland
		wayland-protocols
		wayland-scanner.dev
		srm-cuarzo.dev
		louvre.dev
		libdrm.dev
		libinput.dev
		libGL.dev
		libxkbcommon
		pango.dev
		pixman
		systemd.dev
		xorg.libxcb
		xorg.xcbutilwm
	];
}
