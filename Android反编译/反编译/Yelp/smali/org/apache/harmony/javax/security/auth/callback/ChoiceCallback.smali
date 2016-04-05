.class public Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;


# static fields
.field private static final serialVersionUID:J = -0x372c6568bccd79c7L


# instance fields
.field private choices:[Ljava/lang/String;

.field private defaultChoice:I

.field private multipleSelectionsAllowed:Z

.field private prompt:Ljava/lang/String;

.field private selections:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setPrompt(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setChoices([Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setDefaultChoice(I)V

    iput-boolean p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    return-void
.end method

.method private setChoices([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    return-void

    :cond_2
    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDefaultChoice(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1D"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->defaultChoice:I

    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->prompt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allowMultipleSelections()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultChoice()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->defaultChoice:I

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndexes()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    return-object v0
.end method

.method public setSelectedIndex(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setSelectedIndexes([I)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    return-void
.end method
