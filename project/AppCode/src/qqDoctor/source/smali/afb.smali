.class public final Lafb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)V
    .locals 0

    iput-object p1, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b011f

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v0, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0120

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0121

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v2, p0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->f(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v2, 0x7f0b00fa

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lafc;

    invoke-direct {v3, p0, v0, v1}, Lafc;-><init>(Lafb;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const-string v0, "thread_set_pimpwd"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
