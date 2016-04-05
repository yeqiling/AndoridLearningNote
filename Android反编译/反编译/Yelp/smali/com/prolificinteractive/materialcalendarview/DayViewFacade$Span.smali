.class public Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;
.super Ljava/lang/Object;
.source "DayViewFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Span"
.end annotation


# instance fields
.field final span:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "span"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;->span:Ljava/lang/Object;

    .line 127
    return-void
.end method
