.class public Lorg/eclipse/mat/snapshot/SnapshotFormat;
.super Ljava/lang/Object;
.source "SnapshotFormat.java"


# instance fields
.field private fileExtensions:[Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "fileExtensions"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lorg/eclipse/mat/snapshot/SnapshotFormat;->fileExtensions:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/SnapshotFormat;->name:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getFileExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotFormat;->fileExtensions:[Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotFormat;->name:Ljava/lang/String;

    return-object v0
.end method
