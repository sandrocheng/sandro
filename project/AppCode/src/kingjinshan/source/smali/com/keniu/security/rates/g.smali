.class final Lcom/keniu/security/rates/g;
.super Ljava/lang/Object;
.source "RatesRequestMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/rates/RatesRequestMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/keniu/security/rates/g;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/keniu/security/rates/g;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 286
    const-string v1, "context"

    const-string v2, "RatesRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/keniu/security/rates/g;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method
