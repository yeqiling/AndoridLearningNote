.class Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupChangeEvent"
.end annotation


# instance fields
.field groupId:Ljava/lang/String;

.field groupName:Ljava/lang/String;

.field inviterUserName:Ljava/lang/String;

.field reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;

.field type:Lcom/easemob/chat/EMGroupManager$GroupEventType;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$GroupEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->type:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    iput-object p3, p0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    iput-object p5, p0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->inviterUserName:Ljava/lang/String;

    iput-object p6, p0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->reason:Ljava/lang/String;

    return-void
.end method
