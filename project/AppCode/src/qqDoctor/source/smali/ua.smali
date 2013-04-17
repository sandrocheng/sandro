.class final Lua;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ldv;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lsy;


# direct methods
.method constructor <init>(Lsy;ILdv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lua;->d:Lsy;

    iput p2, p0, Lua;->a:I

    iput-object p3, p0, Lua;->b:Ldv;

    iput-object p4, p0, Lua;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lua;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lua;->d:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v1, 0x7f0b01c0

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lua;->b:Ldv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lua;->b:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lua;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lua;->d:Lsy;

    iget-object v0, v0, Lsy;->c:Lhi;

    invoke-virtual {v0}, Lhi;->a()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lua;->d:Lsy;

    iget-object v0, v0, Lsy;->d:Ljp;

    invoke-virtual {v0}, Ljp;->c()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
