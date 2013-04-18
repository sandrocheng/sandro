.class final Lcom/keniu/security/rates/h;
.super Ljava/lang/Object;
.source "RatesRequestMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/keniu/security/rates/RatesRequestMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/keniu/security/rates/h;->b:Lcom/keniu/security/rates/RatesRequestMainActivity;

    iput-object p2, p0, Lcom/keniu/security/rates/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/rates/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    iget-object v0, p0, Lcom/keniu/security/rates/h;->b:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-virtual {v0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
