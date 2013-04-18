.class final Lcom/keniu/security/sync/d/e/b;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/d/e/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/d/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/keniu/security/sync/d/e/b;->a:Lcom/keniu/security/sync/d/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 228
    const-string v0, "HttpRequest"

    const-string v1, "Generate X509Certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
