.class public final enum Llecho/lib/hellocharts/model/SelectedValue$SelectedType;
.super Ljava/lang/Enum;
.source "SelectedValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/model/SelectedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llecho/lib/hellocharts/model/SelectedValue$SelectedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

.field public static final enum IMG:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

.field public static final enum POINT:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

.field public static final enum POP:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v2}, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->POINT:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    const-string v1, "IMG"

    invoke-direct {v0, v1, v3}, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->IMG:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    const-string v1, "POP"

    invoke-direct {v0, v1, v4}, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->POP:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->POINT:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    aput-object v1, v0, v2

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->IMG:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    aput-object v1, v0, v3

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->POP:Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    aput-object v1, v0, v4

    sput-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->$VALUES:[Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llecho/lib/hellocharts/model/SelectedValue$SelectedType;
    .locals 1
    .parameter "name"

    .prologue
    .line 181
    const-class v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    return-object v0
.end method

.method public static values()[Llecho/lib/hellocharts/model/SelectedValue$SelectedType;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->$VALUES:[Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    invoke-virtual {v0}, [Llecho/lib/hellocharts/model/SelectedValue$SelectedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llecho/lib/hellocharts/model/SelectedValue$SelectedType;

    return-object v0
.end method
