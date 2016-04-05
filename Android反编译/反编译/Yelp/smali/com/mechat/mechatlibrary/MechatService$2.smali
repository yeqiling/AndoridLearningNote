.class Lcom/mechat/mechatlibrary/MechatService$2;
.super Ljava/lang/Object;
.source "MechatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MechatService;->rePoll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MechatService;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MechatService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MechatService$2;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService$2;->this$0:Lcom/mechat/mechatlibrary/MechatService;

    #calls: Lcom/mechat/mechatlibrary/MechatService;->poll()V
    invoke-static {v0}, Lcom/mechat/mechatlibrary/MechatService;->access$0(Lcom/mechat/mechatlibrary/MechatService;)V

    .line 253
    return-void
.end method
