.class final Lcom/ijinshan/kpref/ab;
.super Landroid/database/ContentObserver;
.source "VolumePreference.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/aa;


# direct methods
.method constructor <init>(Lcom/ijinshan/kpref/aa;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ijinshan/kpref/ab;->a:Lcom/ijinshan/kpref/aa;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 233
    iget-object v0, p0, Lcom/ijinshan/kpref/ab;->a:Lcom/ijinshan/kpref/aa;

    invoke-static {v0}, Lcom/ijinshan/kpref/aa;->a(Lcom/ijinshan/kpref/aa;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ijinshan/kpref/ab;->a:Lcom/ijinshan/kpref/aa;

    invoke-static {v0}, Lcom/ijinshan/kpref/aa;->b(Lcom/ijinshan/kpref/aa;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kpref/ab;->a:Lcom/ijinshan/kpref/aa;

    invoke-static {v2}, Lcom/ijinshan/kpref/aa;->c(Lcom/ijinshan/kpref/aa;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 238
    if-ltz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/ijinshan/kpref/ab;->a:Lcom/ijinshan/kpref/aa;

    invoke-static {v1}, Lcom/ijinshan/kpref/aa;->a(Lcom/ijinshan/kpref/aa;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 242
    :cond_0
    return-void
.end method
