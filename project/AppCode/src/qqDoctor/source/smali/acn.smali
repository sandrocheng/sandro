.class final Lacn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lacm;


# direct methods
.method constructor <init>(Lacm;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lacn;->b:Lacm;

    iput-object p2, p0, Lacn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lacn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lacn;->b:Lacm;

    iget-object v0, v0, Lacm;->b:Lacj;

    iget-object v1, p0, Lacn;->b:Lacm;

    iget-object v1, v1, Lacm;->a:Lkw;

    invoke-static {v0, v1}, Lacj;->a(Lacj;Lkw;)V

    return-void
.end method
