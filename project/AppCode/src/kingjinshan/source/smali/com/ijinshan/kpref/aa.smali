.class public final Lcom/ijinshan/kpref/aa;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/VolumePreference;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/media/AudioManager;

.field private e:I

.field private f:I

.field private g:Landroid/media/Ringtone;

.field private h:I

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kpref/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/ijinshan/kpref/aa;->a:Lcom/ijinshan/kpref/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/aa;->c:Landroid/os/Handler;

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kpref/aa;->h:I

    .line 229
    new-instance v0, Lcom/ijinshan/kpref/ab;

    iget-object v1, p0, Lcom/ijinshan/kpref/aa;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/ijinshan/kpref/ab;-><init>(Lcom/ijinshan/kpref/aa;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/aa;->j:Landroid/database/ContentObserver;

    .line 246
    iput-object p2, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    .line 247
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    .line 248
    iput p4, p0, Lcom/ijinshan/kpref/aa;->e:I

    .line 249
    iput-object p3, p0, Lcom/ijinshan/kpref/aa;->i:Landroid/widget/SeekBar;

    .line 251
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kpref/aa;->f:I

    iget v0, p0, Lcom/ijinshan/kpref/aa;->f:I

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kpref/aa;->e:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ijinshan/kpref/aa;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget v0, p0, Lcom/ijinshan/kpref/aa;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 252
    :cond_0
    return-void

    .line 251
    :cond_1
    iget v0, p0, Lcom/ijinshan/kpref/aa;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kpref/aa;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->i:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private a(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 256
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kpref/aa;->f:I

    .line 257
    iget v0, p0, Lcom/ijinshan/kpref/aa;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 258
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kpref/aa;->e:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ijinshan/kpref/aa;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    iget v0, p0, Lcom/ijinshan/kpref/aa;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 266
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    .line 274
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 277
    :cond_0
    return-void

    .line 267
    :cond_1
    iget v0, p0, Lcom/ijinshan/kpref/aa;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 268
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 270
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic b(Lcom/ijinshan/kpref/aa;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 300
    iput p1, p0, Lcom/ijinshan/kpref/aa;->h:I

    .line 301
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method static synthetic c(Lcom/ijinshan/kpref/aa;)I
    .locals 1
    .parameter

    .prologue
    .line 216
    iget v0, p0, Lcom/ijinshan/kpref/aa;->e:I

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->a:Lcom/ijinshan/kpref/VolumePreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/VolumePreference;->a(Lcom/ijinshan/kpref/aa;)V

    .line 320
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 321
    return-void
.end method

.method private e()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->i:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/ijinshan/kpref/aa;->c()V

    .line 281
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/aa;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 282
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->i:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 283
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 335
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/ijinshan/kpref/aa;->d()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/aa;->b(I)V

    .line 339
    return-void
.end method

.method public final a(Lcom/ijinshan/kpref/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iget v0, p0, Lcom/ijinshan/kpref/aa;->h:I

    if-ltz v0, :cond_0

    .line 343
    iget v0, p0, Lcom/ijinshan/kpref/aa;->h:I

    iput v0, p1, Lcom/ijinshan/kpref/ac;->a:I

    .line 344
    iget v0, p0, Lcom/ijinshan/kpref/aa;->f:I

    iput v0, p1, Lcom/ijinshan/kpref/ac;->b:I

    .line 346
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    iget v2, p0, Lcom/ijinshan/kpref/aa;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 287
    return-void
.end method

.method public final b(Lcom/ijinshan/kpref/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 349
    iget v0, p1, Lcom/ijinshan/kpref/ac;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 350
    iget v0, p1, Lcom/ijinshan/kpref/ac;->b:I

    iput v0, p0, Lcom/ijinshan/kpref/aa;->f:I

    .line 351
    iget v0, p1, Lcom/ijinshan/kpref/ac;->a:I

    iput v0, p0, Lcom/ijinshan/kpref/aa;->h:I

    .line 352
    iget v0, p0, Lcom/ijinshan/kpref/aa;->h:I

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/aa;->b(I)V

    .line 354
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 327
    :cond_0
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    if-nez p3, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0, p2}, Lcom/ijinshan/kpref/aa;->b(I)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/ijinshan/kpref/aa;->d()V

    .line 312
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ijinshan/kpref/aa;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/ijinshan/kpref/aa;->e:I

    iget v2, p0, Lcom/ijinshan/kpref/aa;->h:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 316
    return-void
.end method
