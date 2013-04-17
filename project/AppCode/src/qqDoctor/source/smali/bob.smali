.class final Lbob;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbnt;


# direct methods
.method constructor <init>(Lbnt;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbob;->c:Lbnt;

    iput-object p2, p0, Lbob;->a:Lkw;

    iput-object p3, p0, Lbob;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbob;->c:Lbnt;

    invoke-virtual {v0}, Lbnt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lbob;->a:Lkw;

    invoke-virtual {v1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbob;->a:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfy;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbob;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfy;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbob;->c:Lbnt;

    invoke-static {v0}, Lbnt;->a(Lbnt;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbob;->a:Lkw;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbob;->c:Lbnt;

    invoke-virtual {v0}, Lbnt;->a()Lalr;

    move-result-object v0

    iget-object v1, p0, Lbob;->c:Lbnt;

    invoke-virtual {v1}, Lbnt;->a()Lalr;

    move-result-object v1

    iget-object v2, p0, Lbob;->a:Lkw;

    invoke-virtual {v1, v2}, Lalr;->b(Lkw;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalr;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lbob;->c:Lbnt;

    invoke-static {v0}, Lbnt;->g(Lbnt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbob;->c:Lbnt;

    invoke-static {v0}, Lbnt;->h(Lbnt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c0

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lbob;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lbob;->c:Lbnt;

    invoke-static {v0}, Lbnt;->i(Lbnt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method
