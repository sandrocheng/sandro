.class final Lcom/keniu/security/traffic/ca;
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
    .line 684
    iput-object p1, p0, Lcom/keniu/security/traffic/ca;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/keniu/security/traffic/ca;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/keniu/security/traffic/y;->s:Z

    .line 690
    iget-object v0, p0, Lcom/keniu/security/traffic/ca;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/ca;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02f0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 693
    const/4 v0, 0x1

    return v0
.end method
