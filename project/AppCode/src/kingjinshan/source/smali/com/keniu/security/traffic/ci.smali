.class final Lcom/keniu/security/traffic/ci;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/keniu/security/traffic/ci;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 282
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/keniu/security/traffic/ci;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->a(Lcom/keniu/security/traffic/TrafficSettingActivity;)Z

    .line 288
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 303
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/keniu/security/traffic/ci;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-class v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/keniu/security/traffic/ci;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-virtual {v1, v0, v3}, Lcom/keniu/security/traffic/TrafficSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ci;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-string v1, "\u60a8\u7684\u624b\u673a\u6ca1\u6709ROOT,\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
