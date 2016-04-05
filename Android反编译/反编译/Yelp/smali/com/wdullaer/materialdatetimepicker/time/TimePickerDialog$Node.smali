.class Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .parameter "legalKeys"

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    .line 1052
    return-void
.end method


# virtual methods
.method public addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    return-void
.end method

.method public canReach(I)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 1068
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1076
    :goto_0
    return-object v0

    .line 1071
    :cond_0
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1072
    .local v0, child:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #child:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_2
    move-object v0, v2

    .line 1076
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1059
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1061
    const/4 v1, 0x1

    .line 1064
    :goto_1
    return v1

    .line 1059
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
