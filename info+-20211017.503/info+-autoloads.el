;;; info+-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "info+" "info+.el" (0 0 0 0))
;;; Generated autoloads from info+.el

(let ((loads (get 'Info-Plus 'custom-loads))) (if (member '"info+" loads) nil (put 'Info-Plus 'custom-loads (cons '"info+" loads))))

(defvar info-good-fixed-pitch-font-families '("Lucida Console" "Lucida Sans Typewriter" "Consolas" "ProggyVector" "OCR A Extended") "\
Some good fixed-pitch font families.
The default for face `info-fixed-pitch' inherits from the first one
available, checked in list order.")

(defface info-fixed-pitch `((t (:inherit fixed-pitch ,@(let ((family (catch 'info-fixed-pitch (dolist (fam info-good-fixed-pitch-font-families) (when (member fam (font-family-list)) (throw 'info-fixed-pitch fam)))))) (and family `(:family ,family)))))) "\
Fixed-pitch face for Info.
The default value inherits from face `fixed-pitch'.  And if you have a
font family listed in variable `info-good-fixed-pitch-font-families',
then the face attributes of the first one you have listed there are
merged with those of face `fixed-pitch'.

By default, face `info-fixed-pitch' is inherited by faces
`info-custom-delimited',`info-double-quoted-name',
`info-isolated-quote', `info-quoted-name', `info-reference-item', and
`info-string'." :group 'Info-Plus :group 'faces)

(defface info-custom-delimited '((((background dark)) (:inherit info-fixed-pitch :foreground "Red")) (t (:inherit info-fixed-pitch :foreground "Red"))) "\
Face for text surrounded by custom delimiter chars on the same line." :group 'Info-Plus :group 'faces)

(defface info-double-quoted-name '((((background dark)) (:inherit info-fixed-pitch :foreground "Cyan")) (t (:inherit info-fixed-pitch :foreground "DarkOrange"))) "\
Face for names enclosed in curly double-quotes (“...”) in `info'." :group 'Info-Plus :group 'faces)

(defface info-emphasis '((t (:inherit italic))) "\
Face for emphasizing text enclosed with underscores (_..._) in `info'." :group 'Info-Plus :group 'faces)

(defface info-indented-text '((((background dark)) (:inherit info-fixed-pitch :foreground "DarkBlue")) (t (:inherit info-fixed-pitch :foreground "DarkBlue"))) "\
Face for indented text such as that used in a code block." :group 'Info-Plus :group 'faces)

(defface info-file '((((background dark)) (:inherit info-reference-item :foreground "Yellow")) (t (:inherit info-reference-item :foreground "Blue"))) "\
Face for file heading labels in `info'." :group 'Info-Plus :group 'faces)

(defface info-glossary-word '((t (:box (:line-width 1 :style pressed-button)))) "\
Face for first occurrences of glossary words in an `info' node." :group 'Info-Plus :group 'faces)

(defface info-menu '((((background dark)) (:foreground "Yellow")) (t (:foreground "Blue"))) "\
Face used for menu items in `info'." :group 'Info-Plus :group 'faces)

(defface info-quoted-name '((((background dark)) (:inherit info-fixed-pitch :foreground "#6B6BFFFF2C2C")) (((background light)) (:inherit info-fixed-pitch :foreground "DarkViolet")) (t (:foreground "yellow"))) "\
Face for quoted names (‘...’ or `...') in `info'." :group 'Info-Plus :group 'faces)

(defface info-string '((((background dark)) (:inherit info-fixed-pitch :foreground "Orange")) (t (:inherit info-fixed-pitch :foreground "red3"))) "\
Face for strings (\"...\") in `info'." :group 'Info-Plus :group 'faces)

(defface info-isolated-quote '((((background dark)) (:inherit info-fixed-pitch :foreground "Green" :background "#46462C2C1111")) (t (:inherit info-fixed-pitch :foreground "Magenta" :background "SlateGray2"))) "\
Face for an isolated single-quote mark (') in `info'.
That is, one that is not part of `...'." :group 'Info-Plus :group 'faces)

(defface info-isolated-backquote '((((background dark)) (:inherit info-isolated-quote :background "Magenta")) (t (:inherit info-isolated-quote :background "PaleGreen1"))) "\
Face for an isolated backquote mark (`) in `info'.
That is, one that is not part of `...'." :group 'Info-Plus :group 'faces)

(defface info-title-1 '((((type tty pc) (class color) (background dark)) :foreground "yellow" :weight bold) (((type tty pc) (class color) (background light)) :foreground "brown" :weight bold)) "\
Face for info titles at level 1." :group 'info)

(defface info-title-2 '((((type tty pc) (class color)) :foreground "lightblue" :weight bold)) "\
Face for info titles at level 2." :group 'info)

(defface info-title-3 '((((type tty pc) (class color)) :weight bold)) "\
Face for info titles at level 3." :group 'info)

(defface info-title-4 '((((type tty pc) (class color)) :weight bold)) "\
Face for info titles at level 4." :group 'info)

(defface info-command-ref-item '((((background dark)) (:inherit info-reference-item :foreground "#7474FFFF7474")) (t (:inherit info-reference-item :foreground "Blue"))) "\
Face used for \"Command:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-constant-ref-item '((((background dark)) (:inherit info-reference-item :foreground "DeepPink")) (t (:inherit info-reference-item :foreground "DeepPink"))) "\
Face used for \"Constant:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-function-ref-item '((((background dark)) (:inherit info-reference-item :foreground "#4D4DDDDDDDDD")) (t (:inherit info-reference-item :foreground "DarkBlue"))) "\
Face used for \"Function:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-macro-ref-item '((((background dark)) (:inherit info-reference-item :foreground "Yellow")) (t (:inherit info-reference-item :foreground "DarkMagenta"))) "\
Face used for \"Macro:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-reference-item '((((background dark)) (:inherit info-fixed-pitch :background "gray12")) (t (:inherit info-fixed-pitch :background "gray88"))) "\
Face used for reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-special-form-ref-item '((((background dark)) (:inherit info-reference-item :foreground "Green")) (t (:inherit info-reference-item :foreground "Magenta"))) "\
Face used for \"Special Form:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-syntax-class-item '((((background dark)) (:inherit info-reference-item :foreground "#FFFF9B9BFFFF")) (t (:inherit info-reference-item :foreground "DarkGreen"))) "\
Face used for \"Syntax Class:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-user-option-ref-item '((t (:inherit info-reference-item :foreground "Red"))) "\
Face used for \"User Option:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defface info-variable-ref-item '((((background dark)) (:inherit info-reference-item :foreground "Orange")) (t (:inherit info-reference-item :foreground "FireBrick"))) "\
Face used for \"Variable:\" reference items in `info' manual." :group 'Info-Plus :group 'faces)

(defvar Info-apropos-manuals 'all "\
Manuals for `info-apropos' to search.
The default value is the symbol `all', which means search all known
manuals (Info files) on your system.

Any other value is a list of manual names (strings), and it means
search only those manuals.

Manual names are the Info \"file\" names you see in parens before the
current node name, in Info, for example, `emacs' and `elisp'.

NOTE:

 Searching many manuals can take a while.  Once searched for a given
 pattern the search hits are cached, however, so this is a one-time
 cost.

 And when you use command `info-apropos', if you use a non-positive
 prefix arg then you are prompted for the manuals to search, ignoring
 the value of `Info-apropos-manuals'.")

(custom-autoload 'Info-apropos-manuals "info+" nil)

(defvar Info-bookmark-use-only-node-not-file-flag t "\
Non-nil means an Info bookmark uses only the node name.
The recorded Info file name is ignored.  This means use only manuals
corresponding to the current Emacs session, regardless of the Emacs
version or platform used to record the bookmark.

A nil value means use the manuals whose absolute file names are
recorded in the bookmarks.  (But if the file doesn't exist or is
unreadable, then act as if the value is non-nil.)

A non-nil value means you can use the same bookmark with different
Emacs installations, including on different platforms.  A nil value
means that you can use a bookmark to consult the Info manual for a
different Emacs version from that of the current session.")

(custom-autoload 'Info-bookmark-use-only-node-not-file-flag "info+" t)

(defvar Info-breadcrumbs-in-header-flag nil "\
Non-nil means breadcrumbs are shown in the header line.")

(custom-autoload 'Info-breadcrumbs-in-header-flag "info+" t)

(defvar info-buffer-name-function 'info-buffer-name-function-default "\
Function to name Info buffer, or nil to use default buffer naming.
This is used by `info-manual+node-buffer-name-mode' and command
`info-rename-buffer'.

The function must accept the current Info file and node names as its
first two args, in that order.")

(custom-autoload 'info-buffer-name-function "info+" t)

(defvar Info-display-node-header-fn 'Info-display-node-default-header "\
Function to insert header by `Info-merge-subnodes'.")

(custom-autoload 'Info-display-node-header-fn "info+" t)

(defvar Info-emphasis-regexp "_\\(\\sw+\\)_" "\
Regexp to match text enclosed in underscore (`_') characters.
It must have at least one regexp group.  Regexp group #1 gets
highlighted with face `info-emphasis'.  The enclosing underscore chars
are made invisible.

The default value matches the following (enclosed in underscores):
word, punctuation, and whitespace characters, plus hyphens, with at
least one word character.  Hyphen is included explicitly because it
generally has symbol syntax in Info.

Some possible values include:

_\\(\\sw+\\)_		  (single words)

_\\(\\sw+\\(\\s-+\\sw+\\)*\\)_	  (single words, maybe whitespace-separated)

_\\([^_\\n]+\\)_		  (anything except underscore and newline chars)

_\\([^_]+\\)_		  (anything except underscore chars)

_\\(\\(\\s-\\|\\sw\\|\\s.\\)+\\)_ (word, punctuation, whitespace)

_\\(\\(\\sw\\(\\s-\\|\\sw\\|\\s.\\)*\\)\\|\\(\\(\\s-\\|\\sw\\|\\s.\\)\\sw*\\)\\)_

_\\(\\(\\sw\\(\\s-\\|\\sw\\|\\s.\\|\\s(\\|\\s)\\)*\\)\\|
\\(\\(\\s-\\|\\sw\\|\\s.\\|\\s(\\|\\s)\\)\\sw*\\)\\)_ (but joined, with no newline)
  (like previous, but also open and close delimiters, such as ()[])

Note that any value can be problematic for some Info text - see
`Info-fontify-emphasis-flag'.")

(custom-autoload 'Info-emphasis-regexp "info+" t)

(defvar Info-fit-frame-flag t "\
Non-nil means call `fit-frame' on Info buffer.")

(custom-autoload 'Info-fit-frame-flag "info+" t)

(defvar Info-fontify-angle-bracketed-flag t "\
Non-nil means `info' fontifies text within <...>.
A non-nil value has no effect unless `Info-fontify-quotations' is also
non-nil.

Note: This fontification can never be 100% reliable.  It aims to be
useful in most Info texts, but it can occasionally result in
fontification that you might not expect.  This is not a bug; it is
part of the design to be able to appropriately fontify a great variety
of texts.  Set this flag to nil if you do not find this fontification
useful.  You can use command `Info-toggle-fontify-angle-bracketed' to
toggle the option value.")

(custom-autoload 'Info-fontify-angle-bracketed-flag "info+" t)

(defvar Info-fontify-custom-delimited (list nil 39 39) "\
Non-nil means `info' fontifies text between delimiters you specify.
The text that is highlighted matches the value of variable
`info-custom-delimited-same-line-regexp'.

The option value is a list (ON/OFF BEG END), where:

 * Non-nil ON/OFF means fontifying is on, and nil means it is OFF.
 * BEG is the beginning delimiter character.
 * END is the ending delimiter character.

By default, this fontifying is off.  When turned on, by default the
text between apostrophes ('...') is fontified.

You can use command `Info-toggle-fontify-custom-delimited' to toggle
this fontifying on/off.  With a prefix arg, that command also prompts
you for the (new) delimiters to use.

You can use command `Info-define-custom-delimiting' to just do the
latter: set the delimiters.

For example, if you have an Info file that uses {...}, you can
highlight the enveloped ... text by setting the delimiters to chars {
and }, and turning the option on.")

(custom-autoload 'Info-fontify-custom-delimited "info+" t)

(defvar Info-fontify-emphasis-flag t "\
Non-nil means `info' fontifies text between underscores (`_').
The text that is highlighted matches the value of option
`Info-emphasis-regexp'.

Note 1:
This fontification hides the underscores that surround text that is
emphasized.  Because this fontification is not 100% reliable (see Note
2), in cases where it is inappropriate or unhelpful you might want to
see the hidden underscore characters.  You can toggle showing all
hidden text (not just hidden underscores) using `M-x visible-mode'.
See (info) `Help-Inv' for more information about this.

Note 2:
This fontification can never be 100% reliable.  It aims to be useful
in most Info texts, but it can occasionally result in fontification
that you might not expect.  This is not a bug; it is part of the
design to be able to appropriately fontify a great variety of texts.
Set this flag to nil if you do not find this fontification useful.
You can use command `Info-toggle-fontify-emphasis' to toggle the
option value.

Note 3:
If internal variable `info-fontify-emphasis' is `nil' then emphasis is
never highlighted, and this option has no effect.  This gives you a
way to turn off all matching of `Info-emphasis-regexp'.")

(custom-autoload 'Info-fontify-emphasis-flag "info+" t)

(defvar Info-fontify-extra-function nil "\
If non-nil then a function used to provide additional highlighting.
The function is passed no arguments.

The function is invoked by `Info-fontify-node', before fontifying
reference items (`Info-fontify-reference-items').  When it is called,
the value of point is `point-min' in the node to be fontified.")

(custom-autoload 'Info-fontify-extra-function "info+" t)

(defvar Info-fontify-glossary-words 'face-till-visit-+-mouseover-def "\
Non-nil means link first word occurrences in node to glossary entries.
Glossary terms of more than one word are not linked.

You can click `mouse-2' on the word, or use `RET' on it, to go to its
definition in the `Glossary' node of the current manual.

The link can optionally be shown, with face `info-glossary-word'.
Mouseover on the link can optionally show the glossary definition in a
tooltip (or in the echo area if `tooltip-mode' is disabled).

By default, a glossary link for a given word is shown (with face
`info-glossary-word') only until you follow a link for that word to
the glossary.  You can optionally show the links always, instead.

You can optionally hide glossary links always (not even show them
until visited).  You may feel that hiding such links reduces clutter.

If a link is hidden, it is still noticeable on mouseover: It's
highlighted using property `mouse-face', and a tooltip is shown for
it.

You can cycle or toggle the option value with command
`Info-cycle-fontify-glossary-words' or
`Info-toggle-fontify-glossary-words'.

See option `Info-glossary-fallbacks-alist' for the glossaries to look
in.

Note: This fontification can never be 100% reliable.  It aims to be
useful in most Info texts, but it can occasionally result in
fontification that you might not expect.  This is not a bug; it's part
of the design to be able to appropriately fontify a great variety of
texts.  Set this option to nil if you don't find this linking useful.")

(custom-autoload 'Info-fontify-glossary-words "info+" t)

(defvar Info-fontify-indented-text-chars nil "\
A number means fontify text indented at least that many chars.
The default value is nil, which does nothing - no such fontifying.

The indented text is fontified with face `info-indented-text', which
by default uses a fixed-pitch font.

This can be useful especially if minor mode
`Info-variable-pitch-text-mode' is enabled, by keeping indented code
block, ASCII-art diagrams etc. in a fixed-pitch font.

A value of 10 works well for the Elisp manual.  But be aware that no
number works well across multiple manuals, because indented text at
any level is not necessarily something you want to fontify.

This fontification is not done for nodes named `Top', in order to
avoid fontifying continuation lines of menu-item descriptions.")

(custom-autoload 'Info-fontify-indented-text-chars "info+" t)

(defvar Info-fontify-isolated-quote-flag t "\
Non-nil means `info' fontifies ' when not preceded by `....
A non-nil value has no effect unless `Info-fontify-quotations' is also
non-nil.

Note: This fontification can never be 100% reliable.  It aims to be
useful in most Info texts, but it can occasionally result in
fontification that you might not expect.  This is not a bug; it is
part of the design to be able to appropriately fontify a great variety
of texts.  Set this flag to nil if you do not find this fontification
useful.  You can use command `Info-toggle-fontify-isolated-quote' to
toggle the option value.")

(custom-autoload 'Info-fontify-isolated-quote-flag "info+" t)

(defvar Info-fontify-quotations t "\
Non-nil means `info' fontifies text between quotes.
This applies to double-quoted text (“...” or \"...\") and text
between single-quotes (‘...’ or \\=`...\\=').

A value of `multiline' means fontify all such quotations, even those
that span multiple lines.

Any other non-nil value (`t' is the default value) means highlight all
such quotations, but in the case of all except \"...\" (strings), do
so only if the quoted sexp is all on the same line.

Note: This fontification can never be 100% reliable.  It aims to be
useful in most Info texts, but it can occasionally result in
fontification that you might not expect.  This is not a bug; it is
part of the design to be able to appropriately fontify a great variety
of texts.  Set this flag to nil if you do not find this fontification
useful.  You can use command `Info-cycle-fontify-quotations' to
cycle the option value.")

(custom-autoload 'Info-fontify-quotations "info+" t)

(defvar Info-fontify-reference-items-flag t "\
Non-nil means `info' fontifies reference items such as \"Function:\".")

(custom-autoload 'Info-fontify-reference-items-flag "info+" t)

(defvar Info-glossary-fallbacks-alist '((semantic . semantic) (emacs . t)) "\
Alist of fallback manuals to use for glossary links.
Each element is of the form (GLOSSARY-MANUAL . MANUALS).  The glossary
of GLOSSARY-MANUAL is used to create glossary links for each manual in
MANUALS, if it has no glossary of its own.  If MANUALS is `t' then all
manuals use the glossary of GLOSSARY-MANUAL.

Put any alist entries that have `t' for MANUALS after all entries that
have an explicit list for MANUALS, so that the explicit lists are
handled before the `t' catch-alls.

This option has no effect if `Info-fontify-glossary-words' is nil.")

(custom-autoload 'Info-glossary-fallbacks-alist "info+" t)

(defvar Info-saved-nodes nil "\
List of Info node names you can visit using `\\<Info-mode-map>\\[Info-virtual-book]'.
Each node name is a string.  The node name can be absolute, including
a filename, such as \"(emacs)Basic\", or it can be relative, such as
\"Basic\".
You can customize this option, but you can also add node names to it
easily using `\\[Info-save-current-node]' (`Info-save-current-node').")

(custom-autoload 'Info-saved-nodes "info+" t)

(defvar Info-subtree-separator "\n* " "\
A string used to separate Info node descriptions.
Inserted by `Info-merge-subnodes' just before each node title.
Setting this to a string that includes a form-feed (^L), such as
\"\\f\\n* \", will cause a page break before each node description.

Use command `set-variable' to set this, quoting any control characters
you want to include, such as form-feed (^L) and newline (^J), with ^Q.
For example, type `^Q^L^Q^J* ' to set this to \"\\f\\n* \".")

(custom-autoload 'Info-subtree-separator "info+" t)

(defvar Info-toc-outline-no-redundancy-flag t "\
Non-nil means `Info-toc-outline' TOC has no redundancy.
If nil then section headings from the TOC manual are included, and 
nodes can be repeated because they are in more than one section.")

(custom-autoload 'Info-toc-outline-no-redundancy-flag "info+" t)
 (autoload 'Info-mouse-follow-nearest-node-new-window "info+")
 (autoload 'Info-follow-nearest-node-new-window "info+")
 (autoload 'Info-history-clear "info+")
 (autoload 'Info-make-node-unvisited "info+")
 (autoload 'Info-breadcrumbs-in-mode-line-mode "info+")
 (autoload 'Info-toggle-breadcrumbs-in-header "info+")
 (autoload 'Info-remap-default-face-to-variable-pitch "info+")
 (autoload 'Info-variable-pitch-text-mode "info+")
 (autoload 'info-manual+node-buffer-name-mode "info+")
 (autoload 'info-rename-buffer "info+")
 (autoload 'Info-define-custom-delimiting "info+")
 (autoload 'Info-toggle-fontify-custom-delimited "info+")
 (autoload 'Info-toggle-fontify-local-custom-delimited "info+")
 (autoload 'Info-toggle-fontify-all "info+")
 (autoload 'Info-toggle-fontify-angle-bracketed "info+")
 (autoload 'Info-toggle-fontify-emphasis "info+")
 (autoload 'Info-toggle-link-glossary-words "info+")
 (autoload 'Info-toggle-fontify-glossary-words "info+")
 (autoload 'Info-cycle-link-glossary-words "info+")
 (autoload 'Info-cycle-fontify-glossary-words "info+")
 (autoload 'Info-toggle-fontify-local-isolated-backquote "info+")
 (autoload 'Info-toggle-fontify-isolated-quote "info+")
 (autoload 'Info-toggle-fontify-local-isolated-quote "info+")
 (autoload 'Info-toggle-fontify-local-quotation "info+")
 (autoload 'Info-toggle-fontify-local-quotation-same-line "info+")
 (autoload 'Info-toggle-fontify-local-angle-bracketed "info+")
 (autoload 'Info-toggle-fontify-local-angle-bracketed-same-line "info+")
 (autoload 'Info-toggle-fontify-local-emphasis "info+")
 (autoload 'Info-toggle-fontify-reference-items "info+")
 (autoload 'Info-toggle-fontify-extra "info+")
 (autoload 'Info-cycle-fontify-quotations "info+")
 (autoload 'Info-toggle-fontify-visited-nodes "info+")
 (autoload 'Info-save-current-node "info+")
 (autoload 'Info-merge-subnodes "info+")
 (autoload 'Info-virtual-book "info+")
 (autoload 'Info-goto-node-web "info+")
 (autoload 'Info-url-for-node "info+")
 (autoload 'info-manual "info+")

(autoload 'Info-goto-emacs-command-node "info+" "\
Go to the Info node in the Emacs manual for command COMMAND.
The command is found by looking it up in Emacs manual's indexes,
or in another manual found via COMMAND's `info-file' property or
the variable `Info-file-list-for-emacs'.
COMMAND must be a symbol or string.

\(fn COMMAND &optional MSGP)" t nil)

(autoload 'Info-goto-emacs-key-command-node "info+" "\
Go to the node in the Emacs manual describing command bound to KEY.
KEY is a string.

Interactively, if the binding is `execute-extended-command', then a
command is read.

The command is found by looking it up in Emacs manual's indexes,
or in another manual's index found via COMMAND's `info-file' property
or the variable `Info-file-list-for-emacs'.

If key's command cannot be found by looking in indexes, then
`Info-search' is used to search for the key sequence in the info text.

\(fn KEY &optional MSGP)" t nil)
 (autoload 'Info-goto-glossary-definition "info+")
 (autoload 'Info-glossary "info+")
 (autoload 'Info-set-breadcrumbs-depth "info+")
 (autoload 'Info-search "info+")
 (autoload 'Info-mouse-follow-nearest-node "info+")
 (autoload 'Info-bookmark-jump "info+")
 (autoload 'info-display-manual "info+")

(register-definition-prefixes "info+" '("Info-" "info-" "outline-invisible-p"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; info+-autoloads.el ends here
