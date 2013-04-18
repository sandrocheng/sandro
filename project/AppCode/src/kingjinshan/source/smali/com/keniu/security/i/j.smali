.class final Lcom/keniu/security/i/j;
.super Lcom/keniu/security/i/u;
.source "FileInstWatcher.java"


# instance fields
.field private g:Lcom/keniu/security/i/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/keniu/security/i/u;-><init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/keniu/security/i/j;->d:I

    if-eq p1, v0, :cond_0

    .line 28
    packed-switch p1, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    iget v0, p0, Lcom/keniu/security/i/j;->d:I

    return v0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/i/j;->g:Lcom/keniu/security/i/k;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/keniu/security/i/k;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/k;-><init>(Lcom/keniu/security/i/j;)V

    iput-object v1, p0, Lcom/keniu/security/i/j;->g:Lcom/keniu/security/i/k;

    .line 37
    iget-object v1, p0, Lcom/keniu/security/i/j;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/keniu/security/i/j;->g:Lcom/keniu/security/i/k;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/i/j;->d:I

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/i/j;->g:Lcom/keniu/security/i/k;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/keniu/security/i/j;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/i/j;->g:Lcom/keniu/security/i/k;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/j;->g:Lcom/keniu/security/i/k;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/i/j;->d:I

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finalize()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/i/j;->a(I)I

    .line 22
    return-void
.end method
