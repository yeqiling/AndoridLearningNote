.class public Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/loopj/android/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileWrapper"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "file"
    .parameter "contentType"

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    .line 565
    iput-object p2, p0, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 566
    return-void
.end method
