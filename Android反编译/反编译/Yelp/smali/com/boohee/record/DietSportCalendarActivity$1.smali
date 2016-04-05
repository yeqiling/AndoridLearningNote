.class Lcom/boohee/record/DietSportCalendarActivity$1;
.super Ljava/lang/Object;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietSportCalendarActivity;->checkGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietSportCalendarActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietSportCalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/boohee/record/DietSportCalendarActivity$1;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity$1;->this$0:Lcom/boohee/record/DietSportCalendarActivity;

    #calls: Lcom/boohee/record/DietSportCalendarActivity;->showHighLight()V
    invoke-static {v0}, Lcom/boohee/record/DietSportCalendarActivity;->access$000(Lcom/boohee/record/DietSportCalendarActivity;)V

    .line 213
    return-void
.end method
