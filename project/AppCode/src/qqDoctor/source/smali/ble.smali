.class final Lble;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:I

.field private synthetic c:Z

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lbkn;


# direct methods
.method constructor <init>(Lbkn;Lmk;IZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lble;->e:Lbkn;

    iput-object p2, p0, Lble;->a:Lmk;

    iput p3, p0, Lble;->b:I

    iput-boolean p4, p0, Lble;->c:Z

    iput-object p5, p0, Lble;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lble;->e:Lbkn;

    iget-object v1, p0, Lble;->a:Lmk;

    iget v2, p0, Lble;->b:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lble;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lbkn;->a(Lbkn;Lmk;IZZ)V

    iget-object v0, p0, Lble;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
