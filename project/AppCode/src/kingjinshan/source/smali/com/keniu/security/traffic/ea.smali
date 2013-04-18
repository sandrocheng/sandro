.class final Lcom/keniu/security/traffic/ea;
.super Ljava/lang/Object;
.source "TrafficXuanFuChuangStateReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/keniu/security/traffic/ea;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 744
    iget-object v1, p0, Lcom/keniu/security/traffic/ea;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 745
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 746
    iget-object v1, p0, Lcom/keniu/security/traffic/ea;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 748
    return-void
.end method
