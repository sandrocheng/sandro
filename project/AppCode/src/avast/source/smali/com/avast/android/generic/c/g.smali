.class public Lcom/avast/android/generic/c/g;
.super Ljava/lang/Object;
.source "PKCS7SignedDataNew.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/avast/android/generic/c/e;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Set;

.field private d:Ljava/util/Collection;

.field private e:Ljava/util/Collection;

.field private f:Ljava/security/cert/X509Certificate;

.field private g:[B

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/security/Signature;

.field private transient k:Ljava/security/PrivateKey;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    const-string v0, "BC"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avast/android/generic/c/g;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/generic/c/g;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "1.2.840.113549.1.7.1"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->l:Ljava/lang/String;

    .line 81
    const-string v0, "1.2.840.113549.1.7.2"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->m:Ljava/lang/String;

    .line 82
    const-string v0, "1.2.840.113549.2.5"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->n:Ljava/lang/String;

    .line 83
    const-string v0, "1.2.840.113549.2.2"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->o:Ljava/lang/String;

    .line 84
    const-string v0, "1.3.14.3.2.26"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->p:Ljava/lang/String;

    .line 85
    const-string v0, "1.2.840.113549.1.1.1"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->q:Ljava/lang/String;

    .line 86
    const-string v0, "1.2.840.10040.4.1"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->r:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/avast/android/generic/c/g;->k:Ljava/security/PrivateKey;

    .line 144
    const-string v0, "MD5"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "1.2.840.113549.2.5"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    .line 165
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/c/g;->b:I

    iput v0, p0, Lcom/avast/android/generic/c/g;->a:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->d:Ljava/util/Collection;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->e:Ljava/util/Collection;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->c:Ljava/util/Set;

    .line 169
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    aget-object v0, p2, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->f:Ljava/security/cert/X509Certificate;

    move v0, v1

    .line 175
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/avast/android/generic/c/g;->d:Ljava/util/Collection;

    aget-object v3, p2, v0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_0
    const-string v0, "MD2"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "1.2.840.113549.2.2"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "SHA"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const-string v0, "1.3.14.3.2.26"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "SHA1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const-string v0, "1.3.14.3.2.26"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_3
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Hash Algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_4
    if-eqz p3, :cond_5

    .line 182
    :goto_2
    array-length v0, p3

    if-ge v1, v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->e:Ljava/util/Collection;

    aget-object v2, p3, v1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    :cond_5
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    const-string v0, "1.2.840.113549.1.1.1"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    .line 205
    :goto_3
    invoke-virtual {p0}, Lcom/avast/android/generic/c/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->j:Ljava/security/Signature;

    .line 207
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->j:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 208
    return-void

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    const-string v1, "DSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    const-string v0, "1.2.840.10040.4.1"

    iput-object v0, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    goto :goto_3

    .line 202
    :cond_7
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Key Algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([B)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4
    .parameter

    .prologue
    .line 340
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 341
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 342
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading from ByteArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    .line 532
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 535
    const-class v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    .line 536
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 537
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    goto :goto_0
.end method

.method private b(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 545
    .line 548
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 551
    const-class v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 552
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 553
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    const-string v3, "1.2.840.113549.2.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    const-string v0, "MD5"

    .line 231
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    const-string v3, "1.2.840.113549.1.1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    const-string v1, "RSA"

    .line 240
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "with"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    const-string v3, "1.2.840.113549.2.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    const-string v0, "MD2"

    goto :goto_0

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    const-string v3, "1.3.14.3.2.26"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-string v0, "SHA1"

    goto :goto_0

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    const-string v3, "1.2.840.10040.4.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    const-string v1, "DSA"

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)[B
    .locals 10
    .parameter

    .prologue
    .line 357
    :try_start_0
    const-string v0, "com.android.org.bouncycastle.asn1.DERNull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :try_start_1
    const-string v1, "THE_ONE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 367
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 369
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 370
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 372
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "1.3.14.3.2.26"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 373
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v3, v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 375
    const-string v1, "RSA/NONE/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 376
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/avast/android/generic/c/g;->k:Ljava/security/PrivateKey;

    invoke-virtual {v1, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 377
    const-string v2, "DER"

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    .line 378
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/c/g;->g:[B

    .line 384
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 385
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 386
    iget-object v1, p0, Lcom/avast/android/generic/c/g;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 391
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 392
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 521
    :catch_0
    move-exception v0

    .line 523
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :catch_1
    move-exception v1

    .line 364
    :try_start_3
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/avast/android/generic/c/g;->a(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;

    move-result-object v2

    .line 397
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "1.2.840.113549.1.7.1"

    invoke-direct {v1, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 405
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 406
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 407
    iget-object v1, p0, Lcom/avast/android/generic/c/g;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 410
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 411
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 412
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2

    .line 416
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/avast/android/generic/c/g;->a(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;

    move-result-object v4

    .line 420
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 421
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 425
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget v7, p0, Lcom/avast/android/generic/c/g;->b:I

    invoke-direct {v1, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    .line 426
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 427
    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 429
    new-instance v7, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    iget-object v1, p0, Lcom/avast/android/generic/c/g;->f:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/generic/c/g;->a([B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget-object v9, p0, Lcom/avast/android/generic/c/g;->f:Ljava/security/cert/X509Certificate;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v7, v8, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    .line 433
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 434
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 439
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v8, p0, Lcom/avast/android/generic/c/g;->h:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 441
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 442
    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 448
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v8, p0, Lcom/avast/android/generic/c/g;->i:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 450
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 451
    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 458
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/avast/android/generic/c/g;->g:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 459
    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 460
    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 465
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 466
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 467
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget v8, p0, Lcom/avast/android/generic/c/g;->a:I

    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    .line 468
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 469
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 470
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 471
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 472
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 473
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 474
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 475
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 476
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 478
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 480
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 481
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 482
    iget-object v0, p0, Lcom/avast/android/generic/c/g;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 485
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 486
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 487
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_3

    .line 489
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/avast/android/generic/c/g;->a(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;

    move-result-object v0

    .line 490
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 491
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 492
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 497
    :cond_3
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {p0, v5, v6}, Lcom/avast/android/generic/c/g;->b(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 498
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 499
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 504
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 505
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 506
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v4, "1.2.840.113549.1.7.2"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 508
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 509
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v7}, Lcom/avast/android/generic/c/g;->b(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 510
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 511
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 513
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 515
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 516
    invoke-direct {p0, v0, v2}, Lcom/avast/android/generic/c/g;->b(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 519
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    return-object v0
.end method
