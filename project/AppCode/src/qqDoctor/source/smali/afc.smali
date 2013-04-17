.class final Lafc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lafb;


# direct methods
.method constructor <init>(Lafb;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lafc;->c:Lafb;

    iput-object p2, p0, Lafc;->a:Ljava/lang/String;

    iput-object p3, p0, Lafc;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lde;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lafc;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, v4}, Lbc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lafc;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    if-nez v0, :cond_0

    iget-object v0, p0, Lafc;->c:Lafb;

    iget-object v0, v0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->g(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0141

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lafc;->c:Lafb;

    iget-object v0, v0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lafc;->c:Lafb;

    iget-object v0, v0, Lafb;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0142

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method
