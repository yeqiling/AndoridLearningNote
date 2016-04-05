.class Lcom/boohee/status/ContactsActivity$ContactsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/ContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsAdapter"
.end annotation


# instance fields
.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private selectedList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/boohee/status/ContactsActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/status/ContactsActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 219
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    .line 222
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic access$900(Lcom/boohee/status/ContactsActivity$ContactsAdapter;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/boohee/model/status/StatusUser;
    .locals 1
    .parameter "position"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/StatusUser;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getItem(I)Lcom/boohee/model/status/StatusUser;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 240
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSelectedNickname()Ljava/lang/String;
    .locals 5

    .prologue
    .line 276
    const-string v2, ""

    .line 277
    .local v2, nickName:Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 292
    .end local v2           #nickName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 280
    .restart local v2       #nickName:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 283
    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 284
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/status/StatusUser;

    iget-object v4, v4, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, holder:Lcom/boohee/status/ContactsActivity$ViewHolder;
    if-nez p2, :cond_1

    .line 247
    new-instance v0, Lcom/boohee/status/ContactsActivity$ViewHolder;

    .end local v0           #holder:Lcom/boohee/status/ContactsActivity$ViewHolder;
    invoke-direct {v0}, Lcom/boohee/status/ContactsActivity$ViewHolder;-><init>()V

    .line 248
    .restart local v0       #holder:Lcom/boohee/status/ContactsActivity$ViewHolder;
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/status/ContactsActivity;->access$800(Lcom/boohee/status/ContactsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030127

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 249
    const v2, 0x7f0e02bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    .line 250
    const v2, 0x7f0e00d3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f0e0399

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->tv_description:Landroid/widget/TextView;

    .line 252
    const v2, 0x7f0e0096

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 253
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    :goto_0
    invoke-virtual {p0, p1}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getItem(I)Lcom/boohee/model/status/StatusUser;

    move-result-object v1

    .line 259
    .local v1, user:Lcom/boohee/model/status/StatusUser;
    iget-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->tv_description:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, v1, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 262
    iget-object v2, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/boohee/status/ContactsActivity$ContactsAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/boohee/status/ContactsActivity$ContactsAdapter$1;-><init>(Lcom/boohee/status/ContactsActivity$ContactsAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 269
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v3, v0, Lcom/boohee/status/ContactsActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->selectedList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    :cond_0
    return-object p2

    .line 255
    .end local v1           #user:Lcom/boohee/model/status/StatusUser;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/boohee/status/ContactsActivity$ViewHolder;
    check-cast v0, Lcom/boohee/status/ContactsActivity$ViewHolder;

    .restart local v0       #holder:Lcom/boohee/status/ContactsActivity$ViewHolder;
    goto :goto_0
.end method
