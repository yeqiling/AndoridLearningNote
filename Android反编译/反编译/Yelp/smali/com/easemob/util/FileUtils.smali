.class public Lcom/easemob/util/FileUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/util/FileUtils$MyComparator;
    }
.end annotation


# static fields
.field public static fileTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "apk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "avi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "chm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dll"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "doc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "docx"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dos"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gif"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "html"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "movie"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dat"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mpe"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mpg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pdf"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "png"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ppt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pptx"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "rar"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "txt"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "wav"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "wma"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "wmv"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "xls"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "xlsx"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "zip"

    aput-object v2, v0, v1

    sput-object v0, Lcom/easemob/util/FileUtils;->fileTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/io/File;

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    array-length v5, v0

    if-lt v1, v5, :cond_1

    new-instance v0, Lcom/easemob/util/FileUtils$MyComparator;

    invoke-direct {v0}, Lcom/easemob/util/FileUtils$MyComparator;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u6ca1\u6709\u627e\u5230\u6253\u5f00\u6b64\u7c7b\u6587\u4ef6\u7684\u7a0b\u5e8f"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static openFile(Ljava/io/File;Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/easemob/util/FileUtils;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u6ca1\u6709\u627e\u5230\u6253\u5f00\u6b64\u7c7b\u6587\u4ef6\u7684\u7a0b\u5e8f"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static declared-synchronized readObjectFromFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v1, Lcom/easemob/util/FileUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveObjectToFile(Ljava/lang/Object;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v1, Lcom/easemob/util/FileUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
