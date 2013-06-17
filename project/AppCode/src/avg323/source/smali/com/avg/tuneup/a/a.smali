.class public abstract Lcom/avg/tuneup/a/a;
.super Lcom/avg/tuneup/g;


# instance fields
.field private n:Lcom/avg/toolkit/ads/WebViewAdsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/a/a;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "performance"

    invoke-virtual {p0, v0, v1}, Lcom/avg/tuneup/a/a;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/tuneup/a/a;->finish()V

    return-void
.end method

.method protected j()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/a;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0, p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/a/f;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/a/a;->setContentView(I)V

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/a/a;->a(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/a/e;->banner:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/ads/WebViewAdsManager;

    iput-object v0, p0, Lcom/avg/tuneup/a/a;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {p0}, Lcom/avg/tuneup/a/a;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/a;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/a/a;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/avg/tuneup/a/a;->q()V

    invoke-super {p0}, Lcom/avg/tuneup/g;->onDestroy()V

    return-void
.end method
