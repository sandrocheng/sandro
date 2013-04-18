.class final Lcom/keniu/security/traffic/co;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 482
    check-cast p2, Ljava/lang/Integer;

    .line 483
    iget-object v0, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/keniu/security/traffic/y;->e:I

    .line 484
    iget-object v0, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/traffic/y;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v3, 0x7f0b03c7

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 488
    iget-object v1, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 491
    iget-object v1, p0, Lcom/keniu/security/traffic/co;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v2, 0x7f0b02a0

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 493
    return v5
.end method
