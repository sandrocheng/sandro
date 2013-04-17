.class final Lbap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;


# instance fields
.field private synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0

    iput-object p1, p0, Lbap;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectChange(I)V
    .locals 2

    iget-object v0, p0, Lbap;->a:Lbam;

    invoke-static {v0}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lbap;->a:Lbam;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbam;->a(Lbam;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbap;->a:Lbam;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbam;->a(Lbam;Z)V

    goto :goto_0
.end method
