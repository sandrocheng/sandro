.class final Lcom/keniu/security/i/c;
.super Lcom/keniu/security/i/u;
.source "FileDownWatcher.java"


# instance fields
.field private g:Lcom/keniu/security/i/d;

.field private h:Lcom/keniu/security/i/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/keniu/security/i/u;-><init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/i/c;)Lcom/keniu/security/i/f;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 405
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    .line 407
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/keniu/security/i/f;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/f;-><init>(Lcom/keniu/security/i/c;)V

    iput-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    .line 60
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    invoke-virtual {v0}, Lcom/keniu/security/i/f;->start()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/keniu/security/i/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/d;-><init>(Lcom/keniu/security/i/c;)V

    iput-object v1, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    .line 69
    iget-object v1, p0, Lcom/keniu/security/i/c;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/keniu/security/i/c;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iput-object v2, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    invoke-virtual {v0}, Lcom/keniu/security/i/f;->b()V

    .line 84
    iput-object v2, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 36
    iget v0, p0, Lcom/keniu/security/i/c;->d:I

    if-eq p1, v0, :cond_0

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    iget v0, p0, Lcom/keniu/security/i/c;->d:I

    return v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/keniu/security/i/f;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/f;-><init>(Lcom/keniu/security/i/c;)V

    iput-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    invoke-virtual {v0}, Lcom/keniu/security/i/f;->start()V

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/keniu/security/i/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/d;-><init>(Lcom/keniu/security/i/c;)V

    iput-object v1, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    iget-object v1, p0, Lcom/keniu/security/i/c;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/i/c;->d:I

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/i/c;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/keniu/security/i/c;->g:Lcom/keniu/security/i/d;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    invoke-virtual {v0}, Lcom/keniu/security/i/f;->b()V

    iput-object v2, p0, Lcom/keniu/security/i/c;->h:Lcom/keniu/security/i/f;

    .line 47
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/i/c;->d:I

    goto :goto_0

    .line 38
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
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/i/c;->a(I)I

    .line 31
    return-void
.end method
