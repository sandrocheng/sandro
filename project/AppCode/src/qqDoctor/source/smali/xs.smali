.class final Lxs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:I

.field private synthetic c:Lxn;


# direct methods
.method constructor <init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;I)V
    .locals 0

    iput-object p1, p0, Lxs;->c:Lxn;

    iput-object p2, p0, Lxs;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput p3, p0, Lxs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lxs;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget v0, p0, Lxs;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lxs;->c:Lxn;

    invoke-virtual {v0}, Lxn;->c()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lxs;->c:Lxn;

    invoke-virtual {v0}, Lxn;->b()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
