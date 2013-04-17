.class public final Ltk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldv;

.field final synthetic c:Lsy;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Lsy;Ljava/lang/String;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Ltk;->c:Lsy;

    iput-object p2, p0, Ltk;->a:Ljava/lang/String;

    iput-object p3, p0, Ltk;->b:Ldv;

    iput-object p4, p0, Ltk;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ltl;

    invoke-direct {v0, p0}, Ltl;-><init>(Ltk;)V

    invoke-virtual {v0}, Ltl;->start()V

    iget-object v0, p0, Ltk;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
