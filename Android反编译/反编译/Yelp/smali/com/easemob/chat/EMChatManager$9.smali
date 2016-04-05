.class Lcom/easemob/chat/EMChatManager$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EncryptProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->getEncryptProvider()Lcom/easemob/chat/EncryptProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$9;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$9;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->cryptoUtils:Lcom/easemob/util/CryptoUtils;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$9(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/util/CryptoUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/util/CryptoUtils;->decrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$9;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->cryptoUtils:Lcom/easemob/util/CryptoUtils;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$9(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/util/CryptoUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/util/CryptoUtils;->encrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
