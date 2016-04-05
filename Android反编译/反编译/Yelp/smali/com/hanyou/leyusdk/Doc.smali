.class public Lcom/hanyou/leyusdk/Doc;
.super Ljava/util/HashMap;
.source "Doc.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 68
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 75
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, output:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 79
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 87
    .end local p2
    :goto_0
    return-object p2

    .line 83
    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, output:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 85
    move-object v1, p2

    :cond_1
    move-object p2, v1

    .line 87
    goto :goto_0
.end method

.method public getB(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hanyou/leyusdk/Doc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, output:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getD(Ljava/lang/String;)Ljava/sql/Date;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 110
    if-nez p0, :cond_0

    move-object v0, v3

    .line 122
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hanyou/leyusdk/Doc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, output:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v0, v3

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    .line 118
    .local v0, d:Ljava/sql/Date;
    :try_start_0
    invoke-static {v2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v0, v3

    .line 120
    goto :goto_0
.end method

.method public getI(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .parameter "key"

    .prologue
    .line 162
    new-instance v1, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 163
    .local v1, integer:Ljava/lang/Integer;
    if-nez p0, :cond_0

    .line 176
    .end local v1           #integer:Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 166
    .restart local v1       #integer:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hanyou/leyusdk/Doc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, output:Ljava/lang/String;
    const/4 v3, 0x0

    .line 169
    .local v3, rtn:I
    if-eqz v2, :cond_1

    :try_start_0
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v4

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 173
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIn(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 144
    if-nez p0, :cond_1

    move v2, v3

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 147
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hanyou/leyusdk/Doc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, output:Ljava/lang/String;
    const/4 v2, 0x0

    .line 150
    .local v2, rtn:I
    if-eqz v1, :cond_0

    :try_start_0
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 154
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 157
    goto :goto_0
.end method

.method public getL(Ljava/lang/String;)J
    .locals 7
    .parameter "key"

    .prologue
    const-wide/16 v4, 0x0

    .line 126
    if-nez p0, :cond_1

    move-wide v2, v4

    .line 139
    :cond_0
    :goto_0
    return-wide v2

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hanyou/leyusdk/Doc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, output:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 132
    .local v2, rtn:J
    if-eqz v1, :cond_0

    :try_start_0
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v2, v4

    .line 139
    goto :goto_0
.end method

.method public getLD(Ljava/lang/String;)Ljava/sql/Date;
    .locals 4
    .parameter "key"

    .prologue
    .line 106
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lcom/hanyou/leyusdk/Doc;->getL(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public getO(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putB(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "b"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putI(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "i"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 60
    .local v0, integer:Ljava/lang/Integer;
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putIn(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "i"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putO(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
