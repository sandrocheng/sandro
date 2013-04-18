.class final Lcom/keniu/security/service/k;
.super Ljava/lang/Object;
.source "ServiceSafeMonitor.java"

# interfaces
.implements Lcom/keniu/security/traffic/dc;


# instance fields
.field final synthetic a:Lcom/keniu/security/service/i;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/i;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/keniu/security/service/k;->a:Lcom/keniu/security/service/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/keniu/security/service/k;->a:Lcom/keniu/security/service/i;

    invoke-static {v0}, Lcom/keniu/security/service/i;->a(Lcom/keniu/security/service/i;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "srvstop"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method
