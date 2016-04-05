.class public interface abstract Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;
.super Ljava/lang/Object;
.source "IPrimitiveArray.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IArray;


# static fields
.field public static final COMPONENT_TYPE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ELEMENT_SIZE:[I

.field public static final SIGNATURES:[B

.field public static final TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 24
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->SIGNATURES:[B

    .line 32
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    aput-object v3, v0, v5

    aput-object v3, v0, v6

    aput-object v3, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "boolean[]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "char[]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "float[]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "double[]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "byte[]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "short[]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "int[]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "long[]"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/Class;

    aput-object v3, v0, v5

    aput-object v3, v0, v6

    aput-object v3, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->COMPONENT_TYPE:[Ljava/lang/Class;

    return-void

    .line 24
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0x5at
        0x43t
        0x46t
        0x44t
        0x42t
        0x53t
        0x49t
        0x4at
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public abstract getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract getValueArray()Ljava/lang/Object;
.end method

.method public abstract getValueArray(II)Ljava/lang/Object;
.end method

.method public abstract getValueAt(I)Ljava/lang/Object;
.end method
