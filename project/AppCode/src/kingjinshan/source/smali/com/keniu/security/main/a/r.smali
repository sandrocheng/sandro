.class final Lcom/keniu/security/main/a/r;
.super Ljava/lang/Object;
.source "PrefBooleanCheckModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/keniu/security/main/a/q;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/keniu/security/main/a/r;->b:Lcom/keniu/security/main/a/q;

    iput-object p2, p0, Lcom/keniu/security/main/a/r;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/main/a/r;->a:Landroid/content/Context;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    sget-object v1, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/main/a/r;->a:Landroid/content/Context;

    const v3, 0x7f0b0263

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    sget-object v1, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->b:Ljava/lang/String;

    const-string v2, "file:///android_asset/html/private_xieyi.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/keniu/security/main/a/r;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method
