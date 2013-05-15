.class public Lcom/avast/android/generic/c/h;
.super Ljava/lang/Object;
.source "Signature.java"


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B

.field private d:Ljavax/crypto/Cipher;

.field private e:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/avast/android/generic/c/h;->a:[B

    .line 14
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/avast/android/generic/c/h;->b:[B

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/avast/android/generic/c/h;->c:[B

    .line 22
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/c/h;->e:Ljava/security/MessageDigest;

    .line 23
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    .line 24
    return-void

    .line 13
    :array_0
    .array-data 0x1
        0x30t
        0x21t
    .end array-data

    .line 14
    nop

    :array_1
    .array-data 0x1
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
    .end array-data

    .line 15
    :array_2
    .array-data 0x1
        0x4t
        0x14t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/security/PrivateKey;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 29
    return-void
.end method

.method public a([B)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->e:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    return-void
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/avast/android/generic/c/h;->a:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/avast/android/generic/c/h;->b:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 43
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/avast/android/generic/c/h;->c:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/avast/android/generic/c/h;->e:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 45
    iget-object v0, p0, Lcom/avast/android/generic/c/h;->d:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method
