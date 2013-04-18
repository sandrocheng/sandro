.class final Lcom/keniu/security/sync/d/e/c;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/d/e/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/d/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/keniu/security/sync/d/e/c;->a:Lcom/keniu/security/sync/d/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method
