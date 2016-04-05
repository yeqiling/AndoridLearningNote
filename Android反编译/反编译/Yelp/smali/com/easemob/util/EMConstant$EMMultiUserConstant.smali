.class public Lcom/easemob/util/EMConstant$EMMultiUserConstant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/util/EMConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EMMultiUserConstant"
.end annotation


# static fields
.field public static final AFFILIATION_NONE:Ljava/lang/String; = "affiliation=\"none\""

.field public static final ITEM_DESTROY:Ljava/lang/String; = "destroy"

.field public static final ITEM_EXITMUC:Ljava/lang/String; = "<item affiliation=\"none\" role=\"none\">"

.field public static final MUC_ELEMENT_NAME:Ljava/lang/String; = "x"

.field public static final MUC_NS_USER:Ljava/lang/String; = "http://jabber.org/protocol/muc#user"

.field public static final ROLE_NONE:Ljava/lang/String; = "role=\"none\""

.field public static final ROLE_PARTICIPANT:Ljava/lang/String; = "role=\"participant\""

.field public static final ROOM_AFFILIATIONS:Ljava/lang/String; = "affiliations"

.field public static final ROOM_AFFILIATIONS_COUNT:Ljava/lang/String; = "affiliations_count"

.field public static final ROOM_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ROOM_ID:Ljava/lang/String; = "id"

.field public static final ROOM_MAX_USERS:Ljava/lang/String; = "maxusers"

.field public static final ROOM_MEMBER:Ljava/lang/String; = "member"

.field public static final ROOM_MEMBER_KICKED:Ljava/lang/String; = "307"

.field public static final ROOM_MEMBER_LEAVE:Ljava/lang/String; = "110"

.field public static final ROOM_NAME:Ljava/lang/String; = "name"

.field public static final ROOM_OWNER:Ljava/lang/String; = "owner"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
