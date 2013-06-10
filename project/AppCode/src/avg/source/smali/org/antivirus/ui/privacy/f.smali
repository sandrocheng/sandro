.class final Lorg/antivirus/ui/privacy/f;
.super Lorg/antivirus/ui/performance/a;


# instance fields
.field final synthetic b:Lorg/antivirus/ui/privacy/PrivacyActivity;

.field private final c:I

.field private final d:I

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, p1, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/antivirus/ui/performance/a;-><init>(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/ui/privacy/f;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/ui/privacy/f;->d:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/privacy/f;->e:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f07003d

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/ui/performance/c;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/performance/c;-><init>(Lorg/antivirus/ui/performance/a;)V

    const v0, 0x7f08009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/ui/performance/c;->a:Landroid/widget/ImageView;

    const v0, 0x7f08000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/ui/performance/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0800d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/ui/performance/c;->d:Landroid/widget/TextView;

    const v0, 0x7f08009b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/ui/performance/c;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x7f0800d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0800d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setId(I)V

    const v0, 0x7f0200dd

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    const v3, 0x7f060010

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, v1, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, v0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/b;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v1, v1, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/ui/performance/b;

    iget v1, v1, Lorg/antivirus/ui/performance/b;->a:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/c;

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f020049

    const v3, 0x7f090040

    const v4, 0x7f090041

    invoke-static {v2, v5, v1, v3, v4}, Lorg/antivirus/ui/privacy/f;->a(Lorg/antivirus/ui/performance/c;IIII)V

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/AVSettings;->getApplockerUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0901b3

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-boolean v1, v0, Lorg/antivirus/ui/performance/b;->c:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lorg/antivirus/ui/performance/b;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    const v1, 0x7f0901b7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    const v3, 0x7f060012

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->b(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/core/b/a;

    move-result-object v0

    iget-object v0, v0, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    sget-object v1, Lorg/antivirus/core/b/c;->a:Lorg/antivirus/core/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->g(Lorg/antivirus/ui/privacy/PrivacyActivity;)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v4}, Lorg/antivirus/ui/privacy/PrivacyActivity;->g(Lorg/antivirus/ui/privacy/PrivacyActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0901b5

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->g(Lorg/antivirus/ui/privacy/PrivacyActivity;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0901b4

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, v2, Lorg/antivirus/ui/performance/c;->e:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    const v1, 0x7f0901b6

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    const v3, 0x7f060011

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_3

    :pswitch_1
    const v1, 0x7f020031

    const v3, 0x7f090066

    const v4, 0x7f090065

    invoke-static {v2, v8, v1, v3, v4}, Lorg/antivirus/ui/privacy/f;->a(Lorg/antivirus/ui/performance/c;IIII)V

    iget-boolean v1, v0, Lorg/antivirus/ui/performance/b;->c:Z

    if-eqz v1, :cond_7

    iget-boolean v0, v0, Lorg/antivirus/ui/performance/b;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    const v1, 0x7f0901b7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    const v3, 0x7f060012

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->b(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/core/b/a;

    move-result-object v0

    iget-object v0, v0, Lorg/antivirus/core/b/a;->h:Lorg/antivirus/core/b/c;

    sget-object v1, Lorg/antivirus/core/b/c;->a:Lorg/antivirus/core/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    const v1, 0x7f0901b6

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->f:Landroid/content/Context;

    const v3, 0x7f060011

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v2, Lorg/antivirus/ui/performance/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/f;->b:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4

    :pswitch_2
    const v0, 0x7f020173

    const v1, 0x7f09009c

    const v3, 0x7f09009d

    invoke-static {v2, v7, v0, v1, v3}, Lorg/antivirus/ui/privacy/f;->a(Lorg/antivirus/ui/performance/c;IIII)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x4

    const v1, 0x7f020174

    const v3, 0x7f09009a

    const v4, 0x7f09009b

    invoke-static {v2, v0, v1, v3, v4}, Lorg/antivirus/ui/privacy/f;->a(Lorg/antivirus/ui/performance/c;IIII)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x3

    const v1, 0x7f02016b

    const v3, 0x7f09009e

    const v4, 0x7f09009f

    invoke-static {v2, v0, v1, v3, v4}, Lorg/antivirus/ui/privacy/f;->a(Lorg/antivirus/ui/performance/c;IIII)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
