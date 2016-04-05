.class public Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;
.super Ljava/lang/Object;
.source "TimeLineUtility.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/utility/TimeLineUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PraiseClickListener"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field cb_praise:Landroid/widget/CheckBox;

.field post:Lcom/boohee/model/status/Post;

.field rl_punch_praise:Landroid/view/View;

.field tv_praise_plus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/boohee/model/status/Post;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0
    .parameter "activity"
    .parameter "post"
    .parameter "rl_punch_praise"
    .parameter "cb_praise"
    .parameter "tv_praise_plus"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->activity:Landroid/app/Activity;

    .line 141
    iput-object p2, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->post:Lcom/boohee/model/status/Post;

    .line 142
    iput-object p3, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->rl_punch_praise:Landroid/view/View;

    .line 143
    iput-object p4, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->cb_praise:Landroid/widget/CheckBox;

    .line 144
    iput-object p5, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->tv_praise_plus:Landroid/widget/TextView;

    .line 145
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->rl_punch_praise:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 150
    iget-object v0, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->post:Lcom/boohee/model/status/Post;

    iget-object v0, v0, Lcom/boohee/model/status/Post;->feedback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->post:Lcom/boohee/model/status/Post;

    iget v1, v1, Lcom/boohee/model/status/Post;->id:I

    new-instance v2, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener$1;

    iget-object v3, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener$1;-><init>(Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->deleteFeedbacks(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 190
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->post:Lcom/boohee/model/status/Post;

    iget v1, v1, Lcom/boohee/model/status/Post;->id:I

    new-instance v2, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener$2;

    iget-object v3, p0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;->activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener$2;-><init>(Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->putFeedbacks(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
