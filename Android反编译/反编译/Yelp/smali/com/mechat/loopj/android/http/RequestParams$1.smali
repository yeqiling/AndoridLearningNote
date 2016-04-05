.class Lcom/mechat/loopj/android/http/RequestParams$1;
.super Ljava/util/HashMap;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/mechat/loopj/android/http/RequestParams$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
