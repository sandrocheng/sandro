.class Lcom/antivirus/ui/privacy/h;
.super Lcom/antivirus/ui/h;


# instance fields
.field final synthetic b:Lcom/antivirus/ui/privacy/b;

.field private final g:I

.field private final h:I

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {p1}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/antivirus/ui/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/antivirus/ui/privacy/h;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/antivirus/ui/privacy/h;->h:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/h;->i:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/antivirus/ui/j;ILandroid/view/View;Lcom/antivirus/ui/i;)V
    .locals 6

    const v5, 0x106000d

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/antivirus/ui/privacy/h;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/antivirus/ui/j;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/i;

    iget v0, v0, Lcom/antivirus/ui/i;->a:I

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->t(Lcom/antivirus/ui/privacy/b;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/antivirus/ui/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f070040

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p1, Lcom/antivirus/ui/j;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/antivirus/ui/privacy/h;->e:I

    iget v2, p0, Lcom/antivirus/ui/privacy/h;->d:I

    iget v3, p0, Lcom/antivirus/ui/privacy/h;->d:I

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/antivirus/ui/j;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/i;

    iget v0, v0, Lcom/antivirus/ui/i;->a:I

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->t(Lcom/antivirus/ui/privacy/b;)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/i;

    iget v0, v0, Lcom/antivirus/ui/i;->a:I

    invoke-static {v0}, Lcom/avg/ui/general/s;->a(I)Lcom/avg/ui/general/s;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/privacy/g;->a:[I

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget-boolean v0, p4, Lcom/antivirus/ui/i;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p1, Lcom/antivirus/ui/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->u(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p1, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    if-ne v0, v1, :cond_3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    if-ne v0, v1, :cond_3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/privacy/h;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/antivirus/ui/privacy/h;->f:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->i:Landroid/view/LayoutInflater;

    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/antivirus/ui/j;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/j;-><init>(Lcom/antivirus/ui/h;)V

    const v0, 0x7f0800cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/antivirus/ui/j;->a:Landroid/widget/ImageView;

    const v0, 0x7f08000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/antivirus/ui/j;->b:Landroid/widget/TextView;

    const v0, 0x7f080117

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/antivirus/ui/j;->d:Landroid/widget/TextView;

    const v0, 0x7f0800cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/antivirus/ui/j;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const v0, 0x7f080113

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/antivirus/ui/j;->g:Landroid/widget/LinearLayout;

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x7f080116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f080115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setId(I)V

    const v0, 0x7f02010c

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    const v3, 0x7f060013

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/antivirus/ui/i;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/i;

    iget v0, v0, Lcom/antivirus/ui/i;->a:I

    invoke-static {v0}, Lcom/avg/ui/general/s;->a(I)Lcom/avg/ui/general/s;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/privacy/g;->a:[I

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-direct {p0, v2, p1, p2, v8}, Lcom/antivirus/ui/privacy/h;->a(Lcom/antivirus/ui/j;ILandroid/view/View;Lcom/antivirus/ui/i;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/j;

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->b(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v3

    const v4, 0x7f020061

    const v5, 0x7f090110

    const v6, 0x7f090111

    const v7, 0x7f020112

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/ui/privacy/h;->a(Landroid/content/Context;Lcom/antivirus/ui/j;IIIII)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->c(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->d(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090211

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-boolean v0, v8, Lcom/antivirus/ui/i;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v8, Lcom/antivirus/ui/i;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->i(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090216

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    const v3, 0x7f060015

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    :goto_3
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v3}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v3}, Lcom/antivirus/ui/privacy/b;->f(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v3

    const v4, 0x7f090213

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v3}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v3}, Lcom/antivirus/ui/privacy/b;->g(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v3

    const v4, 0x7f090214

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->e(Lcom/antivirus/ui/privacy/b;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->h(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090212

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->j(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090215

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    const v3, 0x7f060014

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->k(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v3

    const v4, 0x7f020049

    const v5, 0x7f09012f

    const v6, 0x7f09012e

    const v7, 0x7f020112

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/ui/privacy/h;->a(Landroid/content/Context;Lcom/antivirus/ui/j;IIIII)V

    iget-boolean v0, v8, Lcom/antivirus/ui/i;->c:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v8, Lcom/antivirus/ui/i;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->l(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090216

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    const v3, 0x7f060015

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_8
    :goto_5
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->m(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090215

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->j:Landroid/content/Context;

    const v3, 0x7f060014

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_5

    :pswitch_2
    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->n(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v3

    const v4, 0x7f0200c6

    const v5, 0x7f0901dd

    const v6, 0x7f0901de

    const v7, 0x7f020112

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/ui/privacy/h;->a(Landroid/content/Context;Lcom/antivirus/ui/j;IIIII)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->o(Lcom/antivirus/ui/privacy/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->p(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v3, 0x7f090227

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/b;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/antivirus/ui/j;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->q(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v3

    const v4, 0x7f0201b0

    const v5, 0x7f090160

    const v6, 0x7f090161

    const v7, 0x7f020112

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/ui/privacy/h;->a(Landroid/content/Context;Lcom/antivirus/ui/j;IIIII)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->r(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v3

    const v4, 0x7f0201b1

    const v5, 0x7f09015e

    const v6, 0x7f09015f

    const v7, 0x7f020112

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/ui/privacy/h;->a(Landroid/content/Context;Lcom/antivirus/ui/j;IIIII)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/antivirus/ui/privacy/h;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v1}, Lcom/antivirus/ui/privacy/b;->s(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v3

    const v4, 0x7f0201a8

    const v5, 0x7f090162

    const v6, 0x7f090163

    const v7, 0x7f020112

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/ui/privacy/h;->a(Landroid/content/Context;Lcom/antivirus/ui/j;IIIII)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
