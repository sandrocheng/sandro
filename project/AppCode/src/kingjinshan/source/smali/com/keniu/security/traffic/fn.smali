.class final Lcom/keniu/security/traffic/fn;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/keniu/security/traffic/fn;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/keniu/security/traffic/fn;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/keniu/security/traffic/fn;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v1, 0x7f0b02cd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/keniu/security/traffic/fn;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 328
    const-string v2, "type"

    const-string v3, "brand"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/keniu/security/traffic/fn;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
