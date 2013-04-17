.class public final Lbtt;
.super Ljava/lang/Object;


# instance fields
.field public a:Lbtl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbtl;

    const-string v1, "AntitheftProperty"

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbtt;->a:Lbtl;

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbtt;->a:Lbtl;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/utils/Base64;->decode([BI)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
