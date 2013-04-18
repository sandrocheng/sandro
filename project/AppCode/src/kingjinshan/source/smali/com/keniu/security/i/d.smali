.class final Lcom/keniu/security/i/d;
.super Landroid/content/BroadcastReceiver;
.source "FileDownWatcher.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/i/c;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/c;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/keniu/security/i/d;->a:Lcom/keniu/security/i/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/keniu/security/i/d;->a:Lcom/keniu/security/i/c;

    invoke-static {v0}, Lcom/keniu/security/i/c;->a(Lcom/keniu/security/i/c;)Lcom/keniu/security/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/i/f;->a()V

    goto :goto_0
.end method
