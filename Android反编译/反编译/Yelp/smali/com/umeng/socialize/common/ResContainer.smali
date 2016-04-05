.class public abstract Lcom/umeng/socialize/common/ResContainer;
.super Ljava/lang/Object;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/common/ResContainer$ResType;,
        Lcom/umeng/socialize/common/ResContainer$SocializeResource;
    }
.end annotation


# static fields
.field private static mPackageName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    .line 103
    iput-object p1, p0, Lcom/umeng/socialize/common/ResContainer;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private static final getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 194
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".R$styleable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 197
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    :goto_1
    move-object v0, v1

    .line 209
    :goto_2
    return-object v0

    .line 197
    :cond_0
    aget-object v4, v2, v0

    .line 199
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/socialize/common/ResContainer$ResType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    if-gtz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u8d44\u6e90ID\u5931\u8d25:(packageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    invoke-static {p0, v0, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStyleableArrts(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    sput-object p0, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public declared-synchronized batch()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-object v0

    .line 157
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;

    .line 160
    iget-object v2, p0, Lcom/umeng/socialize/common/ResContainer;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mType:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 161
    iget-object v4, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mName:Ljava/lang/String;

    .line 160
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mId:I

    .line 162
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mIsCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
