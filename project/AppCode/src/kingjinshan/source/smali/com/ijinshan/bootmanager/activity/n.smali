.class final Lcom/ijinshan/bootmanager/activity/n;
.super Landroid/text/style/ClickableSpan;
.source "AutoBootMangerActivity.java"


# instance fields
.field a:Z

.field final synthetic b:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/n;->b:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    .line 695
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/n;->a:Z

    .line 696
    iput-boolean p2, p0, Lcom/ijinshan/bootmanager/activity/n;->a:Z

    .line 697
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bbs.duba.net/thread-22646216-1-1.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/n;->b:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 710
    if-nez v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/n;->b:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v1, 0x7f0b04fa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/n;->b:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 701
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 702
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/n;->a:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 703
    return-void
.end method
