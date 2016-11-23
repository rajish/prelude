;;; prelude-cmake.el --- Emacs Prelude: CMake programming support.

(prelude-require-packages '(cmake-mode cpputils-cmake))

(require 'cmake-mode)
(require 'rtags)
(cmake-ide-setup)

(provide 'prelude-cmake)
