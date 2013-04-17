.class public final Ldp;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/widget/Toast;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ldp;->a:Landroid/widget/Toast;

    iput-object v2, p0, Ldp;->b:Landroid/content/Context;

    iput-object v2, p0, Ldp;->c:Landroid/view/LayoutInflater;

    iput-object v2, p0, Ldp;->d:Landroid/widget/ImageView;

    iput-object v2, p0, Ldp;->e:Landroid/widget/TextView;

    iput-object p1, p0, Ldp;->b:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Ldp;->c:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Ldp;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldp;->a:Landroid/widget/Toast;

    iget-object v0, p0, Ldp;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldp;->d:Landroid/widget/ImageView;

    const v0, 0x7f080081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldp;->e:Landroid/widget/TextView;

    iget-object v0, p0, Ldp;->a:Landroid/widget/Toast;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Ldp;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42f0

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Ldp;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Ldp;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldp;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Ldp;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldp;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
