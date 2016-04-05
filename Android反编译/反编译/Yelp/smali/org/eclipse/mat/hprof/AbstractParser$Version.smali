.class final enum Lorg/eclipse/mat/hprof/AbstractParser$Version;
.super Ljava/lang/Enum;
.source "AbstractParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/AbstractParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/mat/hprof/AbstractParser$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/mat/hprof/AbstractParser$Version;

.field public static final enum ANDROID103:Lorg/eclipse/mat/hprof/AbstractParser$Version;

.field public static final enum JDK12BETA3:Lorg/eclipse/mat/hprof/AbstractParser$Version;

.field public static final enum JDK12BETA4:Lorg/eclipse/mat/hprof/AbstractParser$Version;

.field public static final enum JDK6:Lorg/eclipse/mat/hprof/AbstractParser$Version;


# instance fields
.field private label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;

    const-string v1, "JDK12BETA3"

    const-string v2, "JAVA PROFILE 1.0"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/mat/hprof/AbstractParser$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK12BETA3:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 35
    new-instance v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;

    const-string v1, "JDK12BETA4"

    const-string v2, "JAVA PROFILE 1.0.1"

    invoke-direct {v0, v1, v4, v2}, Lorg/eclipse/mat/hprof/AbstractParser$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK12BETA4:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 36
    new-instance v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;

    const-string v1, "JDK6"

    const-string v2, "JAVA PROFILE 1.0.2"

    invoke-direct {v0, v1, v5, v2}, Lorg/eclipse/mat/hprof/AbstractParser$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK6:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 37
    new-instance v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;

    const-string v1, "ANDROID103"

    const-string v2, "JAVA PROFILE 1.0.3"

    invoke-direct {v0, v1, v6, v2}, Lorg/eclipse/mat/hprof/AbstractParser$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->ANDROID103:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/mat/hprof/AbstractParser$Version;

    sget-object v1, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK12BETA3:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK12BETA4:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/mat/hprof/AbstractParser$Version;->JDK6:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/mat/hprof/AbstractParser$Version;->ANDROID103:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    aput-object v1, v0, v6

    sput-object v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->$VALUES:[Lorg/eclipse/mat/hprof/AbstractParser$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->label:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static byLabel(Ljava/lang/String;)Lorg/eclipse/mat/hprof/AbstractParser$Version;
    .locals 5
    .parameter "label"

    .prologue
    .line 46
    invoke-static {}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->values()[Lorg/eclipse/mat/hprof/AbstractParser$Version;

    move-result-object v0

    .local v0, arr$:[Lorg/eclipse/mat/hprof/AbstractParser$Version;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 47
    .local v3, v:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    iget-object v4, v3, Lorg/eclipse/mat/hprof/AbstractParser$Version;->label:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    .end local v3           #v:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    :goto_1
    return-object v3

    .line 46
    .restart local v3       #v:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v3           #v:Lorg/eclipse/mat/hprof/AbstractParser$Version;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/mat/hprof/AbstractParser$Version;
    .locals 1
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/mat/hprof/AbstractParser$Version;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->$VALUES:[Lorg/eclipse/mat/hprof/AbstractParser$Version;

    invoke-virtual {v0}, [Lorg/eclipse/mat/hprof/AbstractParser$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/mat/hprof/AbstractParser$Version;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/mat/hprof/AbstractParser$Version;->label:Ljava/lang/String;

    return-object v0
.end method
