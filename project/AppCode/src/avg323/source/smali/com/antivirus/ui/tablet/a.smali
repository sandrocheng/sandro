.class public Lcom/antivirus/ui/tablet/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antivirus/ui/tablet/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    invoke-virtual {v0, p3, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/tablet/a;->a:Landroid/view/View;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f08000c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/antivirus/ui/tablet/a;->a(ILjava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f08000a

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/antivirus/ui/tablet/a;->a(ILjava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method
