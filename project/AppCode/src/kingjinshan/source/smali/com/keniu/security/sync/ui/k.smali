.class final Lcom/keniu/security/sync/ui/k;
.super Ljava/lang/Object;
.source "RegisterAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/RegisterAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/RegisterAct;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/keniu/security/sync/ui/k;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v1, "http://www.duba.net/protocol/serverUse.shtml"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/keniu/security/sync/ui/k;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/ui/RegisterAct;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
