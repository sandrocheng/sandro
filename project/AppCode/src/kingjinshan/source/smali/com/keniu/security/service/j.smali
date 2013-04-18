.class final Lcom/keniu/security/service/j;
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
    .line 41
    iput-object p1, p0, Lcom/keniu/security/service/j;->a:Lcom/keniu/security/service/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3
    .parameter

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/service/j;->a:Lcom/keniu/security/service/i;

    invoke-static {v1}, Lcom/keniu/security/service/i;->a(Lcom/keniu/security/service/i;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    iget-object v1, p0, Lcom/keniu/security/service/j;->a:Lcom/keniu/security/service/i;

    invoke-static {v1}, Lcom/keniu/security/service/i;->a(Lcom/keniu/security/service/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    const/4 v0, 0x1

    return v0
.end method
