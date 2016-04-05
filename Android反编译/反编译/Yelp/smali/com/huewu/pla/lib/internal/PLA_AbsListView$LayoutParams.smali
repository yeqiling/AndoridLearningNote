.class public Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "PLA_AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huewu/pla/lib/internal/PLA_AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public scrappedFromPosition:I

.field public viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2839
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2840
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "viewType"

    .prologue
    .line 2843
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2844
    iput p3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    .line 2845
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 2835
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2836
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 2848
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2849
    return-void
.end method
