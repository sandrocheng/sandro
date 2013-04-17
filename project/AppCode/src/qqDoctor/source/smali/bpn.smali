.class final Lbpn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbpm;


# direct methods
.method constructor <init>(Lbpm;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbpn;->b:Lbpm;

    iput-object p2, p0, Lbpn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbpn;->b:Lbpm;

    invoke-static {v0}, Lbpm;->a(Lbpm;)Lbw;

    move-result-object v0

    invoke-virtual {v0}, Lbw;->a()I

    iget-object v0, p0, Lbpn;->b:Lbpm;

    invoke-virtual {v0}, Lbpm;->onResume()V

    iget-object v0, p0, Lbpn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
