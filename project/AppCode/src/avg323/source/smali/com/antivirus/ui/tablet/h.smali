.class Lcom/antivirus/ui/tablet/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I

.field final synthetic d:Lcom/antivirus/ui/tablet/DualPaneActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/tablet/DualPaneActivity;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/tablet/h;->d:Lcom/antivirus/ui/tablet/DualPaneActivity;

    iput-object p2, p0, Lcom/antivirus/ui/tablet/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    iput p4, p0, Lcom/antivirus/ui/tablet/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->d:Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Lcom/antivirus/ui/tablet/DualPaneActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->d:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-static {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(Lcom/antivirus/ui/tablet/DualPaneActivity;)Lcom/avg/toolkit/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/avg/ui/general/r;->c:Lcom/avg/ui/general/r;

    invoke-static {v1}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/avg/ui/general/r;->c:Lcom/avg/ui/general/r;

    invoke-static {v1}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/antivirus/ui/tablet/h;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/h;->d:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->i()V

    goto :goto_0
.end method
