.class public Lcom/boohee/utility/BuilderIntent;
.super Landroid/content/Intent;
.source "BuilderIntent.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    iput-object p1, p0, Lcom/boohee/utility/BuilderIntent;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;I)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Z)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/boohee/utility/BuilderIntent;
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/boohee/utility/BuilderIntent;
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    return-object p0
.end method

.method public startActivity()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/utility/BuilderIntent;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method
