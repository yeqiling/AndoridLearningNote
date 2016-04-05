.class Lcom/boohee/status/HotTagActivity$TagAdapter;
.super Landroid/widget/BaseAdapter;
.source "HotTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/HotTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/boohee/status/HotTagActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/status/HotTagActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->this$0:Lcom/boohee/status/HotTagActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->tags:Ljava/util/ArrayList;

    .line 115
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, holder:Lcom/boohee/status/HotTagActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 136
    new-instance v0, Lcom/boohee/status/HotTagActivity$ViewHolder;

    .end local v0           #holder:Lcom/boohee/status/HotTagActivity$ViewHolder;
    invoke-direct {v0}, Lcom/boohee/status/HotTagActivity$ViewHolder;-><init>()V

    .line 137
    .restart local v0       #holder:Lcom/boohee/status/HotTagActivity$ViewHolder;
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301d4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 138
    const v1, 0x7f0e0585

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/status/HotTagActivity$ViewHolder;->txt_tag_name:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    iget-object v2, v0, Lcom/boohee/status/HotTagActivity$ViewHolder;->txt_tag_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$TagAdapter;->tags:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-object p2

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/boohee/status/HotTagActivity$ViewHolder;
    check-cast v0, Lcom/boohee/status/HotTagActivity$ViewHolder;

    .restart local v0       #holder:Lcom/boohee/status/HotTagActivity$ViewHolder;
    goto :goto_0
.end method
