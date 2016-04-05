.class public abstract Lorg/eclipse/mat/snapshot/model/GCRootInfo;
.super Ljava/lang/Object;
.source "GCRootInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/snapshot/model/GCRootInfo$Type;
    }
.end annotation


# static fields
.field private static final TYPE_STRING:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contextAddress:J

.field protected contextId:I

.field private objectAddress:J

.field protected objectId:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_Unkown:Lorg/eclipse/mat/hprof/Messages;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_SystemClass:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_JNILocal:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_JNIGlobal:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_ThreadBlock:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_BusyMonitor:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_JavaLocal:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_NativeStack:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_Thread:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_Finalizable:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_Unfinalized:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->GCRootInfo_Unreachable:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->TYPE_STRING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1
    .parameter "objectAddress"
    .parameter "contextAddress"
    .parameter "type"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->objectAddress:J

    .line 104
    iput-wide p3, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->contextAddress:J

    .line 105
    iput p5, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->type:I

    .line 106
    return-void
.end method

.method public static getTypeAsString(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->TYPE_STRING:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    sget-object v1, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->TYPE_STRING:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 132
    :goto_1
    return-object v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getTypeSetAsString([Lorg/eclipse/mat/snapshot/model/GCRootInfo;)Ljava/lang/String;
    .locals 10
    .parameter "roots"

    .prologue
    const/4 v9, 0x1

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, typeSet:I
    move-object v0, p0

    .local v0, arr$:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    .line 138
    .local v5, info:Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    invoke-virtual {v5}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getType()I

    move-result v8

    or-int/2addr v7, v8

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v5           #info:Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 143
    .local v2, first:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v8, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->TYPE_STRING:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 144
    shl-int v8, v9, v3

    and-int/2addr v8, v7

    if-eqz v8, :cond_1

    .line 145
    if-nez v2, :cond_2

    .line 146
    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :goto_2
    sget-object v8, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->TYPE_STRING:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_2
    shl-int v8, v9, v3

    if-ne v8, v7, :cond_3

    .line 151
    sget-object v8, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->TYPE_STRING:[Ljava/lang/String;

    aget-object v8, v8, v3

    .line 158
    :goto_3
    return-object v8

    .line 153
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method


# virtual methods
.method public getContextAddress()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->contextAddress:J

    return-wide v0
.end method

.method public getContextId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->contextId:I

    return v0
.end method

.method public getObjectAddress()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->objectAddress:J

    return-wide v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->objectId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->type:I

    return v0
.end method
