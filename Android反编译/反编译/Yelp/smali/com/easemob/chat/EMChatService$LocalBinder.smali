.class public Lcom/easemob/chat/EMChatService$LocalBinder;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatService;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMChatService;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatService$LocalBinder;->this$0:Lcom/easemob/chat/EMChatService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/easemob/chat/EMChatService;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatService$LocalBinder;->this$0:Lcom/easemob/chat/EMChatService;

    return-object v0
.end method
