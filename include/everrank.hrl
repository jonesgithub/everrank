-include("src/everlib/include/ever_log.hrl").


-record(t, {snsId, data = <<>>}).
-record(t_fd, {snsId, friendList = []}).
-record(t_fdl, {snsId, data = <<>>, update = false}).
-record(t_fw, {snsId, followList = []}).
-record(t_rn, {snsId, relationList = []}).

-define(PROTOCOL_INIT, <<"101">>).
-define(PROTOCOL_UPDATE_FRIEND, <<"102">>).
-define(PROTOCOL_UPDATE_USERDATA, <<"103">>).
-define(PROTOCOL_GET_USERDATA, <<"104">>).
-define(PROTOCOL_GET_FRIEND_USERDATA, <<"105">>).

-define(FIELD_SNSTYPE, <<"201">>).
-define(FIELD_SNSID, <<"202">>).
-define(FIELD_FRIENDLIST, <<"203">>).
-define(FIELD_USERDATA, <<"204">>).
-define(FIELD_CMD, <<"205">>).
-define(FIELD_RES, <<"206">>).

-define(SNSTYPE_SINAWEIBO, 301).
-define(SNSTYPE_TENCENTWEIBO, 302).
-define(SNSTYPE_RENREN, 303).
-define(SNSTYPE_LIST, [?SNSTYPE_SINAWEIBO, ?SNSTYPE_TENCENTWEIBO, ?SNSTYPE_RENREN]).

-define(CMD_ADD, 401).
-define(CMD_DEL, 402).
-define(CMD_ALL, 403).
-define(CMD_NEW, 404).
-define(CMD_LIST_UPDATE_FRIEND, [?CMD_ADD, ?CMD_DEL]).
-define(CMD_LIST_GET_FRIEND_DATA, [?CMD_ALL, ?CMD_NEW]).

-define(RES_SUCC, <<0>>).
-define(RES_ERROR_SYSTEM, <<1>>).
-define(RES_ERROR_METHOD, <<2>>).
-define(RES_ERROR_BODY, <<3>>).
-define(RES_ERROR_CONTENT, <<4>>).
-define(RES_ERROR_PROTOCOL, <<5>>).
-define(RES_ERROR_FIELD, <<6>>).
-define(RES_ERROR_SNSTYPE, <<7>>).
-define(RES_ERROR_JSON, <<8>>).

