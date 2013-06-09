.class final Lorg/antivirus/ui/performance/i;
.super Lorg/antivirus/ui/performance/a;


# instance fields
.field final synthetic b:Lorg/antivirus/ui/performance/PerformanceActivity;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/performance/PerformanceActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-direct {p0, p3}, Lorg/antivirus/ui/performance/a;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/performance/i;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lorg/antivirus/ui/performance/i;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/performance/i;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lorg/antivirus/ui/performance/c;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/performance/c;-><init>(Lorg/antivirus/ui/performance/a;)V

    const v0, 0x7f08009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lorg/antivirus/ui/performance/c;->a:Landroid/widget/ImageView;

    const v0, 0x7f08000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lorg/antivirus/ui/performance/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0800d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lorg/antivirus/ui/performance/c;->d:Landroid/widget/TextView;

    const v0, 0x7f08009b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lorg/antivirus/ui/performance/c;->f:Landroid/widget/ImageView;

    const v0, 0x7f0800d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/antivirus/ui/performance/i;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/antivirus/ui/performance/i;->d:Landroid/content/Context;

    const v4, 0x7f060010

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/b;

    iget v0, v0, Lorg/antivirus/ui/performance/b;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/c;

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0200e7

    const v2, 0x7f090061

    const v3, 0x7f090062

    invoke-static {v1, v5, v0, v2, v3}, Lorg/antivirus/ui/performance/i;->a(Lorg/antivirus/ui/performance/c;IIII)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v2}, Lorg/antivirus/ui/performance/PerformanceActivity;->e(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    const v2, 0x7f0200e4

    const v3, 0x7f0901a3

    const v4, 0x7f0901a4

    invoke-static {v1, v0, v2, v3, v4}, Lorg/antivirus/ui/performance/i;->a(Lorg/antivirus/ui/performance/c;IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900e2

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v2}, Lorg/antivirus/ui/performance/PerformanceActivity;->f(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0901a5

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v2}, Lorg/antivirus/ui/performance/PerformanceActivity;->g(Lorg/antivirus/ui/performance/PerformanceActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->g(Lorg/antivirus/ui/performance/PerformanceActivity;)I

    move-result v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getPowerSavingModeThreshold()I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x2

    const v2, 0x7f0200e8

    const v3, 0x7f0901a6

    const v4, 0x7f0901a7

    invoke-static {v1, v0, v2, v3, v4}, Lorg/antivirus/ui/performance/i;->a(Lorg/antivirus/ui/performance/c;IIII)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->h(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v2}, Lorg/antivirus/ui/performance/PerformanceActivity;->h(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->i(Lorg/antivirus/ui/performance/PerformanceActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x3

    const v2, 0x7f0200e6

    const v3, 0x7f0901a8

    const v4, 0x7f0901a9

    invoke-static {v1, v0, v2, v3, v4}, Lorg/antivirus/ui/performance/i;->a(Lorg/antivirus/ui/performance/c;IIII)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/performance/i;->b:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v2}, Lorg/antivirus/ui/performance/PerformanceActivity;->j(Lorg/antivirus/ui/performance/PerformanceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
