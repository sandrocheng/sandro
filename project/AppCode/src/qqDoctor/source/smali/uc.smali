.class final Luc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldv;

.field final synthetic c:Lsy;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:I

.field private synthetic f:Lvk$a;

.field private synthetic g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Lsy;Ljava/lang/String;Ljava/lang/String;ILvk$a;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Luc;->c:Lsy;

    iput-object p2, p0, Luc;->d:Ljava/lang/String;

    iput-object p3, p0, Luc;->a:Ljava/lang/String;

    iput p4, p0, Luc;->e:I

    iput-object p5, p0, Luc;->f:Lvk$a;

    iput-object p6, p0, Luc;->b:Ldv;

    iput-object p7, p0, Luc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Llf;

    iget-object v1, p0, Luc;->d:Ljava/lang/String;

    iget-object v2, p0, Luc;->a:Ljava/lang/String;

    iget v3, p0, Luc;->e:I

    invoke-direct {v0, v1, v2, v3}, Llf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Luc;->f:Lvk$a;

    iput-object v1, v0, Llf;->a:Ljava/lang/Object;

    iget v1, p0, Luc;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Llf;->phonenum:Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Luc;->c:Lsy;

    iget-object v1, v1, Lsy;->f:Lvk;

    new-instance v2, Lud;

    invoke-direct {v2, p0}, Lud;-><init>(Luc;)V

    iput-object v2, v1, Lvk;->g:Ldv;

    :goto_0
    iget-object v1, p0, Luc;->c:Lsy;

    iget-object v1, v1, Lsy;->f:Lvk;

    iget v2, p0, Luc;->e:I

    invoke-virtual {v1, v0, v2}, Lvk;->a(Llf;I)V

    iget-object v0, p0, Luc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Luc;->c:Lsy;

    iget-object v1, v1, Lsy;->f:Lvk;

    iget-object v2, p0, Luc;->b:Ldv;

    iput-object v2, v1, Lvk;->g:Ldv;

    goto :goto_0
.end method
