.class public final Lady;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lady;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lady;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
