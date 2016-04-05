.class public Lcom/boohee/utility/TimeLineUtility;
.super Ljava/lang/Object;
.source "TimeLineUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/utility/TimeLineUtility$SimplePostMenuListener;,
        Lcom/boohee/utility/TimeLineUtility$PostMenuListener;,
        Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static addFavorite(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V
    .locals 2
    .parameter "activity"
    .parameter "post"
    .parameter "postMenuListener"

    .prologue
    .line 333
    move-object v0, p0

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 334
    iget v0, p1, Lcom/boohee/model/status/Post;->id:I

    new-instance v1, Lcom/boohee/utility/TimeLineUtility$5;

    invoke-direct {v1, p0, p1, p2, p0}, Lcom/boohee/utility/TimeLineUtility$5;-><init>(Landroid/content/Context;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;Landroid/app/Activity;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/api/FavoriteApi;->addFavoritePost(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 351
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    .local v0, content:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utility/TimeLineUtility;->convertNormalStringToSpannableString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lcom/boohee/utility/LongClickableLinkMovementMethod;->getInstance()Lcom/boohee/utility/LongClickableLinkMovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    :cond_0
    return-void
.end method

.method private static convertNormalStringToSpannableString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 13
    .parameter "txt"

    .prologue
    .line 75
    const-string v10, "["

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "]"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, hackTxt:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    .line 81
    .local v8, value:Landroid/text/SpannableString;
    sget-object v10, Lcom/boohee/utility/TimeLinePatterns;->MENTION_URL:Ljava/util/regex/Pattern;

    const-string v11, "com.boohee.one://"

    invoke-static {v8, v10, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 82
    sget-object v10, Lcom/boohee/utility/TimeLinePatterns;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v11, "http://"

    invoke-static {v8, v10, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 83
    sget-object v10, Lcom/boohee/utility/TimeLinePatterns;->TOPIC_URL:Ljava/util/regex/Pattern;

    const-string v11, "com.boohee.one.topic://"

    invoke-static {v8, v10, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 85
    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v11

    const-class v12, Landroid/text/style/URLSpan;

    invoke-virtual {v8, v10, v11, v12}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 86
    .local v7, urlSpans:[Landroid/text/style/URLSpan;
    const/4 v9, 0x0

    .line 87
    .local v9, weiboSpan:Lcom/boohee/utility/MyURLSpan;
    move-object v0, v7

    .local v0, arr$:[Landroid/text/style/URLSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 88
    .local v6, urlSpan:Landroid/text/style/URLSpan;
    new-instance v9, Lcom/boohee/utility/MyURLSpan;

    .end local v9           #weiboSpan:Lcom/boohee/utility/MyURLSpan;
    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/boohee/utility/MyURLSpan;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v9       #weiboSpan:Lcom/boohee/utility/MyURLSpan;
    invoke-virtual {v8, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 90
    .local v5, start:I
    invoke-virtual {v8, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 91
    .local v1, end:I
    invoke-virtual {v8, v6}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 92
    const/16 v10, 0x21

    invoke-virtual {v8, v9, v5, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v0           #arr$:[Landroid/text/style/URLSpan;
    .end local v1           #end:I
    .end local v2           #hackTxt:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #start:I
    .end local v6           #urlSpan:Landroid/text/style/URLSpan;
    .end local v7           #urlSpans:[Landroid/text/style/URLSpan;
    .end local v8           #value:Landroid/text/SpannableString;
    .end local v9           #weiboSpan:Lcom/boohee/utility/MyURLSpan;
    :cond_0
    move-object v2, p0

    .restart local v2       #hackTxt:Ljava/lang/String;
    goto :goto_0

    .line 95
    .restart local v0       #arr$:[Landroid/text/style/URLSpan;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #urlSpans:[Landroid/text/style/URLSpan;
    .restart local v8       #value:Landroid/text/SpannableString;
    .restart local v9       #weiboSpan:Lcom/boohee/utility/MyURLSpan;
    :cond_1
    return-object v8
.end method

.method public static copyText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "post"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 105
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 106
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 108
    .local v2, manager:Landroid/content/ClipboardManager;
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 109
    .local v0, clipData:Landroid/content/ClipData;
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #clipData:Landroid/content/ClipData;
    .end local v2           #manager:Landroid/content/ClipboardManager;
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFavorite(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V
    .locals 2
    .parameter "activity"
    .parameter "post"
    .parameter "postMenuListener"

    .prologue
    .line 359
    move-object v0, p0

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 360
    iget v0, p1, Lcom/boohee/model/status/Post;->id:I

    new-instance v1, Lcom/boohee/utility/TimeLineUtility$6;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/boohee/utility/TimeLineUtility$6;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/api/FavoriteApi;->deleteFavoritePost(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 377
    return-void
.end method

.method public static initAttachment(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/status/AttachMent;)V
    .locals 5
    .parameter "activity"
    .parameter "layout"
    .parameter "tvAttachment"
    .parameter "ivAttachment"
    .parameter "attachMent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/high16 v2, 0x428c

    .line 426
    if-eqz p4, :cond_1

    .line 427
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p4, Lcom/boohee/model/status/AttachMent;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/status/AttachMent;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 431
    iget-object v0, p4, Lcom/boohee/model/status/AttachMent;->type:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 433
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 434
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 435
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 443
    :goto_0
    new-instance v0, Lcom/boohee/utility/TimeLineUtility$8;

    invoke-direct {v0, p4, p0}, Lcom/boohee/utility/TimeLineUtility$8;-><init>(Lcom/boohee/model/status/AttachMent;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :goto_1
    return-void

    .line 437
    :cond_0
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 438
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 439
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 470
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public static initCommentButton(Landroid/app/Activity;Landroid/view/View;Landroid/widget/TextView;Lcom/boohee/model/status/Post;I)V
    .locals 2
    .parameter "activity"
    .parameter "button"
    .parameter "tv_comment"
    .parameter "post"
    .parameter "position"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p3, Lcom/boohee/model/status/Post;->comment_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Lcom/boohee/utility/TimeLineUtility$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/boohee/utility/TimeLineUtility$1;-><init>(Landroid/app/Activity;Lcom/boohee/model/status/Post;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method public static repost(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V
    .locals 2
    .parameter "activity"
    .parameter "post"
    .parameter "postMenuListener"

    .prologue
    .line 287
    iget v0, p1, Lcom/boohee/model/status/Post;->id:I

    new-instance v1, Lcom/boohee/utility/TimeLineUtility$4;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/boohee/utility/TimeLineUtility$4;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V

    invoke-static {p0, v0, v1}, Lcom/boohee/api/OneApi;->repostPost(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 300
    return-void
.end method

.method public static setPlusAnimation(Landroid/widget/TextView;)V
    .locals 9
    .parameter "tv_praise_plus"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 194
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    .local v0, alpha:Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 197
    .local v1, scaleX:Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {p0, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 198
    .local v2, scaleY:Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v5, "translationY"

    new-array v6, v7, [F

    fill-array-data v6, :array_3

    invoke-static {p0, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 199
    .local v4, transY:Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    new-instance v3, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 202
    .local v3, set:Lcom/nineoldandroids/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v5, v8

    const/4 v6, 0x1

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 203
    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 204
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 205
    new-instance v5, Lcom/boohee/utility/TimeLineUtility$2;

    invoke-direct {v5, p0}, Lcom/boohee/utility/TimeLineUtility$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 227
    return-void

    .line 195
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    .line 196
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
    .end array-data

    .line 197
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
    .end array-data

    .line 198
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xc1t
    .end array-data
.end method

.method public static share(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/model/status/StatusUser;)V
    .locals 5
    .parameter "activity"
    .parameter "post"
    .parameter "fromUser"

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const-string v3, "share"

    const-string v4, "---> post is null"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v1, 0x0

    .line 309
    .local v1, desc:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://shop.boohee.com/store/pages/status_details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/boohee/model/status/Post;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, contentUrl:Ljava/lang/String;
    iget-object v3, p1, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    if-eqz v3, :cond_3

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/boohee/model/status/Post;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " From \u8584\u8377 @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v4, v4, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 318
    :cond_2
    const-string v2, "http://bohe-house.u.qiniudn.com/android/logo_256x256.png"

    .line 323
    .local v2, imageUrl:Ljava/lang/String;
    :goto_2
    iget-object v3, p1, Lcom/boohee/model/status/Post;->body:Ljava/lang/String;

    invoke-static {p0, v3, v1, v0, v2}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v2           #imageUrl:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_1

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/boohee/model/status/Post;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " From \u8584\u8377 @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 320
    :cond_4
    iget-object v3, p1, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/status/Photo;

    iget-object v2, v3, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    .restart local v2       #imageUrl:Ljava/lang/String;
    goto :goto_2
.end method

.method public static showCommentPopView(Landroid/app/Activity;Landroid/view/View;Lcom/boohee/model/status/Post;Lcom/boohee/model/status/StatusUser;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V
    .locals 5
    .parameter "activity"
    .parameter "view"
    .parameter "post"
    .parameter "statusUser"
    .parameter "postMenuListener"

    .prologue
    const/4 v4, 0x0

    .line 231
    if-nez p2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 235
    .local v0, popup:Landroid/widget/PopupMenu;
    iget-boolean v1, p2, Lcom/boohee/model/status/Post;->reposted:Z

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "\u5df2\u63a8\u8350"

    invoke-interface {v1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 241
    :goto_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "\u5206\u4eab"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 243
    iget-boolean v1, p2, Lcom/boohee/model/status/Post;->favorite:Z

    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "\u53d6\u6d88\u6536\u85cf"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 250
    :goto_2
    iget-boolean v1, p2, Lcom/boohee/model/status/Post;->own:Z

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "\u5220\u9664"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 254
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 255
    new-instance v1, Lcom/boohee/utility/TimeLineUtility$3;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/boohee/utility/TimeLineUtility$3;-><init>(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;Lcom/boohee/model/status/StatusUser;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "\u63a8\u8350"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "\u6536\u85cf"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public static showDeleteDialog(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V
    .locals 3
    .parameter "activity"
    .parameter "post"
    .parameter "postMenuListener"

    .prologue
    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/boohee/utility/TimeLineUtility$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/boohee/utility/TimeLineUtility$7;-><init>(Landroid/app/Activity;Lcom/boohee/model/status/Post;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 394
    return-void
.end method
