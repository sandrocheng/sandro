.class final Lvv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lvt;


# direct methods
.method constructor <init>(Lvt;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lvv;->b:Lvt;

    iput-object p2, p0, Lvv;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lvv;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lvv;->b:Lvt;

    iget-object v0, v0, Lvt;->b:Lvk;

    iget-object v1, p0, Lvv;->b:Lvt;

    iget-object v1, v1, Lvt;->a:Llf;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvk;->a(Lvk;Llf;Z)V

    return-void
.end method
