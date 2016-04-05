.class abstract Lorg/eclipse/mat/hprof/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/hprof/AbstractParser$Constants;,
        Lorg/eclipse/mat/hprof/AbstractParser$Version;
    }
.end annotation


# instance fields
.field protected idSize:I

.field protected in:Lorg/eclipse/mat/parser/io/PositionInputStream;

.field protected version:Lorg/eclipse/mat/hprof/AbstractParser$Version;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static readVersion(Ljava/io/InputStream;)Lorg/eclipse/mat/hprof/AbstractParser$Version;
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v3, version:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 114
    .local v2, bytesRead:I
    :goto_0
    const/16 v4, 0x14

    if-ge v2, v4, :cond_3

    .line 115
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v1, v4

    .line 116
    .local v1, b:B
    add-int/lit8 v2, v2, 0x1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->byLabel(Ljava/lang/String;)Lorg/eclipse/mat/hprof/AbstractParser$Version;

    move-result-object v0

    .line 122
    .local v0, answer:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    if-nez v0, :cond_2

    .line 123
    const/16 v4, 0xd

    if-gt v2, v4, :cond_1

    .line 125
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->AbstractParser_Error_NotHeapDump:Lorg/eclipse/mat/hprof/Messages;

    iget-object v5, v5, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_1
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->AbstractParser_Error_UnknownHPROFVersion:Lorg/eclipse/mat/hprof/Messages;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_2
    sget-object v4, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK12BETA3:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    if-ne v0, v4, :cond_4

    .line 135
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->AbstractParser_Error_UnsupportedHPROFVersion:Lorg/eclipse/mat/hprof/Messages;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v0           #answer:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    .end local v1           #b:B
    :cond_3
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->AbstractParser_Error_InvalidHPROFHeader:Lorg/eclipse/mat/hprof/Messages;

    iget-object v5, v5, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .restart local v0       #answer:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    .restart local v1       #b:B
    :cond_4
    return-object v0
.end method


# virtual methods
.method protected determineDumpNumber()I
    .locals 2

    .prologue
    .line 209
    const-string v1, "MAT_HPROF_DUMP_NR"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, dumpNr:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method protected readID()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Lorg/eclipse/mat/hprof/AbstractParser;->idSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readLong()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readValue(Lorg/eclipse/mat/snapshot/ISnapshot;)Ljava/lang/Object;
    .locals 2
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v0

    .line 156
    .local v0, type:B
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/mat/hprof/AbstractParser;->readValue(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected readValue(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/lang/Object;
    .locals 7
    .parameter "snapshot"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    packed-switch p2, :pswitch_data_0

    .line 181
    :pswitch_0
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->AbstractParser_Error_IllegalType:Lorg/eclipse/mat/hprof/Messages;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/AbstractParser;->readID()J

    move-result-wide v0

    .line 163
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 179
    .end local v0           #id:J
    :goto_0
    return-object v2

    .line 163
    .restart local v0       #id:J
    :cond_0
    new-instance v2, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    invoke-direct {v2, p1, v0, v1}, Lorg/eclipse/mat/snapshot/model/ObjectReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;J)V

    goto :goto_0

    .line 165
    .end local v0           #id:J
    :pswitch_2
    iget-object v4, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 167
    :pswitch_3
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 171
    :pswitch_5
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    .line 175
    :pswitch_7
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 177
    :pswitch_8
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 179
    :pswitch_9
    iget-object v2, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected skipValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v0

    .line 187
    .local v0, type:B
    invoke-virtual {p0, v0}, Lorg/eclipse/mat/hprof/AbstractParser;->skipValue(I)V

    .line 188
    return-void
.end method

.method protected skipValue(I)V
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v1, p0, Lorg/eclipse/mat/hprof/AbstractParser;->idSize:I

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/AbstractParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    sget-object v1, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_0
.end method
