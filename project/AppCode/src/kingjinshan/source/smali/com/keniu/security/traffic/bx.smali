.class final Lcom/keniu/security/traffic/bx;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/bw;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->a:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 612
    iget-object v0, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-boolean v1, v0, Lcom/keniu/security/traffic/y;->a:Z

    .line 613
    iget-object v0, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v1, v1, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v2, 0x7f0b03c0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 616
    iget-object v0, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->b(Landroid/content/Context;)V

    .line 619
    iget-object v0, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/keniu/security/a;->at()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/keniu/security/a;->ap()V

    .line 623
    iget-object v0, p0, Lcom/keniu/security/traffic/bx;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c()V

    .line 626
    :cond_0
    return-void
.end method
