.class final Lcom/keniu/security/traffic/cn;
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
    .line 445
    iput-object p1, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 449
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 450
    iget-object v2, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    iput-wide v0, v2, Lcom/keniu/security/traffic/y;->h:J

    .line 451
    iget-object v0, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v2, 0x7f0b03d4

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 454
    iget-object v0, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-wide v0, v0, Lcom/keniu/security/traffic/y;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v1, 0x7f0b02d4

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 458
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cn;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-wide v0, v0, Lcom/keniu/security/traffic/y;->h:J

    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
