.class Lcom/boohee/widgets/TurboLoadingFooter$2;
.super Ljava/lang/Object;
.source "TurboLoadingFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/widgets/TurboLoadingFooter;->setState(Lcom/boohee/widgets/TurboLoadingFooter$State;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/widgets/TurboLoadingFooter;

.field final synthetic val$state:Lcom/boohee/widgets/TurboLoadingFooter$State;


# direct methods
.method constructor <init>(Lcom/boohee/widgets/TurboLoadingFooter;Lcom/boohee/widgets/TurboLoadingFooter$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/widgets/TurboLoadingFooter$2;->this$0:Lcom/boohee/widgets/TurboLoadingFooter;

    iput-object p2, p0, Lcom/boohee/widgets/TurboLoadingFooter$2;->val$state:Lcom/boohee/widgets/TurboLoadingFooter$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter$2;->this$0:Lcom/boohee/widgets/TurboLoadingFooter;

    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter$2;->val$state:Lcom/boohee/widgets/TurboLoadingFooter$State;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/TurboLoadingFooter;->setState(Lcom/boohee/widgets/TurboLoadingFooter$State;)V

    .line 64
    return-void
.end method
