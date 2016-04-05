.class public Lcom/easemob/util/CryptoUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ALGORIGHM_AES:I = 0x1

.field public static final ALGORIGHM_DES:I = 0x0

.field static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field cipher:Ljavax/crypto/Cipher;

.field decipher:Ljavax/crypto/Cipher;

.field key:Ljava/lang/String;

.field keyBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/easemob/util/CryptoUtils;->decipher:Ljavax/crypto/Cipher;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/easemob/util/CryptoUtils;->keyBytes:[B

    const-string v0, "TongliforniaJohnson"

    iput-object v0, p0, Lcom/easemob/util/CryptoUtils;->key:Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x1
        0x4at
        0x6ft
        0x68t
        0x6et
        0x73t
        0x6ft
        0x6et
        0x4dt
        0x61t
        0x4at
        0x69t
        0x46t
        0x61t
        0x6et
        0x67t
        0x4at
        0x65t
        0x72t
        0x76t
        0x69t
        0x73t
        0x4ct
        0x69t
        0x75t
        0x4ct
        0x69t
        0x75t
        0x53t
        0x68t
        0x61t
        0x6ft
        0x5at
    .end array-data
.end method

.method public static getHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v0

    const-string v4, "0123456789ABCDEF"

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/util/CryptoUtils;->decipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decryptBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/easemob/util/CryptoUtils;->decrypt([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/util/CryptoUtils;->encrypt(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public init(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/easemob/util/CryptoUtils;->initDES()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/util/CryptoUtils;->initAES()V

    goto :goto_0
.end method

.method public initAES()V
    .locals 3

    :try_start_0
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/easemob/util/CryptoUtils;->keyBytes:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/util/CryptoUtils;->decipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/easemob/util/CryptoUtils;->decipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "encrypt"

    const-string v1, "initital for AES"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initDES()V
    .locals 7

    const/16 v6, 0x8

    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/util/CryptoUtils;->key:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/util/CryptoUtils;->keyBytes:[B

    const/4 v1, 0x0

    const/16 v0, 0x10

    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/easemob/util/CryptoUtils;->keyBytes:[B

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "DESede/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/easemob/util/CryptoUtils;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v2, "DESede/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/easemob/util/CryptoUtils;->decipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/easemob/util/CryptoUtils;->decipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v0, "encrypt"

    const-string v1, "initital for DES"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/easemob/util/CryptoUtils;->keyBytes:[B

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/easemob/util/CryptoUtils;->keyBytes:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v5, v2

    aput-byte v2, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
