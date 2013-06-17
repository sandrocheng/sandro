.class Lcom/avg/ui/general/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/avg/ui/general/a/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/a/a;Landroid/widget/Button;II)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/a/c;->d:Lcom/avg/ui/general/a/a;

    iput-object p2, p0, Lcom/avg/ui/general/a/c;->a:Landroid/widget/Button;

    iput p3, p0, Lcom/avg/ui/general/a/c;->b:I

    iput p4, p0, Lcom/avg/ui/general/a/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/a/c;->a:Landroid/widget/Button;

    iget v1, p0, Lcom/avg/ui/general/a/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/avg/ui/general/a/c;->a:Landroid/widget/Button;

    iget v1, p0, Lcom/avg/ui/general/a/c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
