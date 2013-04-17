.class final Lvu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lvt;


# direct methods
.method constructor <init>(Lvt;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lvu;->b:Lvt;

    iput-object p2, p0, Lvu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lvu;->b:Lvt;

    iget-object v0, v0, Lvt;->b:Lvk;

    iget-object v1, p0, Lvu;->b:Lvt;

    iget-object v1, v1, Lvt;->a:Llf;

    invoke-static {v0, v1}, Lvk;->a(Lvk;Llf;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lvu;->b:Lvt;

    iget-object v1, v1, Lvt;->a:Llf;

    iget-object v1, v1, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhq;->a(Ljava/lang/String;)Llf;

    move-result-object v1

    iget-object v2, p0, Lvu;->b:Lvt;

    iget-object v2, v2, Lvt;->a:Llf;

    invoke-virtual {v0, v2}, Lhq;->c(Llf;)Z

    iget-object v2, p0, Lvu;->b:Lvt;

    iget-object v2, v2, Lvt;->a:Llf;

    iget v1, v1, Llf;->id:I

    iput v1, v2, Llf;->id:I

    iget-object v1, p0, Lvu;->b:Lvt;

    iget-object v1, v1, Lvt;->a:Llf;

    invoke-virtual {v0, v1}, Lhq;->b(Llf;)Z

    iget-object v0, p0, Lvu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lvu;->b:Lvt;

    iget-object v0, v0, Lvt;->b:Lvk;

    iget-object v0, v0, Lvk;->h:Ljava/util/List;

    iget-object v1, p0, Lvu;->b:Lvt;

    iget-object v1, v1, Lvt;->a:Llf;

    iget-object v1, v1, Llf;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lvu;->b:Lvt;

    iget-object v0, v0, Lvt;->b:Lvk;

    iget-object v1, v0, Lvk;->g:Ldv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lvk;->i:Landroid/os/Handler;

    new-instance v2, Lwa;

    invoke-direct {v2, v0}, Lwa;-><init>(Lvk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lvu;->b:Lvt;

    iget-object v0, v0, Lvt;->b:Lvk;

    iget-object v1, p0, Lvu;->b:Lvt;

    iget-object v1, v1, Lvt;->a:Llf;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvk;->a(Lvk;Llf;Z)V

    return-void
.end method
