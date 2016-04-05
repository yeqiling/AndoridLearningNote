.class public Lcom/easemob/chat/core/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/i$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "isblocked"

.field private static final B:Ljava/lang/String; = "max_users"

.field private static final C:Ljava/lang/String; = "chatroom"

.field private static final D:Ljava/lang/String; = "name"

.field private static final E:Ljava/lang/String; = "nick"

.field private static final F:Ljava/lang/String; = "desc"

.field private static final G:Ljava/lang/String; = "owner"

.field private static final H:Ljava/lang/String; = "members"

.field private static final I:Ljava/lang/String; = "members_size"

.field private static final J:Ljava/lang/String; = "isblocked"

.field private static final K:Ljava/lang/String; = "max_users"

.field private static final L:Ljava/lang/String; = "unreadcount"

.field private static final M:Ljava/lang/String; = "username"

.field private static final N:Ljava/lang/String; = "count"

.field private static final O:Ljava/lang/String; = "token"

.field private static final P:Ljava/lang/String; = "username"

.field private static final Q:Ljava/lang/String; = "value"

.field private static final R:Ljava/lang/String; = "saved_time"

.field private static final S:Ljava/lang/String; = "contact"

.field private static final T:Ljava/lang/String; = "jid"

.field private static final U:Ljava/lang/String; = "username"

.field private static final V:Ljava/lang/String; = "nick"

.field private static final W:Ljava/lang/String; = "black_list"

.field private static final X:Ljava/lang/String; = "username"

.field private static final Y:Ljava/lang/String; = "conversation_list"

.field private static final Z:Ljava/lang/String; = "username"

.field public static final a:Ljava/lang/String; = "_emmsg.db"

.field private static final aa:Ljava/lang/String; = "groupname"

.field private static final ab:Ljava/lang/String; = "ext"

.field private static final ac:Ljava/lang/String; = "conversation_type"

.field private static final ad:Ljava/lang/String; = "create table chat (_id integer primary key autoincrement, msgid text, msgtime integer, msgdir integer, isacked integer, isdelivered integer, status integer,participant text not null, islistened integer, msgbody text not null,msgtype integer, groupname text);"

.field private static final ae:Ljava/lang/String; = "create table emgroup (name text primary key, jid text not null, nick text not null, owner text not null, modifiedtime integer, ispublic integer, desc text, members_size integer, isblocked integer, members text, max_users integer);"

.field private static final af:Ljava/lang/String; = "create table chatroom (name text primary key, nick text, owner text, desc text, members_size integer, isblocked integer, members text, max_users integer);"

.field private static final ag:Ljava/lang/String; = "create table unreadcount (username text primary key, count integer);"

.field private static final ah:Ljava/lang/String; = "create table token (username text primary key, value text, saved_time integer);"

.field private static final ai:Ljava/lang/String; = "create table contact (jid text primary key, username text, nick );"

.field private static final aj:Ljava/lang/String; = "create table black_list (username text primary key);"

.field private static final ak:Ljava/lang/String; = "create table if not exists conversation_list (username text primary key, groupname text, ext text, conversation_type integer);"

.field private static al:Lcom/easemob/chat/core/i; = null

.field public static final b:Ljava/lang/String; = "msgbody"

.field public static final c:Ljava/lang/String; = "status"

.field private static d:Ljava/lang/String; = null

.field private static final e:I = 0xc

.field private static final f:Ljava/lang/String; = "_id"

.field private static final g:Ljava/lang/String; = "msgid"

.field private static final h:Ljava/lang/String; = "msgtime"

.field private static final i:Ljava/lang/String; = "msgdir"

.field private static final j:Ljava/lang/String; = "participant"

.field private static final k:Ljava/lang/String; = "groupname"

.field private static final l:Ljava/lang/String; = "isacked"

.field private static final m:Ljava/lang/String; = "isdelivered"

.field private static final n:Ljava/lang/String; = "islistened"

.field private static final o:Ljava/lang/String; = "msgtype"

.field private static final p:Ljava/lang/String; = "chat"

.field private static final q:Ljava/lang/String; = "emgroup"

.field private static final r:Ljava/lang/String; = "name"

.field private static final s:Ljava/lang/String; = "nick"

.field private static final t:Ljava/lang/String; = "desc"

.field private static final u:Ljava/lang/String; = "owner"

.field private static final v:Ljava/lang/String; = "members"

.field private static final w:Ljava/lang/String; = "members_size"

.field private static final x:Ljava/lang/String; = "modifiedtime"

.field private static final y:Ljava/lang/String; = "jid"

.field private static final z:Ljava/lang/String; = "ispublic"


# instance fields
.field private am:Z

.field private an:Ljava/lang/String;

.field private ao:Landroid/content/Context;

.field private ap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EMDBManager"

    sput-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/core/i;->am:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/core/i;->ap:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/easemob/chat/core/i;
    .locals 3

    const-class v1, Lcom/easemob/chat/core/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v2, "Please login first!"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please login first!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "groupname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "participant"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "groupname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/easemob/chat/core/i;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/i;->ap:Z

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/easemob/chat/core/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initDB : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    iget-object v0, v0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    iget-object v0, v0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->b()V

    :cond_1
    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/easemob/chat/core/i;

    invoke-direct {v0}, Lcom/easemob/chat/core/i;-><init>()V

    sput-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    :cond_2
    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    iput-object p0, v0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    sget-object v0, Lcom/easemob/chat/core/i;->al:Lcom/easemob/chat/core/i;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/easemob/chat/core/i;->am:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(I)Lcom/easemob/chat/EMConversation$EMConversationType;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "msgbody"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easemob/chat/MessageEncoder;->getMsgFromJson(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    const-string v3, "msgid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/easemob/chat/EMMessage;->setMsgId(Ljava/lang/String;)V

    const-string v3, "msgtime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/easemob/chat/EMMessage;->setMsgTime(J)V

    const-string v3, "msgdir"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Direct;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    iput-object v3, v2, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    :goto_0
    const-string v3, "status"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    iput-object v3, v2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    :cond_0
    :goto_1
    const-string v3, "isacked"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_5

    iput-boolean v1, v2, Lcom/easemob/chat/EMMessage;->isAcked:Z

    :goto_2
    const-string v3, "isdelivered"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_6

    iput-boolean v1, v2, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    :goto_3
    const-string v3, "islistened"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v0, :cond_7

    :goto_4
    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMMessage;->setListened(Z)V

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMMessage;->setUnread(Z)V

    const-string v0, "groupname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    :goto_5
    return-object v2

    :cond_1
    sget-object v3, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    iput-object v3, v2, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v3, v2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v3, v2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v3, v2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    goto :goto_1

    :cond_5
    iput-boolean v0, v2, Lcom/easemob/chat/EMMessage;->isAcked:Z

    goto :goto_2

    :cond_6
    iput-boolean v0, v2, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    const-string v1, "msgtype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v2, v3}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage$ChatType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_9

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    :cond_9
    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMMessage;->setTo(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private c(Landroid/database/Cursor;)Lcom/easemob/chat/EMGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/easemob/chat/EMGroup;

    invoke-direct {v3, v0}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    const-string v0, "jid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setEid(Ljava/lang/String;)V

    const-string v0, "nick"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setOwner(Ljava/lang/String;)V

    const-string v0, "modifiedtime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/easemob/chat/EMGroup;->setLastModifiedTime(J)V

    const-string v0, "ispublic"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setIsPublic(Z)V

    const-string v0, "desc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setDescription(Ljava/lang/String;)V

    const-string v0, "members_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setAffiliationsCount(I)V

    const-string v0, "isblocked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/easemob/chat/EMGroup;->setMsgBlocked(Z)V

    const-string v0, "max_users"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->setMaxUsers(I)V

    const-string v0, "members"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private d(Landroid/database/Cursor;)Lcom/easemob/chat/EMChatRoom;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatRoom;

    invoke-direct {v1, v0}, Lcom/easemob/chat/EMChatRoom;-><init>(Ljava/lang/String;)V

    const-string v0, "nick"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->setName(Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->setOwner(Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->setDescription(Ljava/lang/String;)V

    const-string v0, "members_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->setAffiliationsCount(I)V

    const-string v0, "max_users"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->setMaxUsers(I)V

    const-string v0, "members"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatRoom;->addMember(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 4

    iget-object v1, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :try_start_0
    const-string v3, "drop table chat"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    const-string v3, "drop table emgroup"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    const-string v3, "drop table unreadcount"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_2
    const-string v3, "drop table token"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_3
    const-string v3, "drop table contact"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_4

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_4
    const-string v3, "drop table black_list"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_5
    const-string v3, "drop table conversation_list"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_6

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_6
    const-string v3, "create table chat (_id integer primary key autoincrement, msgid text, msgtime integer, msgdir integer, isacked integer, isdelivered integer, status integer,participant text not null, islistened integer, msgbody text not null,msgtype integer, groupname text);"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_7
    const-string v3, "create table emgroup (name text primary key, jid text not null, nick text not null, owner text not null, modifiedtime integer, ispublic integer, desc text, members_size integer, isblocked integer, members text, max_users integer);"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_8

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_8
    const-string v3, "create table unreadcount (username text primary key, count integer);"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_9

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_9
    const-string v3, "create table token (username text primary key, value text, saved_time integer);"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_a

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_a
    const-string v3, "create table contact (jid text primary key, username text, nick );"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_b
    const-string v3, "create table black_list (username text primary key);"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_c

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_c
    const-string v1, "create table if not exists conversation_list (username text primary key, groupname text, ext text, conversation_type integer);"

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_d

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_0
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_c

    :cond_d
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d
.end method

.method private n()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;)J
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v3, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p3, :cond_4

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where participant = ? and msgbody like \'%"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%\' and groupname is null limit 5000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    aput-object p3, v3, v5

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_1
    return-wide v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v3, :cond_d

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where groupname = ? and msgbody like \'%"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%\' limit 5000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    aput-object p3, v3, v5

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_3

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from chat where msgbody like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' limit 5000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_5

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_5
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v1, "msgbody"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/MessageEncoder;->getMsgFromJson(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_8

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_9

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_a

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_b

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_c

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_7

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Z)J
    .locals 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p2, :cond_0

    :try_start_0
    const-string v1, "participant"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select count(*) as msgCount from chat where "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide v0, v2

    :goto_2
    return-wide v0

    :cond_0
    const-string v1, "groupname"

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto :goto_2
.end method

.method a(ZLjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/easemob/chat/EMConversation$EMConversationType;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "groupname"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select conversation_type from conversation_list where "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    instance-of v2, p3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-direct {p0, v1}, Lcom/easemob/chat/core/i;->b(I)Lcom/easemob/chat/EMConversation$EMConversationType;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "username"

    goto :goto_0

    :cond_1
    check-cast p3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p3, v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public a(I)Ljava/util/Hashtable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMConversation;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "select * from chat where groupname is null and participant in (select username from conversation_list) order by participant, msgtime desc"

    const-string v4, "select * from chat where groupname is not null and groupname in (select groupname from conversation_list) order by groupname, msgtime desc"

    const/4 v5, 0x2

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v12, v5

    const/4 v2, 0x1

    aput-object v4, v12, v2

    array-length v13, v12

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-lt v4, v13, :cond_0

    :goto_1
    return-object v11

    :cond_0
    aget-object v5, v12, v4

    const/4 v6, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    sget-object v5, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/easemob/chat/core/i;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_7

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, p1

    if-ge v10, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    :cond_5
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v8, :cond_6

    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v10, Lcom/easemob/chat/EMConversation;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v10, v8, v9, v5, v6}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    invoke-virtual {v11, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    if-eqz v8, :cond_8

    :try_start_1
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_8
    if-eqz v8, :cond_9

    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v14, Lcom/easemob/chat/EMConversation;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v14, v8, v9, v5, v6}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    invoke-virtual {v11, v8, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "groupname"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_5
    const-wide/16 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v3}, Lcom/easemob/chat/core/i;->a(ZLjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/easemob/chat/EMConversation$EMConversationType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    move-object v8, v10

    goto :goto_4

    :cond_a
    const/4 v5, 0x1

    goto :goto_5
.end method

.method public a(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/chat/EMMessage$Type;",
            "Lcom/easemob/chat/EMMessage$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p4, :cond_7

    invoke-virtual {p0, p4}, Lcom/easemob/chat/core/i;->c(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v4

    if-eqz p3, :cond_5

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where participant = ? and msgbody like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' and groupname is null and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ? order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v3, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq p2, v3, :cond_3

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v3, :cond_15

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where groupname = ? and msgbody like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ? order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v3, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where msgbody like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ? order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_6

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    if-eqz p3, :cond_c

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where participant = ? and msgbody like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' and groupname is null order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_8

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq p2, v3, :cond_a

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v3, :cond_15

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where groupname = ? and msgbody like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_b

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from chat where msgbody like \'%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc limit ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_d

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, v0}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_11

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_11
    :try_start_1
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_12

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_13

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_13
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_14
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_15
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMMessage$ChatType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v2, :cond_1

    const-string v2, "select * from chat where participant = ? and groupname = null order by msgtime"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "select * from chat where groupname = ? order by msgtime"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_2

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load msgs size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for username:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v2, "can\'t find message for startMsgId"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "select * from chat where groupname = ? and msgtime < ? order by msgtime desc limit ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "select * from chat where groupname = ? order by msgtime desc limit ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_3

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_3
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load msgs size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for groupid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Lcom/easemob/chat/EMChatRoom;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nick"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "owner"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getMembers()Ljava/util/List;

    move-result-object v2

    const-string v3, "members"

    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "members_size"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getAffiliationsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "max_users"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getMaxUsers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "chatroom"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save chatroom to db room name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/easemob/chat/EMGroup;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "jid"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getEid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nick"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "owner"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v2

    const-string v3, "members"

    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "members_size"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getAffiliationsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "modifiedtime"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getLastModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "ispublic"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->isPublic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "isblocked"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->isMsgBlocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "max_users"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getMaxUsers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "emgroup"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save group to db groupname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "unreadcount"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "chat"

    const-string v2, "msgid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p2, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    if-eq p2, v2, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {p2}, Lcom/easemob/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v2

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v3, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add converstion with:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v1, "username"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert into conversation_list ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "conversation_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " select ?,? where not exists (select null from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "conversation_list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p1, v3, v2

    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "groupname"

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/easemob/chat/core/p$b;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {p2}, Lcom/easemob/chat/core/p$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "saved_time"

    invoke-virtual {p2}, Lcom/easemob/chat/core/p$b;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "token"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "msgid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ext"

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-virtual {v2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string v1, "username"

    :goto_0
    const-string v3, "conversation_list"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " = ?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string v1, "groupname"

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    iget-boolean v3, p0, Lcom/easemob/chat/core/i;->am:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/easemob/chat/EMMessage;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v3, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "msgid"

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msgtime"

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "isacked"

    iget-boolean v4, p1, Lcom/easemob/chat/EMMessage;->isAcked:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "isdelivered"

    iget-boolean v4, p1, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "msgdir"

    iget-object v4, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Direct;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "msgtype"

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$ChatType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    sget-object v4, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    :cond_0
    const-string v4, "status"

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "participant"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "msgbody"

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/easemob/chat/MessageEncoder;->getJSONMsg(Lcom/easemob/chat/EMMessage;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v4

    sget-object v5, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v4, v5, :cond_3

    const-string v4, "groupname"

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    move-object v5, v3

    :goto_1
    const-string v7, "islistened"

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->isListened()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "bot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "chat"

    const/4 v7, 0x0

    instance-of v8, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_5

    invoke-virtual {v0, v4, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v4, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v0, v4, :cond_6

    move v0, v1

    :goto_4
    if-nez v0, :cond_7

    move-object v0, v3

    :goto_5
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/easemob/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Lcom/easemob/chat/EMConversation$EMConversationType;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)V

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v3, "save msg to db"

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_6
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v4, "groupname"

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v4, v7, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save msg has error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    :try_start_1
    const-string v0, "groupname"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v2, "can\'t find message for startMsgId"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "select * from chat where participant = ? and msgtime < ? and groupname is null order by msgtime desc limit ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "select * from chat where participant = ? and groupname is null order by msgtime desc limit ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_3

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_3
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load msgs size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for participate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/i$a;->closeDB()V

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v1, "close msg db"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/easemob/chat/EMChatRoom;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "nick"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "owner"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getMembers()Ljava/util/List;

    move-result-object v2

    const-string v3, "members"

    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "members_size"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getAffiliationsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "max_users"

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getMaxUsers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "chatroom"

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updated chatroom name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Lcom/easemob/chat/EMGroup;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "jid"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getEid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nick"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "owner"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v2

    const-string v3, "members"

    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "members_size"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getAffiliationsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "modifiedtime"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getLastModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "ispublic"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->isPublic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "isblocked"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->isMsgBlocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "max_users"

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getMaxUsers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "emgroup"

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updated group groupname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v1, ""

    const-string v5, "select participant, groupname from chat where msgid = ? limit 1"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v5, v1

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :goto_1
    return-void

    :cond_0
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v1, "chat"

    const-string v5, "msgid = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    instance-of v7, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_3

    invoke-virtual {v2, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_3
    sget-object v2, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete msg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v4

    move-object v4, v1

    goto :goto_2

    :cond_3
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add contact to db:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "jid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "username"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contact"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, "participant"

    move-object v2, v1

    :goto_0
    if-nez p2, :cond_1

    const-string v1, "username"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete from conversation_list where "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not exists (select null from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "chat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    const-string v1, "groupname"

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v1, "groupname"

    goto :goto_1

    :cond_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/easemob/chat/core/i;->am:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/i;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b(Lcom/easemob/chat/EMMessage;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v3, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/easemob/chat/MessageEncoder;->getJSONMsg(Lcom/easemob/chat/EMMessage;Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "msgbody"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "chat"

    const-string v7, "msgid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    instance-of v9, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_0

    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "update msg:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messagebody:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v6, v3, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from chat where msgid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load msg msgId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public c()Ljava/util/Hashtable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMConversation;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "SELECT *, MAX(msgtime), COUNT(*) AS msgCount FROM chat AS A  where A.groupname is null and A.participant in (select username from conversation_list) GROUP BY participant "

    const-string v6, "SELECT *, MAX(msgtime), COUNT(*) AS msgCount FROM chat AS A  where A.groupname is not null and A.groupname in (select groupname from conversation_list) GROUP BY groupname "

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v9, v7

    const/4 v2, 0x1

    aput-object v6, v9, v2

    array-length v10, v9

    move v7, v4

    :goto_0
    if-lt v7, v10, :cond_0

    :goto_1
    return-object v8

    :cond_0
    aget-object v6, v9, v7

    const/4 v11, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v6, v2

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v6, v11}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/easemob/chat/core/i;->b(Landroid/database/Cursor;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    const-string v11, "msgCount"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "groupname"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/easemob/chat/core/i;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v3}, Lcom/easemob/chat/core/i;->a(ZLjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/easemob/chat/EMConversation$EMConversationType;

    move-result-object v2

    new-instance v15, Lcom/easemob/chat/EMConversation;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v15, v14, v11, v2, v12}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    invoke-virtual {v8, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_4
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, "username"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from conversation_list where "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "groupname"

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized c(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_9

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    move v6, v3

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x3e8

    if-lt v6, v1, :cond_5

    :cond_3
    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "select msgid from chat where msgid in "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    invoke-virtual {v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v4, v1

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move v1, v5

    :goto_6
    if-nez v1, :cond_0

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMMessage;

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    :goto_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v1

    goto :goto_4

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ", \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\'"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_7

    :cond_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v4, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v4, v1

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMMessage;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    :cond_a
    :goto_8
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/16 v1, 0x12c

    if-lt v4, v1, :cond_c

    :cond_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMMessage;

    if-eqz v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    move v1, v3

    goto/16 :goto_6
.end method

.method public c(Lcom/easemob/chat/EMMessage;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iput-boolean v2, p1, Lcom/easemob/chat/EMMessage;->isAcked:Z

    iput-boolean v2, p1, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/easemob/chat/EMMessage;->setMsgId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v2, "import msg error: msg from is null"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    const-string v2, "import msg error: msg to is null"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select distinct username from conversation_list where groupname is null"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load participants size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "chat"

    const-string v2, "participant = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete chat msgs with:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "delete from black_list"

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "username"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "black_list"

    const/4 v6, 0x0

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    invoke-virtual {v2, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v5, v6, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v3, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v3, "select count(*) from conversation_list where username = ? and groupname is null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "select count(*) from conversation_list where username is null and groupname = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "has converstion:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isGroup:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from emgroup where name  =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->c(Landroid/database/Cursor;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2
    sget-object v2, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "db load group:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select distinct groupname from conversation_list where username is null"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load msg groups size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "isacked"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "chat"

    const-string v3, "msgid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public f(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from chatroom where name  =?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/easemob/chat/core/i;->d(Landroid/database/Cursor;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2
    sget-object v2, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "db load chatroom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from emgroup"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/easemob/chat/core/i;->c(Landroid/database/Cursor;)Lcom/easemob/chat/EMGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load groups from db:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public f(Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "islistened"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "chat"

    const-string v3, "msgid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isListened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public g()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from chatroom"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/easemob/chat/core/i;->d(Landroid/database/Cursor;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load chatrooms from db:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public declared-synchronized g(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "emgroup"

    const-string v2, "name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete group with:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "isdelivered"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "chat"

    const-string v3, "msgid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delivered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public h(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p2, :cond_0

    :try_start_0
    const-string v1, "username"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select ext from conversation_list where "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    const-string v1, "groupname"

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_2
.end method

.method public h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from unreadcount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public h(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "chatroom"

    const-string v2, "name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete chatroom with:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMContact;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from contact"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/easemob/chat/EMContact;

    invoke-direct {v4, v2, v3}, Lcom/easemob/chat/EMContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loaded contacts from db:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public i(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "chat"

    const-string v2, "groupname = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v1, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete group messages with:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public j(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select count from unreadcount where username = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "count"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    :goto_2
    return v0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select * from black_list"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "username"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_1
.end method

.method public k(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "unreadcount"

    const-string v2, "username = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/i;->ap:Z

    return v0
.end method

.method public l(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from token where username = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    new-instance v0, Lcom/easemob/chat/core/p$b;

    invoke-direct {v0}, Lcom/easemob/chat/core/p$b;-><init>()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "saved_time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/easemob/chat/core/p$b;->a(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;

    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/easemob/chat/core/p$b;->a(J)Lcom/easemob/chat/core/p$b;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public m(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contact"

    const-string v2, "jid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/easemob/chat/core/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete contact jid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public n(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "black_list"

    const-string v2, "username = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/i;->ao:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/i;->an:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easemob/chat/core/i$a;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/easemob/chat/core/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "black_list"

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
