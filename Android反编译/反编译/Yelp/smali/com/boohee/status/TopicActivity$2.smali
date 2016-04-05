.class Lcom/boohee/status/TopicActivity$2;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/TopicActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/TopicActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/TopicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/boohee/status/TopicActivity$2;->this$0:Lcom/boohee/status/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/boohee/status/TopicActivity$2;->this$0:Lcom/boohee/status/TopicActivity;

    #calls: Lcom/boohee/status/TopicActivity;->startImageLinkActivity()V
    invoke-static {v0}, Lcom/boohee/status/TopicActivity;->access$200(Lcom/boohee/status/TopicActivity;)V

    .line 189
    return-void
.end method
