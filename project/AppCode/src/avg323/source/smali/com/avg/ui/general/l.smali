.class final Lcom/avg/ui/general/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/avg/ui/general/l;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/avg/ui/general/l;->a:Landroid/content/Context;

    const-string v1, "upgrade_popup"

    const-string v2, "ok"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/avg/ui/general/l;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/avg/ui/general/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avg/ui/general/l;->a:Landroid/content/Context;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/general/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avg/toolkit/Marketing/a;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
