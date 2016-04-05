.class public Lcom/easemob/chat/EMGroupInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bd15dc03d310f2cL


# instance fields
.field private groupId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/easemob/chat/EMGroupInfo;->groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/EMGroupInfo;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupInfo;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupInfo;->groupName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method
