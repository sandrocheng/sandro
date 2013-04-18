.class final Lcom/keniu/security/traffic/dy;
.super Ljava/lang/Object;
.source "TrafficXuanFuChuangStateReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/dx;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/dx;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/keniu/security/traffic/dy;->a:Lcom/keniu/security/traffic/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/keniu/security/traffic/dy;->a:Lcom/keniu/security/traffic/dx;

    iget-object v0, v0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b()V

    .line 617
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 618
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/keniu/security/traffic/dy;->a:Lcom/keniu/security/traffic/dx;

    iget-object v1, v1, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Lcom/keniu/security/traffic/dy;->a:Lcom/keniu/security/traffic/dx;

    iget-object v1, v1, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 624
    return-void
.end method
