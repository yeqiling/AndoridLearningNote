.class Lcom/novell/sasl/client/ParsedDirective;
.super Ljava/lang/Object;


# static fields
.field public static final QUOTED_STRING_VALUE:I = 0x1

.field public static final TOKEN_VALUE:I = 0x2


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_value:Ljava/lang/String;

.field private m_valueType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/novell/sasl/client/ParsedDirective;->m_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/novell/sasl/client/ParsedDirective;->m_value:Ljava/lang/String;

    iput p3, p0, Lcom/novell/sasl/client/ParsedDirective;->m_valueType:I

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/novell/sasl/client/ParsedDirective;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/novell/sasl/client/ParsedDirective;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method getValueType()I
    .locals 1

    iget v0, p0, Lcom/novell/sasl/client/ParsedDirective;->m_valueType:I

    return v0
.end method
