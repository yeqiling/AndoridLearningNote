.class public Lcom/mechat/mechatlibrary/MCUserConfig$Contact;
.super Ljava/lang/Object;
.source "MCUserConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/mechatlibrary/MCUserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final QQ:Ljava/lang/String; = "QQ"

.field public static final TEL:Ljava/lang/String; = "tel"

.field public static final WEIBO:Ljava/lang/String; = "weibo"

.field public static final WEIXIN:Ljava/lang/String; = "weixin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
