s/j_comments/j_comments_pl/g
s/c_comments/c_comments_pl/g
s/cpp_comments/cpp_comments_pl/g
s/com_loc/com_loc_pl/g
s/prev_com_line/prev_com_line_pl/g
s/comment_skip/comment_skip_pl/g
s/lexclear/lexclear_pl/g
s/nsemi/nsemi_pl/g
s/operands/operands_pl/g
s/operators/operators_pl/g
s/sloc/sloc_pl/g
s/store_operand/store_operand_pl/g
s/store_operator/store_operator_pl/g
s/yy_buffer_state/yy_buffer_state_pl/g
s/yy_load_buffer_state/yy_load_buffer_state_pl/g
s/yy_switch_to_buffer/yy_switch_to_buffer_pl/g
s/yyin/yyin_pl/g
s/yyleng/yyleng_pl/g
s/yylex/yylex_pl/g
s/yyout/yyout_pl/g
s/yyrestart/yyrestart_pl/g
s/yytext/yytext_pl/g
s/yywrap/yywrap_pl/g
s/string_literal/string_literal_pl/g
/#include <unistd.h>/d
s/isatty(/_isatty(/g
s/fileno(/_fileno(/g
s/read(/_read(/g
