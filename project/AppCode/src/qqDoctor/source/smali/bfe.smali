.class final Lbfe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbfa;


# direct methods
.method constructor <init>(Lbfa;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbfe;->b:Lbfa;

    iput-object p2, p0, Lbfe;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbfe;->b:Lbfa;

    invoke-static {v0}, Lbfa;->a(Lbfa;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyb;->a(Landroid/content/Context;)Lyb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lyb;->a(Z)V

    iget-object v0, p0, Lbfe;->b:Lbfa;

    invoke-static {v0}, Lbfa;->b(Lbfa;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->B(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbfe;->b:Lbfa;

    invoke-static {v1}, Lbfa;->a(Lbfa;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lbfe;->b:Lbfa;

    invoke-static {v1}, Lbfa;->a(Lbfa;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbfe;->b:Lbfa;

    invoke-virtual {v0}, Lbfa;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbfe;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
