# Regular Expressions

This list is by no means complete, and you might encounter slight variations from language to language.
However, these 12 symbols are the most commonly used regular expressions in Python and can be used to find and collect almost any string type.

| Symbol | Meaning | Example | Example matches |
| ---- | ---- | ---- | ---- |
| * | Matches the preceding character, subexpression, or bracketed character, 0 or more times. | a*b* | aaaaaaaa, aaabbbbb, bbbbbb |
| + | Matches the preceding character, subexpression, or bracketed character, 1 or more times. | a+b+ | aaaaaaaab, aaabbbbb, abbbbbb |
| [] | Matches any character within the brackets (i.e., “Pick any one of these things”). | [A-Z]* | APPLE, CAPITALS, QWERTY |
| () | A grouped subexpression (these are evaluated first, in the “order of operations” of regular expressions). | (a*b)* | aaabaab, abaaab, ababaaaaab |
| {m, n} | Matches the preceding character, subexpression, or bracketed character between m and n times (inclusive). | a{2,3}b{2,3} | aabbb, aaabbb, aabb |
| [^] | Matches any single character that is not in the brackets. | [^A-Z]* | apple, lowercase, qwerty |
| \| | Matches any character, string of characters, or subexpression separated by the `I` (note that this is a vertical bar, or pipe, not a capital i). | b(a\|i\|e)d | bad, bid, bed |
| . | Matches any single character (including symbols, numbers, a space, etc.). | b.d | bad, bzd, b$d, b d |
| ^ | Indicates that a character or subexpression occurs at the beginning of a string. | ^a | apple, asdf, a |
| \ | An escape character (this allows you to use special characters as their literal meanings). | \\^ \\\| \\\\ | 	^ \| \\ |
| $ | Often used at the end of a regular expression, it means “match this up to the end of the string.” Without it, every regular expression has a de facto “.*” at the end of it, accepting strings where only the first part of the string matches. This can be thought of as analogous to the ^ symbol. | [A-Z]*[a-z]*$ | ABCabc, zzzyx, Bob |
| ?! | "Does not contain." This odd pairing of symbols, immediately preceding a character (or regular expression), indicates that that character should not be found in that specific place in the larger string. This can be tricky to use; after all, the character might be found in a different part of the string. If trying to eliminate a character entirely, use in conjunction with a ^ and $ at either end. | ^((?![A-Z]).)*$ | 	no-caps-here, $ymb0ls a4e f!ne |
