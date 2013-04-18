.class final Lcom/keniu/security/i/k;
.super Landroid/content/BroadcastReceiver;
.source "FileInstWatcher.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/i/j;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/j;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 66
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    iget-object v1, v1, Lcom/keniu/security/i/j;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, v0}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    iget-object v0, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    iget-object v0, v0, Lcom/keniu/security/i/j;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    iget-object v1, v1, Lcom/keniu/security/i/j;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/k;->a:Lcom/keniu/security/i/j;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    goto :goto_0
.end method
