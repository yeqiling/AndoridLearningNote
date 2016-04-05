.class public Lme/nereo/multi_image_selector/MultiImageSelectorActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MultiImageSelectorActivity.java"

# interfaces
.implements Lme/nereo/multi_image_selector/MultiImageSelectorFragment$Callback;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final EXTRA_DEFAULT_SELECTED_LIST:Ljava/lang/String; = "default_list"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "select_result"

.field public static final EXTRA_SELECT_COUNT:Ljava/lang/String; = "max_select_count"

.field public static final EXTRA_SELECT_MODE:Ljava/lang/String; = "select_count_mode"

.field public static final EXTRA_SHOW_CAMERA:Ljava/lang/String; = "show_camera"

.field public static final MODE_MULTI:I = 0x1

.field public static final MODE_SINGLE:I


# instance fields
.field private mDefaultCount:I

.field private mSubmitButton:Landroid/widget/Button;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0, v1, p3}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->finish()V

    goto :goto_0
.end method

.method public onCameraShot(Ljava/io/File;)V
    .locals 3
    .parameter "imageFile"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "select_result"

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 159
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const-string v4, "MultiImageSelectorActivity"

    invoke-static {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v5, "MultiImageSelectorActivity#onCreate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v4, Lme/nereo/multi_image_selector/R$layout;->activity_default:I

    invoke-virtual {p0, v4}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "max_select_count"

    const/16 v5, 0x9

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    .line 59
    const-string v4, "select_count_mode"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, mode:I
    const-string v4, "show_camera"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 61
    .local v2, isShow:Z
    if-ne v3, v8, :cond_0

    const-string v4, "default_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    const-string v4, "default_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    .line 65
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "max_select_count"

    iget v5, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v4, "select_count_mode"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v4, "show_camera"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lme/nereo/multi_image_selector/R$id;->image_grid:I

    iget-object v6, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->newInstance(Landroid/os/Bundle;Ljava/util/ArrayList;)Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-result-object v6

    const-string v7, "MultiImageSelector"

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    sget v4, Lme/nereo/multi_image_selector/R$id;->btn_back:I

    invoke-virtual {p0, v4}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$1;

    invoke-direct {v5, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$1;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v4, Lme/nereo/multi_image_selector/R$id;->commit:I

    invoke-virtual {p0, v4}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    .line 85
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v5, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;

    invoke-direct {v5, p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity$2;-><init>(Lme/nereo/multi_image_selector/MultiImageSelectorActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 100
    :cond_1
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    :goto_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isShow:Z
    .end local v3           #mode:I
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "MultiImageSelectorActivity#onCreate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 103
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #isShow:Z
    .restart local v3       #mode:I
    :cond_2
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 178
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    :cond_0
    return-void
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 120
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 125
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    :cond_1
    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 135
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSingleImageSelected(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "select_result"

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 114
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 116
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public refreshSubmitBtnState()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/nereo/multi_image_selector/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
