.class public Lcom/easemob/cloud/CloudFileMetaData;
.super Ljava/lang/Object;


# instance fields
.field lastModified:Ljava/lang/String;

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastModified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/cloud/CloudFileMetaData;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/cloud/CloudFileMetaData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/cloud/CloudFileMetaData;->size:Ljava/lang/String;

    return-object v0
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/CloudFileMetaData;->lastModified:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/CloudFileMetaData;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/CloudFileMetaData;->size:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/cloud/CloudFileMetaData;->name:Ljava/lang/String;

    return-object v0
.end method
