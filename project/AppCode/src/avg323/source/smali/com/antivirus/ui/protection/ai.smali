.class Lcom/antivirus/ui/protection/ai;
.super Lcom/avg/ui/general/b/b;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/r;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/protection/r;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-direct {p0, p2, p3}, Lcom/avg/ui/general/b/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V
    .locals 7

    const v6, 0x7f0b0009

    const v0, 0x7f020090

    const v1, 0x7f02008a

    const/4 v5, 0x0

    iget-object v2, p3, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-virtual {v3}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/avg/ui/general/b/b;->a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V

    sget-object v2, Lcom/antivirus/ui/protection/t;->a:[I

    iget-object v3, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v3}, Lcom/antivirus/ui/protection/r;->B(Lcom/antivirus/ui/protection/r;)[Lcom/antivirus/ui/protection/ah;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/antivirus/ui/protection/ah;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->C(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/antivirus/core/b;

    invoke-direct {v2, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v1, p3, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v4}, Lcom/antivirus/ui/protection/r;->D(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    const v5, 0x7f0900da

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->E(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/core/b;->g()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    :goto_2
    invoke-virtual {p2, v0}, Lcom/avg/ui/general/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x240c8400

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v2}, Lcom/antivirus/ui/protection/r;->F(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/antivirus/core/b;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v2}, Lcom/antivirus/ui/protection/r;->G(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/antivirus/core/b;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_5
    iget-object v2, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v2}, Lcom/antivirus/ui/protection/r;->H(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/antivirus/core/b;->v()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :pswitch_6
    iget-object v2, p0, Lcom/antivirus/ui/protection/ai;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v2}, Lcom/antivirus/ui/protection/r;->I(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/antivirus/core/b;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_6
    iget-object v1, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
