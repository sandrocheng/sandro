.class final Lcom/keniu/security/traffic/ar;
.super Landroid/text/style/ClickableSpan;
.source "TrafficFireWallMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/keniu/security/traffic/ar;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    .line 566
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 567
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bbs.duba.net/thread-22646216-1-1.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 579
    iget-object v1, p0, Lcom/keniu/security/traffic/ar;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 581
    if-nez v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/keniu/security/traffic/ar;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    const v1, 0x7f0b04fa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/traffic/ar;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 571
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 573
    return-void
.end method
