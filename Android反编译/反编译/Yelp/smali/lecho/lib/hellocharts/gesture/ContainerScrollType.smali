.class public final enum Llecho/lib/hellocharts/gesture/ContainerScrollType;
.super Ljava/lang/Enum;
.source "ContainerScrollType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llecho/lib/hellocharts/gesture/ContainerScrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field public static final enum HORIZONTAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field public static final enum VERTICAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Llecho/lib/hellocharts/gesture/ContainerScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    new-instance v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Llecho/lib/hellocharts/gesture/ContainerScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->VERTICAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Llecho/lib/hellocharts/gesture/ContainerScrollType;

    sget-object v1, Llecho/lib/hellocharts/gesture/ContainerScrollType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    aput-object v1, v0, v2

    sget-object v1, Llecho/lib/hellocharts/gesture/ContainerScrollType;->VERTICAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    aput-object v1, v0, v3

    sput-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->$VALUES:[Llecho/lib/hellocharts/gesture/ContainerScrollType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llecho/lib/hellocharts/gesture/ContainerScrollType;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;

    return-object v0
.end method

.method public static values()[Llecho/lib/hellocharts/gesture/ContainerScrollType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->$VALUES:[Llecho/lib/hellocharts/gesture/ContainerScrollType;

    invoke-virtual {v0}, [Llecho/lib/hellocharts/gesture/ContainerScrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llecho/lib/hellocharts/gesture/ContainerScrollType;

    return-object v0
.end method
