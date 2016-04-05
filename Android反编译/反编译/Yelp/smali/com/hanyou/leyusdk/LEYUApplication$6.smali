.class Lcom/hanyou/leyusdk/LEYUApplication$6;
.super Ljava/util/HashMap;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication;->bloodpressure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hanyou/leyusdk/LEYUApplication;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$6;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 375
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 377
    const-string v0, "action"

    const-string v1, "bloodpressure"

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v0, "deviceid"

    invoke-virtual {p0, v0, p2}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v0, "uid"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v0, "uploadtime"

    invoke-virtual {p0, v0, p3}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "measuretime"

    invoke-virtual {p0, v0, p4}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v0, "systolicpressure"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v0, "diastolicpressure"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v0, "pmean"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v0, "pulserate"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "is_day"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "access_token"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$9()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
