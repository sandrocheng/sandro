.class final Lbbi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lmn;

.field private synthetic c:I

.field private synthetic d:Z

.field private synthetic e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic f:Lbax;


# direct methods
.method constructor <init>(Lbax;Ljava/util/List;Lmn;IZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbbi;->f:Lbax;

    iput-object p2, p0, Lbbi;->a:Ljava/util/List;

    iput-object p3, p0, Lbbi;->b:Lmn;

    iput p4, p0, Lbbi;->c:I

    iput-boolean p5, p0, Lbbi;->d:Z

    iput-object p6, p0, Lbbi;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbbi;->a:Ljava/util/List;

    iget-object v1, p0, Lbbi;->b:Lmn;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbbi;->f:Lbax;

    iget-object v1, p0, Lbbi;->a:Ljava/util/List;

    iget v2, p0, Lbbi;->c:I

    iget-boolean v2, p0, Lbbi;->d:Z

    invoke-static {v0, v1, v2}, Lbax;->a(Lbax;Ljava/util/List;Z)V

    iget-object v0, p0, Lbbi;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
