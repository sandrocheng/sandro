.class final Lbkm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbkm;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66a5

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbkm;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method