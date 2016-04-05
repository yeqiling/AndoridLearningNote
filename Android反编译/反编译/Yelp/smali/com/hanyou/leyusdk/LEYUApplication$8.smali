.class Lcom/hanyou/leyusdk/LEYUApplication$8;
.super Ljava/util/HashMap;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication;->physical(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
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
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$8;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 418
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 420
    const-string v0, "action"

    const-string v1, "physical"

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v0, "deviceid"

    invoke-virtual {p0, v0, p2}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v0, "uid"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v0, "uploadtime"

    invoke-virtual {p0, v0, p3}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v0, "measuretime"

    invoke-virtual {p0, v0, p4}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "height"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "weight"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "waistline"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v0, "hipline"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v0, "bustline"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v0, "access_token"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$9()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
