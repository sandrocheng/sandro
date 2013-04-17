.class final Luz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    iput-object p1, p0, Luz;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Luz;->a:Luo;

    invoke-static {v0}, Luo;->k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luz;->a:Luo;

    invoke-static {v0}, Luo;->k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setOpen(ZZ)V

    :cond_0
    return-void
.end method
