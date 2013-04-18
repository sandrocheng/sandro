.class final Lcom/keniu/security/traffic/ao;
.super Landroid/os/Handler;
.source "TrafficFireWallMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const v3, 0x7f0b037d

    const/16 v2, 0x12c

    .line 636
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;)V

    .line 673
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v1, v3}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 649
    :cond_1
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 650
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->g(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v1, v3}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 665
    iget-object v0, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ao;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v1, v3}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
