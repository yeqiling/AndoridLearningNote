.class public Lcom/easemob/chat/EMMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMMessage$ChatType;,
        Lcom/easemob/chat/EMMessage$Direct;,
        Lcom/easemob/chat/EMMessage$Status;,
        Lcom/easemob/chat/EMMessage$Type;
    }
.end annotation


# static fields
.field static final ATTR_ENCRYPTED:Ljava/lang/String; = "isencrypted"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "msg"


# instance fields
.field attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field body:Lcom/easemob/chat/MessageBody;

.field chatType:Lcom/easemob/chat/EMMessage$ChatType;

.field public direct:Lcom/easemob/chat/EMMessage$Direct;

.field private error:I

.field from:Lcom/easemob/chat/EMContact;

.field public isAcked:Z

.field public isDelivered:Z

.field isListened:Z

.field msgId:Ljava/lang/String;

.field msgTime:J

.field transient offline:Z

.field public transient progress:I

.field public status:Lcom/easemob/chat/EMMessage$Status;

.field to:Lcom/easemob/chat/EMContact;

.field type:Lcom/easemob/chat/EMMessage$Type;

.field transient unread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMMessage$1;

    invoke-direct {v0}, Lcom/easemob/chat/EMMessage$1;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iput-boolean v2, p0, Lcom/easemob/chat/EMMessage;->isAcked:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    iput v2, p0, Lcom/easemob/chat/EMMessage;->progress:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMMessage;->unread:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMMessage;->offline:Z

    iput v2, p0, Lcom/easemob/chat/EMMessage;->error:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMMessage$Type;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMMessage$Direct;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$Direct;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/easemob/chat/EMMessage;->msgTime:J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    :goto_1
    if-lt v2, v3, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    const-class v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    const-class v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    const-class v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/MessageBody;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMMessage$ChatType;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    iget-object v6, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    iget-object v5, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/easemob/chat/EMMessage$Type;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iput-boolean v1, p0, Lcom/easemob/chat/EMMessage;->isAcked:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    iput v1, p0, Lcom/easemob/chat/EMMessage;->progress:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMMessage;->unread:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMMessage;->offline:Z

    iput v1, p0, Lcom/easemob/chat/EMMessage;->error:I

    iput-object p1, p0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/EMMessage;->msgTime:J

    return-void
.end method

.method public static createReceiveMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;
    .locals 2

    new-instance v0, Lcom/easemob/chat/EMMessage;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMMessage;-><init>(Lcom/easemob/chat/EMMessage$Type;)V

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    return-object v0
.end method

.method public static createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;
    .locals 3

    new-instance v1, Lcom/easemob/chat/EMMessage;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMMessage;-><init>(Lcom/easemob/chat/EMMessage$Type;)V

    sget-object v0, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    iput-object v0, v1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMContactManager;->getContactByUserName(Ljava/lang/String;)Lcom/easemob/chat/EMContact;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    invoke-static {}, Lcom/easemob/chat/EMMessageUtils;->getUniqueMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMessage;->setMsgId(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public addBody(Lcom/easemob/chat/MessageBody;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Lcom/easemob/chat/MessageBody;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    return-object v0
.end method

.method public getBooleanAttribute(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getBooleanAttribute(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getChatType()Lcom/easemob/chat/EMMessage$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    return-object v0
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/EMMessage;->error:I

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIntAttribute(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntAttribute(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getJSONArrayAttribute(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not JSONArray type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONObjectAttribute(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not JSONObject type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTime()J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/EMMessage;->msgTime:J

    return-wide v0
.end method

.method public getStringAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/json/JSONArray;

    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not String type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/json/JSONArray;

    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Lcom/easemob/chat/EMMessage$Type;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAcked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMessage;->isAcked:Z

    return v0
.end method

.method public isDelivered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    return v0
.end method

.method public isListened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMessage;->isListened:Z

    return v0
.end method

.method public isUnread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMessage;->unread:Z

    return v0
.end method

.method public setAcked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMMessage;->isAcked:Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    return-void
.end method

.method public setDelivered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    return-void
.end method

.method setError(I)V
    .locals 0

    iput p1, p0, Lcom/easemob/chat/EMMessage;->error:I

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMContact;

    invoke-direct {v0}, Lcom/easemob/chat/EMContact;-><init>()V

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMContact;->setUsername(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    return-void
.end method

.method public setListened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMMessage;->isListened:Z

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setMsgTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/easemob/chat/EMMessage;->msgTime:J

    return-void
.end method

.method public setReceipt(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "msg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error wrong uesrname format:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMContact;

    invoke-direct {v0, p1}, Lcom/easemob/chat/EMContact;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Lcom/easemob/chat/EMContactManager;->getContactByUserName(Ljava/lang/String;)Lcom/easemob/chat/EMContact;

    move-result-object v0

    goto :goto_0
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMContact;

    invoke-direct {v0}, Lcom/easemob/chat/EMContact;-><init>()V

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMContact;->setUsername(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    return-void
.end method

.method public setType(Lcom/easemob/chat/EMMessage$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    return-void
.end method

.method public setUnread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMMessage;->unread:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg{from:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    iget-object v2, v2, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    iget-object v2, v2, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " body:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage$Direct;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/easemob/chat/EMMessage;->msgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessage;->chatType:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage$ChatType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
