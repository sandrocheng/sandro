.class final Lamf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lakw$a;

.field private synthetic b:Lame;


# direct methods
.method constructor <init>(Lame;Lakw$a;)V
    .locals 0

    iput-object p1, p0, Lamf;->b:Lame;

    iput-object p2, p0, Lamf;->a:Lakw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lamf;->b:Lame;

    invoke-virtual {v0, p1}, Lame;->a(Landroid/view/View;)V

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamf;->a:Lakw$a;

    iget-object v0, v0, Lakw$a;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lamf;->a:Lakw$a;

    iget-object v0, v0, Lakw$a;->n:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
