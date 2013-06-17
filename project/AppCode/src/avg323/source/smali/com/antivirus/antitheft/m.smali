.class Lcom/antivirus/antitheft/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/antitheft/k;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iput-object p2, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    invoke-virtual {v0}, Lcom/antivirus/antitheft/k;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/antivirus/antitheft/k;->a(Lcom/antivirus/antitheft/k;I)I

    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/antivirus/antitheft/k;->a(Lcom/antivirus/antitheft/k;Z)Z

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, v3, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v3, v3, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v2, v2, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v3, v1

    :goto_1
    const/4 v1, 0x5

    if-ge v3, v1, :cond_5

    :try_start_2
    iget-object v1, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v1, v1, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    iget-object v4, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v4, v4, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v1, v1, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    :cond_1
    iget-object v4, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v4, v4, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v4, v4, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    iget-object v4, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v4, v4, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/antivirus/antitheft/n;

    invoke-direct {v5, p0, v0}, Lcom/antivirus/antitheft/n;-><init>(Lcom/antivirus/antitheft/m;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v5, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/antivirus/antitheft/k;->a(Landroid/content/Context;)V

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    const-class v6, Lcom/antivirus/ui/antitheft/StopShoutActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x3400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const-wide/16 v4, 0x1f4

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/RingtoneManager;->getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v3, v3, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, v3, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v3, v3, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/antivirus/antitheft/m;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v2, v2, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v0, v0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v0, v0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iput-object v7, v0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    invoke-static {v0}, Lcom/antivirus/antitheft/k;->c(Lcom/antivirus/antitheft/k;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v0, v0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v0, v0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iput-object v7, v0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v1, v1, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iget-object v1, v1, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iget-object v1, p0, Lcom/antivirus/antitheft/m;->b:Lcom/antivirus/antitheft/k;

    iput-object v7, v1, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    :cond_6
    throw v0
.end method
