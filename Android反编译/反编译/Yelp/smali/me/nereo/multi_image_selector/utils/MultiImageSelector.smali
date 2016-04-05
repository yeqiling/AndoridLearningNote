.class public Lme/nereo/multi_image_selector/utils/MultiImageSelector;
.super Ljava/lang/Object;
.source "MultiImageSelector.java"


# static fields
.field private static mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInit()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u5148\u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method

.method private static createIntent(Landroid/content/Context;ZI)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->createIntent(Landroid/content/Context;ZILjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createIntent(Landroid/content/Context;ZILjava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p3, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 140
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->checkInit()V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_camera"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v2, "max_select_count"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    if-ne p2, v1, :cond_0

    const/4 v1, 0x0

    .line 149
    .local v1, selectedMode:I
    :cond_0
    const-string v2, "select_count_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 152
    const-string v2, "default_list"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    :cond_1
    return-object v0
.end method

.method public static getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    return-object v0
.end method

.method public static init(Lme/nereo/multi_image_selector/utils/MultiImageLoader;)V
    .locals 2
    .parameter "imageLoader"

    .prologue
    .line 29
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "imageLoader is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    sput-object p0, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    .line 31
    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-static {p0, v0, v0, p1}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/app/Activity;ZII)V

    .line 100
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "activity"
    .parameter
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 110
    invoke-static {p0, v0, v0, p1, p2}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    .line 111
    return-void
.end method

.method public static show(Landroid/app/Activity;ZII)V
    .locals 1
    .parameter "activity"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter "requestCode"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    .line 47
    return-void
.end method

.method public static show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V
    .locals 1
    .parameter "activity"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->createIntent(Landroid/content/Context;ZILjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static show(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    const/4 v0, 0x1

    .line 120
    invoke-static {p0, v0, v0, p1}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/support/v4/app/Fragment;ZII)V

    .line 121
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "fragment"
    .parameter
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v0, v0, p1, p2}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V

    .line 132
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;ZII)V
    .locals 1
    .parameter "fragment"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter "requestCode"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V

    .line 75
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V
    .locals 2
    .parameter "fragment"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->createIntent(Landroid/content/Context;ZILjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
