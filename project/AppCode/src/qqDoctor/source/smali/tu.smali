.class final Ltu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ldv;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lsy;


# direct methods
.method constructor <init>(Lsy;Ljava/util/List;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Ltu;->d:Lsy;

    iput-object p2, p0, Ltu;->a:Ljava/util/List;

    iput-object p3, p0, Ltu;->b:Ldv;

    iput-object p4, p0, Ltu;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Ltu;->d:Lsy;

    iget-object v1, p0, Ltu;->a:Ljava/util/List;

    iget-object v2, p0, Ltu;->b:Ldv;

    new-instance v3, Ltw;

    invoke-direct {v3, v0, v1, v2}, Ltw;-><init>(Lsy;Ljava/util/List;Ldv;)V

    invoke-virtual {v3}, Ltw;->start()V

    iget-object v0, p0, Ltu;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
