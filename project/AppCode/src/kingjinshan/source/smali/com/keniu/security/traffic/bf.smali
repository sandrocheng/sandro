.class final Lcom/keniu/security/traffic/bf;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/keniu/security/traffic/bf;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1098
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1099
    iget-object v1, p0, Lcom/keniu/security/traffic/bf;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1101
    iget-object v1, p0, Lcom/keniu/security/traffic/bf;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    const-string v1, "context"

    const-string v2, "RatesRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/bf;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Z)Z

    .line 1109
    iget-object v1, p0, Lcom/keniu/security/traffic/bf;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-string v2, "9"

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 1113
    iget-object v1, p0, Lcom/keniu/security/traffic/bf;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const/16 v2, 0x16

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1115
    return-void

    .line 1106
    :cond_0
    const-string v1, "context"

    const-string v2, "Traffic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
