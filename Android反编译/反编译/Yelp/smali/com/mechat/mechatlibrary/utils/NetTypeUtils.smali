.class public Lcom/mechat/mechatlibrary/utils/NetTypeUtils;
.super Ljava/lang/Object;
.source "NetTypeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkClass(I)Ljava/lang/String;
    .locals 1
    .parameter "networkType"

    .prologue
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 28
    const-string v0, "unkonwn"

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 24
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 26
    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
