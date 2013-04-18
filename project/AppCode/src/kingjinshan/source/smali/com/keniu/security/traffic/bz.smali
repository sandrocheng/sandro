.class final Lcom/keniu/security/traffic/bz;
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
    .line 657
    iput-object p1, p0, Lcom/keniu/security/traffic/bz;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/keniu/security/traffic/bz;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/keniu/security/traffic/bz;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/keniu/security/traffic/y;->r:Z

    .line 668
    iget-object v0, p0, Lcom/keniu/security/traffic/bz;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/bz;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v2, 0x7f0b02ef

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 671
    iget-object v0, p0, Lcom/keniu/security/traffic/bz;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->d(Lcom/keniu/security/traffic/TrafficSettingActivity;)V

    .line 672
    const/4 v0, 0x1

    return v0
.end method
