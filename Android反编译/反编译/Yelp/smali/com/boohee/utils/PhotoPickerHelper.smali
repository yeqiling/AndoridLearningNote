.class public Lcom/boohee/utils/PhotoPickerHelper;
.super Ljava/lang/Object;
.source "PhotoPickerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-static {p0, v0, v0, p1}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;ZII)V

    .line 79
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

    .line 89
    invoke-static {p0, v0, v0, p1, p2}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    .line 90
    return-void
.end method

.method public static show(Landroid/app/Activity;ZII)V
    .locals 1
    .parameter "activity"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter "requestCode"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    .line 31
    return-void
.end method

.method public static show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V
    .locals 0
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
    .line 43
    .local p3, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    .line 44
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-static {p0, v0, v0, p1}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/support/v4/app/Fragment;ZII)V

    .line 100
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

    .line 110
    invoke-static {p0, v0, v0, p1, p2}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V

    .line 111
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;ZII)V
    .locals 1
    .parameter "fragment"
    .parameter "needShowTakePhoto"
    .parameter "maxSelectNum"
    .parameter "requestCode"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V

    .line 56
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V
    .locals 0
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
    .line 68
    .local p3, selectPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->show(Landroid/support/v4/app/Fragment;ZILjava/util/ArrayList;I)V

    .line 69
    return-void
.end method
