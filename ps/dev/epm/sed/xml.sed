s/j_comments/j_comments_xml/g
s/c_comments/c_comments_xml/g
s/cpp_comments/cpp_comments_xml/g
s/com_loc/com_loc_xml/g
s/prev_com_line/prev_com_line_xml/g
s/comment_skip/comment_skip_xml/g
s/lexclear/lexclear_xml/g
s/eat_eol/eat_eol_xml/g
s/nsemi/nsemi_xml/g
s/operands/operands_xml/g
s/operators/operators_xml/g
s/sloc/sloc_xml/g
s/slnat/slnat_xml/g
s/sltag/sltag_xml/g
s/slhtm/slhtm_xml/g
s/slscr/slscr_xml/g
s/store_operand/store_operand_xml/g
s/store_operator/store_operator_xml/g
s/yy_buffer_state/yy_buffer_state_xml/g
s/yy_load_buffer_state/yy_load_buffer_state_xml/g
s/yy_switch_to_buffer/yy_switch_to_buffer_xml/g
s/yyin/yyin_xml/g
s/yyleng/yyleng_xml/g
s/yylex/yylex_xml/g
s/yyout/yyout_xml/g
s/yyrestart/yyrestart_xml/g
s/yytext/yytext_xml/g
s/yywrap/yywrap_xml/g
/#include <unistd.h>/d
s/isatty(/_isatty(/g
s/fileno(/_fileno(/g
s/read(/_read(/g
