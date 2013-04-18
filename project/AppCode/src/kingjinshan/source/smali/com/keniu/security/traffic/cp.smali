.class final Lcom/keniu/security/traffic/cp;
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
    .line 517
    iput-object p1, p0, Lcom/keniu/security/traffic/cp;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 522
    move-object v0, p1

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 524
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 526
    invoke-virtual {p1, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/keniu/security/traffic/cp;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/keniu/security/traffic/cp;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/cp;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v3, 0x7f0b02c0

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 530
    iget-object v1, p0, Lcom/keniu/security/traffic/cp;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;I)V

    .line 533
    check-cast p1, Lcom/ijinshan/kpref/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x0

    return v1
.end method
