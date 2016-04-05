.class Lcom/boohee/record/WeightGalleryActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "WeightGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightGalleryActivity;->requestPhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightGalleryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightGalleryActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/boohee/record/WeightGalleryActivity$1;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 86
    iget-object v0, p0, Lcom/boohee/record/WeightGalleryActivity$1;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    const-string v1, "photos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/mine/WeightPreviewPhoto;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightGalleryActivity;->access$002(Lcom/boohee/record/WeightGalleryActivity;Ljava/util/List;)Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/boohee/record/WeightGalleryActivity$1;->this$0:Lcom/boohee/record/WeightGalleryActivity;

    #calls: Lcom/boohee/record/WeightGalleryActivity;->init()V
    invoke-static {v0}, Lcom/boohee/record/WeightGalleryActivity;->access$100(Lcom/boohee/record/WeightGalleryActivity;)V

    .line 88
    return-void
.end method
