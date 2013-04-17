.class final Lbaq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0

    iput-object p1, p0, Lbaq;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbaq;->a:Lbam;

    invoke-static {v0}, Lbam;->i(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lbaq;->a:Lbam;

    invoke-static {v0}, Lbam;->j(Lbam;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b071c

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbaq;->a:Lbam;

    invoke-static {v0}, Lbam;->k(Lbam;)V

    iget-object v0, p0, Lbaq;->a:Lbam;

    invoke-static {v0}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->clickView(Landroid/view/View;)V

    goto :goto_0
.end method
