.class Lcom/hanyou/leyusdk/LEYUApplication$7;
.super Ljava/util/HashMap;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication;->bloodglucose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
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
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$7;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 398
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 400
    const-string v0, "action"

    const-string v1, "bloodglucose"

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v0, "deviceid"

    invoke-virtual {p0, v0, p2}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "uid"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v0, "uploadtime"

    invoke-virtual {p0, v0, p3}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v0, "measuretime"

    invoke-virtual {p0, v0, p4}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "bloodglucosevalue"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v0, "timetype"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v0, "access_token"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$9()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
