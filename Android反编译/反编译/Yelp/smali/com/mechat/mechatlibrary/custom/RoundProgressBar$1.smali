.class Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;
.super Ljava/lang/Object;
.source "RoundProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    :goto_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    #getter for: Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->isPlay:Z
    invoke-static {v1}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->access$0(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    #getter for: Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I
    invoke-static {v1}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->access$1(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)I

    move-result v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    #getter for: Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->max:I
    invoke-static {v2}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->access$2(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 240
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    #getter for: Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I
    invoke-static {v1}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->access$1(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->access$3(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;I)V

    .line 233
    iget-object v1, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/custom/RoundProgressBar$1;->this$0:Lcom/mechat/mechatlibrary/custom/RoundProgressBar;

    #getter for: Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->progress:I
    invoke-static {v2}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->access$1(Lcom/mechat/mechatlibrary/custom/RoundProgressBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/custom/RoundProgressBar;->setProgress(I)V

    .line 235
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
