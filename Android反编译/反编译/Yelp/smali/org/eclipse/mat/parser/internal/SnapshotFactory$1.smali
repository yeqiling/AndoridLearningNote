.class Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;
.super Ljava/lang/Object;
.source "SnapshotFactory.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/parser/internal/SnapshotFactory;->deleteIndexFiles(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/mat/parser/internal/SnapshotFactory;

.field final synthetic val$fragment:Ljava/lang/String;

.field final synthetic val$indexPattern:Ljava/util/regex/Pattern;

.field final synthetic val$logPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/internal/SnapshotFactory;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotFactory;

    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->val$fragment:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->val$indexPattern:Ljava/util/regex/Pattern;

    iput-object p4, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->val$logPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->val$fragment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->val$indexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;->val$logPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
