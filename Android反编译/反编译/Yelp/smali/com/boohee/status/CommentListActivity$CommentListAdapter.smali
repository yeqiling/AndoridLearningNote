.class Lcom/boohee/status/CommentListActivity$CommentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/CommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/CommentListActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/status/CommentListActivity;Lcom/boohee/status/CommentListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/boohee/status/CommentListActivity$CommentListAdapter;-><init>(Lcom/boohee/status/CommentListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$700(Lcom/boohee/status/CommentListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$700(Lcom/boohee/status/CommentListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/boohee/model/status/Comment;
    .locals 1
    .parameter "position"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$700(Lcom/boohee/status/CommentListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Comment;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->getItem(I)Lcom/boohee/model/status/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 306
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, holder:Lcom/boohee/status/CommentListActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 313
    new-instance v2, Lcom/boohee/status/CommentListActivity$ViewHolder;

    .end local v2           #holder:Lcom/boohee/status/CommentListActivity$ViewHolder;
    invoke-direct {v2}, Lcom/boohee/status/CommentListActivity$ViewHolder;-><init>()V

    .line 314
    .restart local v2       #holder:Lcom/boohee/status/CommentListActivity$ViewHolder;
    iget-object v3, p0, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/boohee/status/CommentListActivity;->access$1900(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300aa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 315
    const v3, 0x7f0e01d8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    .line 316
    const v3, 0x7f0e02b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_nickname:Landroid/widget/TextView;

    .line 317
    const v3, 0x7f0e02b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_post_time:Landroid/widget/TextView;

    .line 318
    const v3, 0x7f0e02c0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_comment_text:Landroid/widget/TextView;

    .line 319
    const v3, 0x7f0e02c1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->iv_comment:Landroid/widget/ImageView;

    .line 320
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    :goto_0
    invoke-virtual {p0, p1}, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->getItem(I)Lcom/boohee/model/status/Comment;

    move-result-object v0

    .line 326
    .local v0, comment:Lcom/boohee/model/status/Comment;
    iget-object v3, p0, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v3}, Lcom/boohee/status/CommentListActivity;->access$2000(Lcom/boohee/status/CommentListActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/status/Comment;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v4, v4, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v5, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 328
    iget-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_nickname:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/boohee/model/status/Comment;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v4, v4, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, v0, Lcom/boohee/model/status/Comment;->created_at:Ljava/lang/String;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v3, v4}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 331
    .local v1, createdAt:Ljava/util/Date;
    iget-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_post_time:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v1}, Lcom/boohee/utils/DateKnife;->display(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_comment_text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/boohee/model/status/Comment;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->tv_comment_text:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/boohee/utility/TimeLineUtility;->addLinks(Landroid/widget/TextView;)V

    .line 335
    iget-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    new-instance v4, Lcom/boohee/status/CommentListActivity$CommentListAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/boohee/status/CommentListActivity$CommentListAdapter$1;-><init>(Lcom/boohee/status/CommentListActivity$CommentListAdapter;Lcom/boohee/model/status/Comment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v3, v2, Lcom/boohee/status/CommentListActivity$ViewHolder;->iv_comment:Landroid/widget/ImageView;

    new-instance v4, Lcom/boohee/status/CommentListActivity$CommentListAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/boohee/status/CommentListActivity$CommentListAdapter$2;-><init>(Lcom/boohee/status/CommentListActivity$CommentListAdapter;Lcom/boohee/model/status/Comment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    return-object p2

    .line 322
    .end local v0           #comment:Lcom/boohee/model/status/Comment;
    .end local v1           #createdAt:Ljava/util/Date;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/boohee/status/CommentListActivity$ViewHolder;
    check-cast v2, Lcom/boohee/status/CommentListActivity$ViewHolder;

    .restart local v2       #holder:Lcom/boohee/status/CommentListActivity$ViewHolder;
    goto :goto_0
.end method
