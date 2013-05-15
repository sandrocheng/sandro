.class Lcom/avast/android/generic/internet/c/f;
.super Ljava/lang/Object;
.source "AvastAccountConnector.java"


# direct methods
.method static a(Landroid/content/Context;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 774
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 775
    :goto_0
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x7530

    invoke-static {v3, v0}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 777
    return-void

    .line 774
    :cond_0
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
