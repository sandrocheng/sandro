.class final Lcom/keniu/security/rates/e;
.super Ljava/lang/Object;
.source "RatesRequestMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/rates/RatesRequestMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/keniu/security/rates/e;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/keniu/security/rates/e;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-static {v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->a(Lcom/keniu/security/rates/RatesRequestMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "5"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/rates/e;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-string v1, "http://wap.wali.com/common/prog/produce.php?f=download&cv=ANDROIDZFT&cid=2035001"

    invoke-static {v0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->a(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/rates/e;->a:Lcom/keniu/security/rates/RatesRequestMainActivity;

    const-string v1, "\u8bf7\u8fde\u63a5\u7f51\u7edc\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
