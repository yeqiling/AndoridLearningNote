.class public final enum Lorg/eclipse/mat/util/IProgressListener$Severity;
.super Ljava/lang/Enum;
.source "IProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/util/IProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/mat/util/IProgressListener$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/mat/util/IProgressListener$Severity;

.field public static final enum ERROR:Lorg/eclipse/mat/util/IProgressListener$Severity;

.field public static final enum INFO:Lorg/eclipse/mat/util/IProgressListener$Severity;

.field public static final enum WARNING:Lorg/eclipse/mat/util/IProgressListener$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lorg/eclipse/mat/util/IProgressListener$Severity;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/util/IProgressListener$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/mat/util/IProgressListener$Severity;->INFO:Lorg/eclipse/mat/util/IProgressListener$Severity;

    .line 137
    new-instance v0, Lorg/eclipse/mat/util/IProgressListener$Severity;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/mat/util/IProgressListener$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/mat/util/IProgressListener$Severity;->WARNING:Lorg/eclipse/mat/util/IProgressListener$Severity;

    .line 139
    new-instance v0, Lorg/eclipse/mat/util/IProgressListener$Severity;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/mat/util/IProgressListener$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/mat/util/IProgressListener$Severity;->ERROR:Lorg/eclipse/mat/util/IProgressListener$Severity;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/mat/util/IProgressListener$Severity;

    sget-object v1, Lorg/eclipse/mat/util/IProgressListener$Severity;->INFO:Lorg/eclipse/mat/util/IProgressListener$Severity;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/mat/util/IProgressListener$Severity;->WARNING:Lorg/eclipse/mat/util/IProgressListener$Severity;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/mat/util/IProgressListener$Severity;->ERROR:Lorg/eclipse/mat/util/IProgressListener$Severity;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/mat/util/IProgressListener$Severity;->$VALUES:[Lorg/eclipse/mat/util/IProgressListener$Severity;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/mat/util/IProgressListener$Severity;
    .locals 1
    .parameter "name"

    .prologue
    .line 133
    const-class v0, Lorg/eclipse/mat/util/IProgressListener$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/util/IProgressListener$Severity;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/mat/util/IProgressListener$Severity;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/eclipse/mat/util/IProgressListener$Severity;->$VALUES:[Lorg/eclipse/mat/util/IProgressListener$Severity;

    invoke-virtual {v0}, [Lorg/eclipse/mat/util/IProgressListener$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/mat/util/IProgressListener$Severity;

    return-object v0
.end method
