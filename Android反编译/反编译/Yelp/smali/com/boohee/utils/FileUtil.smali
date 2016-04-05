.class public Lcom/boohee/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final EXTERNAL_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/boohee/utils/FileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/FileUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "ctx"
    .parameter "dbName"

    .prologue
    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/boohee/utility/App;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, dbFilename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 35
    .local v0, assetsDB:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 37
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v8, Lcom/boohee/utility/App;->DB_PATH:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 44
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    const/high16 v8, 0x10

    :try_start_1
    new-array v1, v8, [B

    .line 46
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_3

    .line 47
    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    .end local v1           #buffer:[B
    .end local v2           #count:I
    :catch_0
    move-exception v5

    move-object v6, v7

    .line 51
    .end local v4           #dir:Ljava/io/File;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v5, e:Ljava/io/IOException;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    if-eqz v6, :cond_1

    .line 55
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_1
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 65
    .end local v5           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 49
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v4       #dir:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    sget-object v8, Lcom/boohee/utils/FileUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    if-eqz v7, :cond_4

    .line 55
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_4
    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v6, v7

    .line 63
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 61
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 62
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 64
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 61
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v4           #dir:Ljava/io/File;
    :catch_2
    move-exception v5

    .line 62
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 54
    :goto_3
    if-eqz v6, :cond_6

    .line 55
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_6
    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 63
    :cond_7
    :goto_4
    throw v8

    .line 61
    :catch_3
    move-exception v5

    .line 62
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 53
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #dir:Ljava/io/File;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 50
    .end local v4           #dir:Ljava/io/File;
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method public static delFile(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 250
    :cond_0
    return-void
.end method

.method public static deleteAllFilesOfDir(Ljava/io/File;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 264
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 265
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/boohee/utils/FileUtil;->deleteAllFilesOfDir(Ljava/io/File;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static downloadImage2Gallery(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "bmp"
    .parameter "fileName"

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, path:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/boohee/utils/FileUtil;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-static {p0, p1, p2}, Lcom/boohee/utils/FileUtil;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 135
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 10
    .parameter "file"

    .prologue
    const-wide/16 v8, 0x400

    .line 333
    const-wide/16 v4, 0x0

    .line 334
    .local v4, size:J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    .end local v4           #size:J
    :goto_0
    return-wide v4

    .line 336
    .restart local v4       #size:J
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v4, v6, v8

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 340
    .local v1, fileList:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 341
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/boohee/utils/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 340
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 344
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_2

    .line 347
    :cond_3
    const-wide/16 v6, 0x400

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v1           #fileList:[Ljava/io/File;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getPNGImagePath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "bmp"
    .parameter "fileName"

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, path:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/boohee/utils/FileUtil;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {p0, p1, p2}, Lcom/boohee/utils/FileUtil;->savePNGImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 157
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 161
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 277
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, perm:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readStrFromAPP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "dir"
    .parameter "fileName"

    .prologue
    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, fis:Ljava/io/FileInputStream;
    const-string v5, ""

    .line 310
    .local v5, str:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 314
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 315
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 316
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v3, v4

    .end local v0           #buffer:[B
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    move-object v6, v5

    .line 322
    .end local v2           #file:Ljava/io/File;
    .end local v5           #str:Ljava/lang/String;
    .local v6, str:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 318
    .end local v6           #str:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 319
    .local v1, exception:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v5

    .line 320
    .end local v5           #str:Ljava/lang/String;
    .restart local v6       #str:Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #str:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #str:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static saveCameraImage(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 8
    .parameter "btp"

    .prologue
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, fileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/boohee/utils/SDcard;->getImagesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v4, tempFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 76
    .local v2, fileOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .local v3, fileOut:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 83
    if-eqz v3, :cond_0

    .line 84
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 85
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 92
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-object v4

    .line 87
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 89
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-eqz v2, :cond_1

    .line 84
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 87
    :catch_2
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 83
    :goto_2
    if-eqz v2, :cond_2

    .line 84
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 89
    :cond_2
    throw v5

    .line 87
    :catch_3
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 78
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "context"
    .parameter "bmp"
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "Boohee"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v0, appDir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 177
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 180
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, p2, v8}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 189
    if-eqz v4, :cond_1

    .line 190
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 198
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-object v2

    .line 193
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v2, v5

    .line 195
    goto :goto_0

    .line 184
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v3, :cond_2

    .line 190
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move-object v2, v5

    .line 195
    goto :goto_0

    .line 193
    :catch_2
    move-exception v1

    .line 194
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v5

    .line 195
    goto :goto_0

    .line 188
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 189
    :goto_2
    if-eqz v3, :cond_3

    .line 190
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :cond_3
    throw v6

    .line 193
    :catch_3
    move-exception v1

    .line 194
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v5

    .line 195
    goto :goto_0

    .line 188
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 184
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static savePNGImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "context"
    .parameter "bmp"
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 211
    .local v1, cacheDir:Ljava/io/File;
    if-nez v1, :cond_1

    move-object v3, v6

    .line 236
    :cond_0
    :goto_0
    return-object v3

    .line 212
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v7, "Boohee"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v0, appDir:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 216
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 218
    :cond_3
    const/4 v4, 0x0

    .line 220
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 227
    if-eqz v5, :cond_0

    .line 228
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v6

    .line 233
    goto :goto_0

    .line 222
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 223
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-eqz v4, :cond_4

    .line 228
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v3, v6

    .line 233
    goto :goto_0

    .line 231
    :catch_2
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v6

    .line 233
    goto :goto_0

    .line 226
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 227
    :goto_2
    if-eqz v4, :cond_5

    .line 228
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 233
    :cond_5
    throw v7

    .line 231
    :catch_3
    move-exception v2

    .line 232
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v6

    .line 233
    goto :goto_0

    .line 226
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 222
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveStrToAPP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "contentString"
    .parameter "dir"
    .parameter "fileName"

    .prologue
    .line 285
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v3, saveFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 288
    .local v1, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    .local v2, outStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 294
    if-eqz v2, :cond_0

    .line 295
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 301
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #outStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 297
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 300
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #outStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 290
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    if-eqz v1, :cond_1

    .line 295
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 297
    :catch_2
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 294
    :goto_2
    if-eqz v1, :cond_2

    .line 295
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 299
    :cond_2
    :goto_3
    throw v4

    .line 297
    :catch_3
    move-exception v0

    .line 298
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 293
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 290
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #outStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveTempFile(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 6
    .parameter "btp"

    .prologue
    .line 99
    invoke-static {}, Lcom/boohee/utils/SDcard;->getTempImage()Ljava/io/File;

    move-result-object v3

    .line 100
    .local v3, tempFile:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, fileOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v1           #fileOut:Ljava/io/FileOutputStream;
    .local v2, fileOut:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 110
    if-eqz v2, :cond_0

    .line 111
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 114
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .restart local v1       #fileOut:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    if-eqz v1, :cond_0

    .line 111
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 110
    :goto_2
    if-eqz v1, :cond_1

    .line 111
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 116
    :cond_1
    throw v4

    .line 114
    :catch_3
    move-exception v0

    .line 115
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileOut:Ljava/io/FileOutputStream;
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .restart local v1       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 105
    .end local v1           #fileOut:Ljava/io/FileOutputStream;
    .restart local v2       #fileOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    .restart local v1       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
