.class Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ConversationActivity;->setListeners()V
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
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 527
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 575
    :cond_0
    :goto_0
    return v6

    .line 529
    :pswitch_0
    const-string v1, "ConversationActivity"

    const-string v2, "onTouch record press down"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$59(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f4ccccd

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordTimeUp:Z
    invoke-static {v1, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$34(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 536
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z
    invoke-static {v1, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$60(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 537
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isTouchUp:Z
    invoke-static {v1, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$61(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 538
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isRecordCount:Z
    invoke-static {v1, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$35(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 539
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidHoldViewPressY:F
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$62(Lcom/mechat/mechatlibrary/ui/ConversationActivity;F)V

    .line 541
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->pressTime:J
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$63(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->pressTime:J
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$63(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->pressTime:J
    invoke-static {v1, v2, v3}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$64(Lcom/mechat/mechatlibrary/ui/ConversationActivity;J)V

    .line 547
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->stopRecord(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$65(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceRecordManager:Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$26(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->currentVoiceId:Ljava/lang/String;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$23(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$VoiceRecordManager;->startRecord(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConversationActivity"

    const-string v2, "device api is too low"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voidHoldViewPressY:F
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$66(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    const/high16 v3, 0x4220

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z
    invoke-static {v1, v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$60(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 556
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isCancelRecord:Z
    invoke-static {v1, v4}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$60(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 559
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 563
    :pswitch_2
    const-string v1, "ConversationActivity"

    const-string v2, "onTouch record press up"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #setter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->isTouchUp:Z
    invoke-static {v1, v6}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$61(Lcom/mechat/mechatlibrary/ui/ConversationActivity;Z)V

    .line 566
    :try_start_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->voiceHoldView:Landroid/view/View;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$59(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    :goto_2
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->removeMessages(I)V

    .line 571
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->removeMessages(I)V

    .line 572
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ConversationActivity$5;->this$0:Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ConversationActivity;->myHandler:Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;
    invoke-static {v1}, Lcom/mechat/mechatlibrary/ui/ConversationActivity;->access$9(Lcom/mechat/mechatlibrary/ui/ConversationActivity;)Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;

    move-result-object v1

    const/16 v2, 0xa

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/mechat/mechatlibrary/ui/ConversationActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 567
    :catch_1
    move-exception v0

    .line 568
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ConversationActivity"

    const-string v2, "device api is too low"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
