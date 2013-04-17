.class final Lbar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0

    iput-object p1, p0, Lbar;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbar;->a:Lbam;

    invoke-static {v0}, Lbam;->l(Lbam;)V

    iget-object v0, p0, Lbar;->a:Lbam;

    invoke-static {v0}, Lbam;->i(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->clickView(Landroid/view/View;)V

    return-void
.end method
