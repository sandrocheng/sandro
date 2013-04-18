.class final Lcom/keniu/security/rates/j;
.super Ljava/lang/Object;
.source "RatesRequestMainActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/rates/RatesRequestMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/keniu/security/rates/j;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/keniu/security/rates/j;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 574
    const-string v1, "context"

    const-string v2, "RatesRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    iget-object v1, p0, Lcom/keniu/security/rates/j;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 576
    const/4 v0, 0x0

    return v0
.end method
