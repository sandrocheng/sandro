.class final Lorg/antivirus/antitheft/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/antivirus/antitheft/j;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iput-object p2, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iput-object v6, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    move v2, v1

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v3, v3, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    :cond_1
    iget-object v3, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v3, v3, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v3, v3, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    if-nez v2, :cond_2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    const-class v5, Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x3400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const-wide/16 v3, 0x1f4

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/antivirus/antitheft/ab;

    iget-object v1, p0, Lorg/antivirus/antitheft/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/antivirus/antitheft/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/antivirus/antitheft/ab;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iput-object v6, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iput-object v6, v0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v1, v1, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iget-object v1, v1, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iget-object v1, p0, Lorg/antivirus/antitheft/l;->b:Lorg/antivirus/antitheft/j;

    iput-object v6, v1, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    :cond_7
    throw v0
.end method
