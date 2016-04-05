.class public Lcom/boohee/uchoice/AddressListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/uchoice/AddressListAdapter$onAddressUpdateListener;,
        Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field public addressUpdateListener:Lcom/boohee/uchoice/AddressListAdapter$onAddressUpdateListener;

.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/boohee/uchoice/AddressListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/AddressListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Address;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/boohee/uchoice/AddressListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/boohee/uchoice/AddressListAdapter;->mAddresses:Ljava/util/List;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/AddressListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListAdapter;->mAddresses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/AddressListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/AddressListAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/boohee/uchoice/AddressListAdapter;->deleteAddressById(II)V

    return-void
.end method

.method private deleteAddressById(II)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/boohee/uchoice/AddressListAdapter$1;

    iget-object v2, p0, Lcom/boohee/uchoice/AddressListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/uchoice/AddressListAdapter$1;-><init>(Lcom/boohee/uchoice/AddressListAdapter;Landroid/content/Context;I)V

    invoke-static {p2, v0, v1}, Lcom/boohee/api/ShopApi;->deleteShipmentAddress(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/boohee/uchoice/AddressListAdapter;->onBindViewHolder(Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;I)V
    .locals 4
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Address;

    .line 100
    .local v0, address:Lcom/boohee/model/Address;
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->txt_real_name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->txt_cellphone:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->txt_addres:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->txt_street:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->toggle_address:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/boohee/model/Address;->isDefault:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 105
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->ll_address_toggle:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/boohee/uchoice/AddressListAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/boohee/uchoice/AddressListAdapter$2;-><init>(Lcom/boohee/uchoice/AddressListAdapter;Lcom/boohee/model/Address;Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->ll_address_edit:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/boohee/uchoice/AddressListAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/boohee/uchoice/AddressListAdapter$3;-><init>(Lcom/boohee/uchoice/AddressListAdapter;Lcom/boohee/model/Address;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;->ll_address_delete:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/boohee/uchoice/AddressListAdapter$4;

    invoke-direct {v2, p0, p2, v0}, Lcom/boohee/uchoice/AddressListAdapter$4;-><init>(Lcom/boohee/uchoice/AddressListAdapter;ILcom/boohee/model/Address;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/boohee/uchoice/AddressListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;
    .locals 4
    .parameter "parent"
    .parameter "viewType"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301e8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/boohee/uchoice/AddressListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setAddressUpdateListener(Lcom/boohee/uchoice/AddressListAdapter$onAddressUpdateListener;)V
    .locals 0
    .parameter "addressUpdateListener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/boohee/uchoice/AddressListAdapter;->addressUpdateListener:Lcom/boohee/uchoice/AddressListAdapter$onAddressUpdateListener;

    .line 151
    return-void
.end method
