.class Lcom/hanyou/leyusdk/LEYUApplication$3$1;
.super Ljava/util/HashMap;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication$3;->run()V
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
.field final synthetic this$1:Lcom/hanyou/leyusdk/LEYUApplication$3;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication$3;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$3$1;->this$1:Lcom/hanyou/leyusdk/LEYUApplication$3;

    .line 309
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 311
    const-string v0, "action"

    const-string v1, "verify"

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$3$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "appid"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$3$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "appsecret"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$3$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
