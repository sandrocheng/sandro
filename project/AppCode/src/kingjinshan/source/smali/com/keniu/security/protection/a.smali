.class public final Lcom/keniu/security/protection/a;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/keniu/security/protection/a;->b:Landroid/content/Context;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/a;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/protection/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/keniu/security/protection/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/protection/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/protection/a;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 21
    iget-object v0, p0, Lcom/keniu/security/protection/a;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 24
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 28
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 30
    :goto_0
    if-ge v1, v2, :cond_0

    .line 31
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    .line 39
    iget-object v0, p0, Lcom/keniu/security/protection/a;->b:Landroid/content/Context;

    const/high16 v1, 0x7f06

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/keniu/security/protection/a;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 115
    :goto_1
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/protection/a;->c:Z

    .line 57
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 58
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 60
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v1, Lcom/keniu/security/protection/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/b;-><init>(Lcom/keniu/security/protection/a;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/keniu/security/protection/c;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/c;-><init>(Lcom/keniu/security/protection/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 101
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/keniu/security/protection/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/d;-><init>(Lcom/keniu/security/protection/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 119
    iget-boolean v0, p0, Lcom/keniu/security/protection/a;->c:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/keniu/security/protection/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/protection/a;->c:Z

    .line 124
    :cond_0
    return-void
.end method
