.class public Lcom/antivirus/ui/main/a;
.super Lcom/antivirus/ui/a/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/antivirus/core/b;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/view/View;

.field private d:Lcom/avg/toolkit/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->b:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    return-void
.end method

.method private F()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->d:Lcom/avg/toolkit/e/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/a;->d:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_1

    const v0, 0x7f020042

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v2, 0x7f080017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900a7

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900a9

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900aa

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900ad

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900a8

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0900ae

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900b0

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v3, 0x7f08001e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\'http://www.avgmobilation.com/static/terms-mobile\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</a> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f0900af

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<a href=\'http://www.avgmobilation.com/privacy\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_3

    const v0, 0x7f020043

    move v1, v0

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900ab

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private G()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x2af8

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/a;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/avg/tuneup/j;->e(Z)V

    invoke-static {v2}, Lcom/avg/tuneup/j;->h(I)V

    sget-object v0, Lcom/avg/tuneup/battery/c;->b:[I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/avg/tuneup/j;->g(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/a;->a(Landroid/content/Context;)Lcom/antivirus/core/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->c(Z)V

    invoke-static {v1}, Lcom/antivirus/c;->i(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/a;->a(Landroid/content/Context;)Lcom/antivirus/core/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->e(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/avg/tuneup/j;->e(Z)V

    sget-object v0, Lcom/avg/tuneup/battery/c;->b:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Lcom/avg/tuneup/j;->g(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/a;->a(Landroid/content/Context;)Lcom/antivirus/core/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/antivirus/core/b;->c(Z)V

    invoke-static {v2}, Lcom/antivirus/c;->i(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/antivirus/ui/main/a;->F()V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->c:Landroid/view/View;

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->a:Lcom/antivirus/core/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->a:Lcom/antivirus/core/b;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/a;->a:Lcom/antivirus/core/b;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->s()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->d:Lcom/avg/toolkit/e/a;

    invoke-direct {p0}, Lcom/antivirus/ui/main/a;->F()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->s()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/a;->d:Lcom/avg/toolkit/e/a;

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/a;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0x3e8

    const/16 v2, 0x3ea

    invoke-static {v0, v1, v2, v4}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    invoke-static {}, Lcom/antivirus/c;->f()V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/main/a;->G()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ext_a_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/a;->a(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lcc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->d:Lcom/avg/toolkit/e/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->d:Lcom/avg/toolkit/e/a;

    iget-boolean v1, v1, Lcom/avg/toolkit/e/a;->t:Z

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/avg/ui/license/EnterLicenseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_2

    const-string v2, "lcc"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v1}, Lcom/antivirus/ui/main/a;->a(Landroid/content/Intent;)V

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_activated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x61a8

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    iget-object v0, p0, Lcom/antivirus/ui/main/a;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "category_activate"

    const-string v2, "action_activate"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/a;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    const-class v0, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/a;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method
