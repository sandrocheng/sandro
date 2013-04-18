.class final Lcom/ijinshan/bootmanager/activity/a;
.super Landroid/text/style/ClickableSpan;
.source "AutoBootHelpActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/a;->a:Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;

    .line 47
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bbs.duba.net/thread-22646216-1-1.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/a;->a:Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;

    invoke-virtual {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/a;->a:Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;

    const v1, 0x7f0b04fa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/a;->a:Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 54
    return-void
.end method
