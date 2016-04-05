.class Lcom/hanyou/leyusdk/LEYUApplication$4;
.super Ljava/util/HashMap;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hanyou/leyusdk/LEYUApplication;->passometer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDDLjava/lang/String;)V
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
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDDLjava/lang/String;)V
    .locals 3
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
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$4;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 328
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 330
    const-string v0, "action"

    const-string v1, "passometer"

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, "deviceid"

    invoke-virtual {p0, v0, p2}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "uid"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "uploadtime"

    invoke-virtual {p0, v0, p3}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "measuretime"

    invoke-virtual {p0, v0, p4}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "movementsteps"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "kcal"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "mileage"

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "fat"

    invoke-static {p9, p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "sport_type"

    invoke-virtual {p0, v0, p11}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "access_token"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$9()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
