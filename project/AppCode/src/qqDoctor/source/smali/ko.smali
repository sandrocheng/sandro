.class public abstract Lko;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/security/Key;

.field protected c:Ljavax/crypto/Cipher;

.field protected d:I

.field protected e:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lko;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lko;->d:I

    return v0
.end method

.method public abstract a(Ljava/lang/String;[B)V
.end method

.method public final a(Ljava/security/Key;)V
    .locals 0

    iput-object p1, p0, Lko;->b:Ljava/security/Key;

    return-void
.end method

.method public abstract a([B)[B
.end method

.method public final b()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lko;->b:Ljava/security/Key;

    return-object v0
.end method

.method public abstract b([B)[B
.end method
