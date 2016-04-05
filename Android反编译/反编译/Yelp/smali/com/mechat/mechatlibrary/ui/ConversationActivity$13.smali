.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x0

    .line 1099
    packed-switch p2, :pswitch_data_0

    .line 1128
    :goto_0
    return-void

    .line 1102
    :pswitch_0
    const-string v6, "ConversationActivity"

    const-string v7, "cccccccccccc  =  camera"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, camera:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/Utils;->getPicStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1106
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v7}, Lcom/mechat/mechatlibrary/utils/Utils;->getPicStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v3, imageFile:Ljava/io/File;
    const-string v6, "output"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1109
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->cameraPicPath:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$48(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 1110
    const-string v6, "ConversationActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cccccccccccc = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :try_start_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v7}, Lcom/mechat/mechatlibrary/utils/MResource;->getPhotoNotSupportToastString(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1119
    .end local v0           #camera:Landroid/content/Intent;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #imageFile:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :pswitch_1
    const-string v6, "ConversationActivity"

    const-string v7, "cccccccccccc  =  photo"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1122
    .local v5, picture:Landroid/content/Intent;
    :try_start_1
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1123
    :catch_1
    move-exception v1

    .line 1124
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$13;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {v7}, Lcom/mechat/mechatlibrary/utils/MResource;->getPhotoNotSupportToastString(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
