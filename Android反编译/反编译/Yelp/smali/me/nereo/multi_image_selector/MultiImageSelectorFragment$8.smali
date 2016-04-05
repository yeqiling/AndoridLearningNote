.class Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/nereo/multi_image_selector/MultiImageSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;


# direct methods
.method constructor <init>(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 12
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    .line 440
    if-nez p1, :cond_0

    .line 441
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DESC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return-object v0

    .line 445
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 446
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v0

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .local v0, cursorLoader:Landroid/support/v4/content/CursorLoader;
    goto :goto_0

    .end local v0           #cursorLoader:Landroid/support/v4/content/CursorLoader;
    :cond_1
    move-object v0, v4

    .line 453
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 18
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_2

    .line 459
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 460
    .local v2, count:I
    if-lez v2, :cond_2

    .line 461
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageList:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$900(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 464
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 494
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v17, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageList:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$900(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lme/nereo/multi_image_selector/adapter/ImageGridAdapter;->setData(Ljava/util/List;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->refreshSelectState()V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lme/nereo/multi_image_selector/adapter/FolderAdapter;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$100(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Lme/nereo/multi_image_selector/adapter/FolderAdapter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v17, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lme/nereo/multi_image_selector/adapter/FolderAdapter;->setData(Ljava/util/List;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z
    invoke-static/range {v16 .. v17}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1502(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;Z)Z

    .line 504
    .end local v2           #count:I
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    return-void

    .line 466
    .restart local v2       #count:I
    .restart local v4       #path:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 468
    .local v6, dateTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 469
    .local v8, originSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 470
    .local v10, id:Ljava/lang/String;
    new-instance v3, Lme/nereo/multi_image_selector/bean/Image;

    invoke-direct/range {v3 .. v10}, Lme/nereo/multi_image_selector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 471
    .local v3, image:Lme/nereo/multi_image_selector/bean/Image;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mImageList:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$900(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1500(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 474
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v14, imageFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 476
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 477
    .local v13, folderFile:Ljava/io/File;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 478
    new-instance v12, Lme/nereo/multi_image_selector/bean/Folder;

    invoke-direct {v12}, Lme/nereo/multi_image_selector/bean/Folder;-><init>()V

    .line 479
    .local v12, folder:Lme/nereo/multi_image_selector/bean/Folder;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lme/nereo/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    .line 480
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lme/nereo/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    .line 481
    iput-object v3, v12, Lme/nereo/multi_image_selector/bean/Folder;->cover:Lme/nereo/multi_image_selector/bean/Image;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 483
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v15, imageList:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Image;>;"
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iput-object v15, v12, Lme/nereo/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 489
    .end local v15           #imageList:Ljava/util/List;,"Ljava/util/List<Lme/nereo/multi_image_selector/bean/Image;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->this$0:Lme/nereo/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v17, v0

    #getter for: Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment;->access$1600(Lme/nereo/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lme/nereo/multi_image_selector/bean/Folder;

    .line 490
    .local v11, f:Lme/nereo/multi_image_selector/bean/Folder;
    iget-object v0, v11, Lme/nereo/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 429
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lme/nereo/multi_image_selector/MultiImageSelectorFragment$8;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
