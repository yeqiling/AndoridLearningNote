.class public Lcom/boohee/uchoice/AddressEditActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddressEditActivity.java"


# static fields
.field public static final ADDRESS_TYPE_ADD:I = 0x1

.field public static final ADDRESS_TYPE_UPDATE:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field private address:Lcom/boohee/model/Address;

.field private addressDetailsValue:Landroid/widget/EditText;

.field private address_city:Ljava/lang/String;

.field private address_district:Ljava/lang/String;

.field private address_province:Ljava/lang/String;

.field private address_type:I

.field private phoneNumValue:Landroid/widget/EditText;

.field private postCodeValue:Landroid/widget/EditText;

.field private realNameValue:Landroid/widget/EditText;

.field private txt_address_regions:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/boohee/uchoice/AddressEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/AddressEditActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/AddressEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/AddressEditActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_province:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/uchoice/AddressEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_province:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/AddressEditActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/uchoice/AddressEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/AddressEditActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_district:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/uchoice/AddressEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_district:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/uchoice/AddressEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->txt_address_regions:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/uchoice/AddressEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private addAddress(Lcom/boohee/model/Address;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 153
    new-instance v0, Lcom/boohee/uchoice/AddressEditActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/AddressEditActivity$2;-><init>(Lcom/boohee/uchoice/AddressEditActivity;Landroid/content/Context;)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/ShopApi;->createShipmentAddress(Lcom/boohee/model/Address;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 165
    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f0e05a0

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->realNameValue:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f0e05a2

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->phoneNumValue:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0e05a7

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->postCodeValue:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f0e05a5

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->addressDetailsValue:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f0e05a3

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->txt_address_regions:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->txt_address_regions:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/uchoice/AddressEditActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/uchoice/AddressEditActivity$1;-><init>(Lcom/boohee/uchoice/AddressEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private getAddressValue()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/boohee/model/Address;

    invoke-direct {v0}, Lcom/boohee/model/Address;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->realNameValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->postCodeValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->addressDetailsValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_province:Ljava/lang/String;

    iput-object v1, v0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_city:Ljava/lang/String;

    iput-object v1, v0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_district:Ljava/lang/String;

    iput-object v1, v0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->phoneNumValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/boohee/uchoice/AddressEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Address;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    .line 47
    invoke-virtual {p0}, Lcom/boohee/uchoice/AddressEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "address_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    .line 48
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 132
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressEditActivity;->getAddressValue()V

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v2, v2, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v2, v2, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v2, v2, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v0, v0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utility/RegularUtils;->checkCellPhone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    if-ne v0, v3, :cond_1

    .line 137
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->addAddress(Lcom/boohee/model/Address;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    if-ne v0, v4, :cond_0

    .line 139
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->updateAddress(Lcom/boohee/model/Address;)V

    goto :goto_0

    .line 142
    :cond_2
    const v0, 0x7f070645

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 145
    :cond_3
    const v0, 0x7f070204

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0
.end method

.method private initText()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->txt_address_regions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v2, v2, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v2, v2, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v2, v2, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->addressDetailsValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->realNameValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->postCodeValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->phoneNumValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->realNameValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v1, v1, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v0, v0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_province:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v0, v0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_city:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v0, v0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_district:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method private updateAddress(Lcom/boohee/model/Address;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 171
    new-instance v0, Lcom/boohee/uchoice/AddressEditActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/AddressEditActivity$3;-><init>(Lcom/boohee/uchoice/AddressEditActivity;Landroid/content/Context;)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/ShopApi;->updateShipmentAddress(Lcom/boohee/model/Address;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->setTitle(I)V

    .line 39
    const v0, 0x7f0301e6

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressEditActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressEditActivity;->handleIntent()V

    .line 41
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressEditActivity;->findView()V

    .line 42
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressEditActivity;->initText()V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 53
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 56
    :cond_0
    iget v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    if-ne v0, v1, :cond_2

    .line 57
    const v0, 0x7f0700c1

    invoke-interface {p1, v3, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 63
    :cond_1
    :goto_0
    return v1

    .line 59
    :cond_2
    iget v0, p0, Lcom/boohee/uchoice/AddressEditActivity;->address_type:I

    if-ne v0, v2, :cond_1

    .line 60
    const v0, 0x7f0705e3

    invoke-interface {p1, v3, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressEditActivity;->init()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
