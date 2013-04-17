.class final Lapa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laoz;


# direct methods
.method constructor <init>(Laoz;)V
    .locals 0

    iput-object p1, p0, Lapa;->a:Laoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lapa;->a:Laoz;

    iget-object v0, v0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->B(Laou;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lapa;->a:Laoz;

    iget-object v0, v0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lapa;->a:Laoz;

    iget-object v0, v0, Laoz;->a:Laou;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laou;->a(Laou;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-void
.end method
