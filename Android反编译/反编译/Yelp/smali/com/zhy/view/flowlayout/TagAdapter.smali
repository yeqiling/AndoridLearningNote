.class public abstract Lcom/zhy/view/flowlayout/TagAdapter;
.super Ljava/lang/Object;
.source "TagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCheckedPosList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDataChangedListener:Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;

.field private mTagDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mCheckedPosList:Ljava/util/HashSet;

    .line 18
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    .line 19
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    .local p1, datas:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mCheckedPosList:Ljava/util/HashSet;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getPreCheckedList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mCheckedPosList:Ljava/util/HashSet;

    return-object v0
.end method

.method public abstract getView(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/view/flowlayout/FlowLayout;",
            "ITT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mOnDataChangedListener:Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;

    invoke-interface {v0}, Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;->onChanged()V

    .line 57
    return-void
.end method

.method setOnDataChangedListener(Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mOnDataChangedListener:Lcom/zhy/view/flowlayout/TagAdapter$OnDataChangedListener;

    .line 34
    return-void
.end method

.method public varargs setSelectedList([I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 38
    .local p0, this:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagAdapter;->mCheckedPosList:Ljava/util/HashSet;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagAdapter;->notifyDataChanged()V

    .line 41
    return-void
.end method
